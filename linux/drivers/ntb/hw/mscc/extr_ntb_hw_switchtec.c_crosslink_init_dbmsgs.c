
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct switchtec_ntb {int self_partition; int db_valid_mask; int db_peer_shift; TYPE_1__* mmio_peer_dbmsg; } ;
struct TYPE_2__ {int odb_mask; int msg_map; int imsg; } ;


 int ARRAY_SIZE (int ) ;
 int crosslink_is_enabled (struct switchtec_ntb*) ;
 int iowrite32 (int,int *) ;
 int iowrite64 (int,int *) ;

__attribute__((used)) static void crosslink_init_dbmsgs(struct switchtec_ntb *sndev)
{
 int i;
 u32 msg_map = 0;

 if (!crosslink_is_enabled(sndev))
  return;

 for (i = 0; i < ARRAY_SIZE(sndev->mmio_peer_dbmsg->imsg); i++) {
  int m = i | sndev->self_partition << 2;

  msg_map |= m << i * 8;
 }

 iowrite32(msg_map, &sndev->mmio_peer_dbmsg->msg_map);
 iowrite64(sndev->db_valid_mask << sndev->db_peer_shift,
    &sndev->mmio_peer_dbmsg->odb_mask);
}
