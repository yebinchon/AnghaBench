
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct switchtec_ntb {int db_valid_mask; int db_mask; int db_shift; int db_mask_lock; TYPE_1__* mmio_self_dbmsg; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int idb_mask; } ;


 int EINVAL ;
 int iowrite64 (int,int *) ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int switchtec_ntb_db_clear_mask(struct ntb_dev *ntb, u64 db_bits)
{
 unsigned long irqflags;
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 if (db_bits & ~sndev->db_valid_mask)
  return -EINVAL;

 spin_lock_irqsave(&sndev->db_mask_lock, irqflags);

 sndev->db_mask &= ~(db_bits << sndev->db_shift);
 iowrite64(~sndev->db_mask, &sndev->mmio_self_dbmsg->idb_mask);

 spin_unlock_irqrestore(&sndev->db_mask_lock, irqflags);

 return 0;
}
