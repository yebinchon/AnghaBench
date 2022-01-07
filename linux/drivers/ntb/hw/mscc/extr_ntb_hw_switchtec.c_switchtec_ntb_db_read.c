
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct switchtec_ntb {int db_shift; int db_valid_mask; TYPE_1__* mmio_self_dbmsg; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int idb; } ;


 int ioread64 (int *) ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;

__attribute__((used)) static u64 switchtec_ntb_db_read(struct ntb_dev *ntb)
{
 u64 ret;
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 ret = ioread64(&sndev->mmio_self_dbmsg->idb) >> sndev->db_shift;

 return ret & sndev->db_valid_mask;
}
