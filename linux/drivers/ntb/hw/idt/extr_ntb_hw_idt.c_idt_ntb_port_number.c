
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_dev {int dummy; } ;
struct idt_ntb_dev {int port; } ;


 struct idt_ntb_dev* to_ndev_ntb (struct ntb_dev*) ;

__attribute__((used)) static int idt_ntb_port_number(struct ntb_dev *ntb)
{
 struct idt_ntb_dev *ndev = to_ndev_ntb(ntb);

 return ndev->port;
}
