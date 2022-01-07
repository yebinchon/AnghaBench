
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcu_msg_header {int length; int type; } ;
struct allegro_mbox {unsigned int size; int head; scalar_t__ data; } ;
struct allegro_dev {int v4l2_dev; int sram; } ;
typedef int ssize_t ;


 int EINVAL ;
 int EIO ;
 int debug ;
 size_t min (size_t,size_t) ;
 int msg_type_name (int ) ;
 int regmap_bulk_read (int ,scalar_t__,void*,size_t) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int v4l2_dbg (int,int ,int *,char*,int ,size_t) ;
 int v4l2_err (int *,char*,size_t,int) ;

__attribute__((used)) static ssize_t allegro_mbox_read(struct allegro_dev *dev,
     struct allegro_mbox *mbox,
     void *dst, size_t nbyte)
{
 struct mcu_msg_header *header;
 unsigned int head;
 ssize_t size;
 size_t body_no_wrap;

 regmap_read(dev->sram, mbox->head, &head);
 if (head > mbox->size) {
  v4l2_err(&dev->v4l2_dev,
    "invalid head (0x%x): must be smaller than mailbox size (0x%zx)\n",
    head, mbox->size);
  return -EIO;
 }


 regmap_bulk_read(dev->sram, mbox->data + head,
    dst, sizeof(*header) / 4);
 header = dst;
 size = header->length + sizeof(*header);
 if (size > mbox->size || size & 0x3) {
  v4l2_err(&dev->v4l2_dev,
    "invalid message length: %zu bytes (maximum %zu bytes)\n",
    header->length + sizeof(*header), mbox->size);
  return -EIO;
 }
 if (size > nbyte) {
  v4l2_err(&dev->v4l2_dev,
    "destination buffer too small: %zu bytes (need %zu bytes)\n",
    nbyte, size);
  return -EINVAL;
 }
 body_no_wrap = min((size_t)header->length,
      (size_t)(mbox->size - (head + sizeof(*header))));
 regmap_bulk_read(dev->sram, mbox->data + head + sizeof(*header),
    dst + sizeof(*header), body_no_wrap / 4);
 regmap_bulk_read(dev->sram, mbox->data,
    dst + sizeof(*header) + body_no_wrap,
    (header->length - body_no_wrap) / 4);

 regmap_write(dev->sram, mbox->head, (head + size) % mbox->size);

 v4l2_dbg(2, debug, &dev->v4l2_dev,
   "read status message: type %s, body length %d\n",
   msg_type_name(header->type), header->length);

 return size;
}
