
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {struct xhci_dbc* dbc; } ;
struct dbc_port {int registered; int write_fifo; int write_pool; int out; int read_pool; int in; int port; } ;
struct xhci_dbc {struct dbc_port port; } ;
struct device {int dummy; } ;


 int DBC_WRITE_BUF_SIZE ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct device*) ;
 int PTR_ERR (struct device*) ;
 int dbc_read_complete ;
 int dbc_tty_driver ;
 int dbc_write_complete ;
 int kfifo_alloc (int *,int ,int ) ;
 int kfifo_free (int *) ;
 struct device* tty_port_register_device (int *,int ,int ,int *) ;
 int tty_unregister_device (int ,int ) ;
 int xhci_dbc_alloc_requests (int ,int *,int ) ;
 int xhci_dbc_free_requests (int ,int *) ;
 int xhci_dbc_tty_exit_port (struct dbc_port*) ;
 int xhci_dbc_tty_init_port (struct xhci_hcd*,struct dbc_port*) ;
 int xhci_err (struct xhci_hcd*,char*,int) ;

int xhci_dbc_tty_register_device(struct xhci_hcd *xhci)
{
 int ret;
 struct device *tty_dev;
 struct xhci_dbc *dbc = xhci->dbc;
 struct dbc_port *port = &dbc->port;

 xhci_dbc_tty_init_port(xhci, port);
 tty_dev = tty_port_register_device(&port->port,
        dbc_tty_driver, 0, ((void*)0));
 if (IS_ERR(tty_dev)) {
  ret = PTR_ERR(tty_dev);
  goto register_fail;
 }

 ret = kfifo_alloc(&port->write_fifo, DBC_WRITE_BUF_SIZE, GFP_KERNEL);
 if (ret)
  goto buf_alloc_fail;

 ret = xhci_dbc_alloc_requests(port->in, &port->read_pool,
          dbc_read_complete);
 if (ret)
  goto request_fail;

 ret = xhci_dbc_alloc_requests(port->out, &port->write_pool,
          dbc_write_complete);
 if (ret)
  goto request_fail;

 port->registered = 1;

 return 0;

request_fail:
 xhci_dbc_free_requests(port->in, &port->read_pool);
 xhci_dbc_free_requests(port->out, &port->write_pool);
 kfifo_free(&port->write_fifo);

buf_alloc_fail:
 tty_unregister_device(dbc_tty_driver, 0);

register_fail:
 xhci_dbc_tty_exit_port(port);

 xhci_err(xhci, "can't register tty port, err %d\n", ret);

 return ret;
}
