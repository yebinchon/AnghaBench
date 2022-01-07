
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct request_queue {int queue_flags; } ;
struct iblock_dev {struct block_device* ibd_bd; } ;
struct block_device {int dummy; } ;


 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 int QUEUE_FLAG_WC ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool iblock_get_write_cache(struct se_device *dev)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);
 struct block_device *bd = ib_dev->ibd_bd;
 struct request_queue *q = bdev_get_queue(bd);

 return test_bit(QUEUE_FLAG_WC, &q->queue_flags);
}
