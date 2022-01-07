
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct c67x00_td {int data; int residue; int retry_cnt; int status; int ctrl_reg; int dev_addr; int pid_ep; int pipe; int urb; int td_addr; } ;
struct c67x00_hcd {int dummy; } ;


 struct device* c67x00_hcd_dev (struct c67x00_hcd*) ;
 int dev_dbg (struct device*,char*,char*,...) ;
 char* td_length (struct c67x00_td*) ;
 int td_ly_base_addr (struct c67x00_td*) ;
 int td_next_td_addr (struct c67x00_td*) ;
 int td_port_length (struct c67x00_td*) ;
 int usb_pipeendpoint (int ) ;
 int usb_pipeout (int ) ;

__attribute__((used)) static void dbg_td(struct c67x00_hcd *c67x00, struct c67x00_td *td, char *msg)
{
 struct device *dev = c67x00_hcd_dev(c67x00);

 dev_dbg(dev, "### %s at 0x%04x\n", msg, td->td_addr);
 dev_dbg(dev, "urb:      0x%p\n", td->urb);
 dev_dbg(dev, "endpoint:   %4d\n", usb_pipeendpoint(td->pipe));
 dev_dbg(dev, "pipeout:    %4d\n", usb_pipeout(td->pipe));
 dev_dbg(dev, "ly_base_addr: 0x%04x\n", td_ly_base_addr(td));
 dev_dbg(dev, "port_length:  0x%04x\n", td_port_length(td));
 dev_dbg(dev, "pid_ep:         0x%02x\n", td->pid_ep);
 dev_dbg(dev, "dev_addr:       0x%02x\n", td->dev_addr);
 dev_dbg(dev, "ctrl_reg:       0x%02x\n", td->ctrl_reg);
 dev_dbg(dev, "status:         0x%02x\n", td->status);
 dev_dbg(dev, "retry_cnt:      0x%02x\n", td->retry_cnt);
 dev_dbg(dev, "residue:        0x%02x\n", td->residue);
 dev_dbg(dev, "next_td_addr: 0x%04x\n", td_next_td_addr(td));
 dev_dbg(dev, "data: %*ph\n", td_length(td), td->data);
}
