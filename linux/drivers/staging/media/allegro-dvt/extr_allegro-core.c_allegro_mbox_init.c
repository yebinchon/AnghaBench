
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct allegro_mbox {unsigned int head; unsigned int tail; unsigned int data; size_t size; int lock; } ;
struct allegro_dev {int sram; } ;


 int EINVAL ;
 int mutex_init (int *) ;
 int regmap_write (int ,unsigned int,int ) ;

__attribute__((used)) static int allegro_mbox_init(struct allegro_dev *dev,
        struct allegro_mbox *mbox,
        unsigned int base, size_t size)
{
 if (!mbox)
  return -EINVAL;

 mbox->head = base;
 mbox->tail = base + 0x4;
 mbox->data = base + 0x8;
 mbox->size = size;
 mutex_init(&mbox->lock);

 regmap_write(dev->sram, mbox->head, 0);
 regmap_write(dev->sram, mbox->tail, 0);

 return 0;
}
