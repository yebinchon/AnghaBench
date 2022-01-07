
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int peer_cnt; TYPE_1__* peers; } ;
struct TYPE_2__ {int port; } ;


 int EINVAL ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_peer_port_number(struct ntb_dev *ntb, int pidx)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 if (pidx < 0 || ndev->peer_cnt <= pidx)
  return -EINVAL;


 return ndev->peers[pidx].port;
}
