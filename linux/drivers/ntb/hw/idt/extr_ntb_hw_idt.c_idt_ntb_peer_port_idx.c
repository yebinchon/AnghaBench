
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int* port_idx_map; } ;


 int EINVAL ;
 int IDT_MAX_NR_PORTS ;
 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_peer_port_idx(struct ntb_dev *ntb, int port)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 if (port < 0 || IDT_MAX_NR_PORTS <= port)
  return -EINVAL;

 return ndev->port_idx_map[port];
}
