
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu_msg_header {size_t length; int type; } ;
struct allegro_mbox {size_t size; int lock; int tail; scalar_t__ data; } ;
struct allegro_dev {int sram; int v4l2_dev; } ;


 int EINVAL ;
 int EIO ;
 int debug ;
 size_t min (size_t,size_t) ;
 int msg_type_name (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_write (int ,scalar_t__,void*,size_t) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int v4l2_dbg (int,int ,int *,char*,int ,unsigned int) ;
 int v4l2_err (int *,char*,unsigned int,size_t) ;

__attribute__((used)) static int allegro_mbox_write(struct allegro_dev *dev,
         struct allegro_mbox *mbox, void *src, size_t size)
{
 struct mcu_msg_header *header = src;
 unsigned int tail;
 size_t size_no_wrap;
 int err = 0;

 if (!src)
  return -EINVAL;

 if (size > mbox->size) {
  v4l2_err(&dev->v4l2_dev,
    "message (%zu bytes) to large for mailbox (%zu bytes)\n",
    size, mbox->size);
  return -EINVAL;
 }

 if (header->length != size - sizeof(*header)) {
  v4l2_err(&dev->v4l2_dev,
    "invalid message length: %u bytes (expected %zu bytes)\n",
    header->length, size - sizeof(*header));
  return -EINVAL;
 }

 v4l2_dbg(2, debug, &dev->v4l2_dev,
   "write command message: type %s, body length %d\n",
   msg_type_name(header->type), header->length);

 mutex_lock(&mbox->lock);
 regmap_read(dev->sram, mbox->tail, &tail);
 if (tail > mbox->size) {
  v4l2_err(&dev->v4l2_dev,
    "invalid tail (0x%x): must be smaller than mailbox size (0x%zx)\n",
    tail, mbox->size);
  err = -EIO;
  goto out;
 }
 size_no_wrap = min(size, mbox->size - (size_t)tail);
 regmap_bulk_write(dev->sram, mbox->data + tail, src, size_no_wrap / 4);
 regmap_bulk_write(dev->sram, mbox->data,
     src + size_no_wrap, (size - size_no_wrap) / 4);
 regmap_write(dev->sram, mbox->tail, (tail + size) % mbox->size);

out:
 mutex_unlock(&mbox->lock);

 return err;
}
