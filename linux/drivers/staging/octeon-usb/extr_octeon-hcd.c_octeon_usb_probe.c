
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cnt_enb; int cnt_val; } ;
union cvmx_iob_n2c_l2c_pri_cnt {scalar_t__ u64; TYPE_2__ s; } ;
typedef int u32 ;
struct TYPE_6__ {int controller; } ;
struct usb_hcd {int uses_new_polling; TYPE_3__ self; scalar_t__ hcd_priv; } ;
struct resource {int start; } ;
struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct octeon_hcd {int init_flags; int index; int idle_hardware_channels; int * active_pipes; int idle_pipes; int lock; } ;
struct device_node {int dummy; } ;
typedef int irq_hw_number_t ;
struct TYPE_4__ {struct device_node* parent; } ;


 int ARRAY_SIZE (int *) ;
 int CVMX_IOB_N2C_L2C_PRI_CNT ;
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ ;
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ ;
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ ;
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND ;
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI ;
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ;
 int DMA_BIT_MASK (int) ;
 int ENXIO ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int OCTEON_CN31XX ;
 int OCTEON_CN52XX ;
 int OCTEON_CN56XX ;
 int OCTEON_CN5XXX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_usb_initialize (struct device*,struct octeon_hcd*) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 int dev_dbg (struct device*,char*,...) ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,int,int) ;
 int dev_name (struct device*) ;
 int device_wakeup_enable (int ) ;
 int dma_coerce_mask_and_coherent (struct device*,int ) ;
 int irq_create_mapping (int *,int) ;
 int octeon_hc_driver ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int spin_lock_init (int *) ;
 scalar_t__ strcmp (char*,char const*) ;
 int usb_add_hcd (struct usb_hcd*,int,int ) ;
 struct usb_hcd* usb_create_hcd (int *,struct device*,int ) ;
 int usb_put_hcd (struct usb_hcd*) ;

__attribute__((used)) static int octeon_usb_probe(struct platform_device *pdev)
{
 int status;
 int initialize_flags;
 int usb_num;
 struct resource *res_mem;
 struct device_node *usbn_node;
 int irq = platform_get_irq(pdev, 0);
 struct device *dev = &pdev->dev;
 struct octeon_hcd *usb;
 struct usb_hcd *hcd;
 u32 clock_rate = 48000000;
 bool is_crystal_clock = 0;
 const char *clock_type;
 int i;

 if (!dev->of_node) {
  dev_err(dev, "Error: empty of_node\n");
  return -ENXIO;
 }
 usbn_node = dev->of_node->parent;

 i = of_property_read_u32(usbn_node,
     "clock-frequency", &clock_rate);
 if (i)
  i = of_property_read_u32(usbn_node,
      "refclk-frequency", &clock_rate);
 if (i) {
  dev_err(dev, "No USBN \"clock-frequency\"\n");
  return -ENXIO;
 }
 switch (clock_rate) {
 case 12000000:
  initialize_flags = CVMX_USB_INITIALIZE_FLAGS_CLOCK_12MHZ;
  break;
 case 24000000:
  initialize_flags = CVMX_USB_INITIALIZE_FLAGS_CLOCK_24MHZ;
  break;
 case 48000000:
  initialize_flags = CVMX_USB_INITIALIZE_FLAGS_CLOCK_48MHZ;
  break;
 default:
  dev_err(dev, "Illegal USBN \"clock-frequency\" %u\n",
   clock_rate);
  return -ENXIO;
 }

 i = of_property_read_string(usbn_node,
        "cavium,refclk-type", &clock_type);
 if (i)
  i = of_property_read_string(usbn_node,
         "refclk-type", &clock_type);

 if (!i && strcmp("crystal", clock_type) == 0)
  is_crystal_clock = 1;

 if (is_crystal_clock)
  initialize_flags |= CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_XI;
 else
  initialize_flags |= CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND;

 res_mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res_mem) {
  dev_err(dev, "found no memory resource\n");
  return -ENXIO;
 }
 usb_num = (res_mem->start >> 44) & 1;

 if (irq < 0) {

  irq_hw_number_t hwirq = usb_num ? (1 << 6) + 17 : 56;

  irq = irq_create_mapping(((void*)0), hwirq);
 }





 i = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));
 if (i)
  return i;
 if (OCTEON_IS_MODEL(OCTEON_CN52XX) || OCTEON_IS_MODEL(OCTEON_CN56XX)) {
  union cvmx_iob_n2c_l2c_pri_cnt pri_cnt;

  pri_cnt.u64 = 0;
  pri_cnt.s.cnt_enb = 1;
  pri_cnt.s.cnt_val = 400;
  cvmx_write_csr(CVMX_IOB_N2C_L2C_PRI_CNT, pri_cnt.u64);
 }

 hcd = usb_create_hcd(&octeon_hc_driver, dev, dev_name(dev));
 if (!hcd) {
  dev_dbg(dev, "Failed to allocate memory for HCD\n");
  return -1;
 }
 hcd->uses_new_polling = 1;
 usb = (struct octeon_hcd *)hcd->hcd_priv;

 spin_lock_init(&usb->lock);

 usb->init_flags = initialize_flags;


 usb->index = usb_num;
 INIT_LIST_HEAD(&usb->idle_pipes);
 for (i = 0; i < ARRAY_SIZE(usb->active_pipes); i++)
  INIT_LIST_HEAD(&usb->active_pipes[i]);


 if (OCTEON_IS_MODEL(OCTEON_CN31XX)) {
  usb->init_flags |= CVMX_USB_INITIALIZE_FLAGS_NO_DMA;

  usb->idle_hardware_channels = 0x1;
 } else if (OCTEON_IS_MODEL(OCTEON_CN5XXX)) {

  usb->idle_hardware_channels = 0xf7;
 } else {
  usb->idle_hardware_channels = 0xff;
 }

 status = cvmx_usb_initialize(dev, usb);
 if (status) {
  dev_dbg(dev, "USB initialization failed with %d\n", status);
  usb_put_hcd(hcd);
  return -1;
 }

 status = usb_add_hcd(hcd, irq, 0);
 if (status) {
  dev_dbg(dev, "USB add HCD failed with %d\n", status);
  usb_put_hcd(hcd);
  return -1;
 }
 device_wakeup_enable(hcd->self.controller);

 dev_info(dev, "Registered HCD for port %d on irq %d\n", usb_num, irq);

 return 0;
}
