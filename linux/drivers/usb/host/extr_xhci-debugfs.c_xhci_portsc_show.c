
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_port {int addr; } ;
struct seq_file {struct xhci_port* private; } ;


 int readl (int ) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int xhci_decode_portsc (int ) ;

__attribute__((used)) static int xhci_portsc_show(struct seq_file *s, void *unused)
{
 struct xhci_port *port = s->private;
 u32 portsc;

 portsc = readl(port->addr);
 seq_printf(s, "%s\n", xhci_decode_portsc(portsc));

 return 0;
}
