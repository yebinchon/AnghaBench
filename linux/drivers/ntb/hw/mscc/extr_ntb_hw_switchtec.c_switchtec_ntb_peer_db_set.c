
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct switchtec_ntb {int db_peer_shift; TYPE_1__* mmio_peer_dbmsg; } ;
struct ntb_dev {int dummy; } ;
struct TYPE_2__ {int odb; } ;


 int iowrite64 (int,int *) ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;

__attribute__((used)) static int switchtec_ntb_peer_db_set(struct ntb_dev *ntb, u64 db_bits)
{
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 iowrite64(db_bits << sndev->db_peer_shift,
    &sndev->mmio_peer_dbmsg->odb);

 return 0;
}
