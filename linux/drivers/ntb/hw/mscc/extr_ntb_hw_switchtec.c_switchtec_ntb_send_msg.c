
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct switchtec_ntb {TYPE_1__* mmio_peer_dbmsg; } ;
struct TYPE_4__ {int msg; } ;
struct TYPE_3__ {TYPE_2__* omsg; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int iowrite32 (int ,int *) ;

__attribute__((used)) static int switchtec_ntb_send_msg(struct switchtec_ntb *sndev, int idx,
      u32 val)
{
 if (idx < 0 || idx >= ARRAY_SIZE(sndev->mmio_peer_dbmsg->omsg))
  return -EINVAL;

 iowrite32(val, &sndev->mmio_peer_dbmsg->omsg[idx].msg);

 return 0;
}
