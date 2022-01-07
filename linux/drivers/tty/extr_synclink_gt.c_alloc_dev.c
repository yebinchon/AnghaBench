
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int close_delay; int closing_wait; int * ops; } ;
struct slgt_info {int max_frame_size; int base_clock; int adapter_num; int port_num; int init_error; int irq_flags; int bus_type; int phys_reg_addr; int irq_level; struct pci_dev* pdev; int rx_timer; int tx_timer; int idle_mode; int params; int netlock; int event_wait_q; int status_event_wait_q; TYPE_1__ port; int rbuf_fill_level; int task; int magic; } ;
struct pci_dev {int irq; } ;
typedef int MGSL_PARAMS ;


 int DBGERR (char*) ;
 int DMABUFSIZE ;
 int GFP_KERNEL ;
 int HDLC_TXIDLE_FLAGS ;
 int HZ ;
 int INIT_WORK (int *,int ) ;
 int IRQF_SHARED ;
 int MGSL_BUS_TYPE_PCI ;
 int MGSL_MAGIC ;
 int bh_handler ;
 int default_params ;
 int driver_name ;
 int init_waitqueue_head (int *) ;
 struct slgt_info* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 int rx_timeout ;
 int slgt_port_ops ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int tty_port_init (TYPE_1__*) ;
 int tx_timeout ;

__attribute__((used)) static struct slgt_info *alloc_dev(int adapter_num, int port_num, struct pci_dev *pdev)
{
 struct slgt_info *info;

 info = kzalloc(sizeof(struct slgt_info), GFP_KERNEL);

 if (!info) {
  DBGERR(("%s device alloc failed adapter=%d port=%d\n",
   driver_name, adapter_num, port_num));
 } else {
  tty_port_init(&info->port);
  info->port.ops = &slgt_port_ops;
  info->magic = MGSL_MAGIC;
  INIT_WORK(&info->task, bh_handler);
  info->max_frame_size = 4096;
  info->base_clock = 14745600;
  info->rbuf_fill_level = DMABUFSIZE;
  info->port.close_delay = 5*HZ/10;
  info->port.closing_wait = 30*HZ;
  init_waitqueue_head(&info->status_event_wait_q);
  init_waitqueue_head(&info->event_wait_q);
  spin_lock_init(&info->netlock);
  memcpy(&info->params,&default_params,sizeof(MGSL_PARAMS));
  info->idle_mode = HDLC_TXIDLE_FLAGS;
  info->adapter_num = adapter_num;
  info->port_num = port_num;

  timer_setup(&info->tx_timer, tx_timeout, 0);
  timer_setup(&info->rx_timer, rx_timeout, 0);


  info->pdev = pdev;
  info->irq_level = pdev->irq;
  info->phys_reg_addr = pci_resource_start(pdev,0);

  info->bus_type = MGSL_BUS_TYPE_PCI;
  info->irq_flags = IRQF_SHARED;

  info->init_error = -1;
 }

 return info;
}
