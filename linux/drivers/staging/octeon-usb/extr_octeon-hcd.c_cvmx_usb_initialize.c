
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int ate_reset; scalar_t__ hst_mode; } ;
union cvmx_usbnx_usbp_ctl_status {void* u64; TYPE_5__ s; } ;
struct TYPE_13__ {int por; int hrst; int prst; int hclk_rst; int enable; int p_rtype; int p_c_sel; int divide; scalar_t__ divide2; } ;
union cvmx_usbnx_clk_ctl {void* u64; TYPE_6__ s; } ;
struct TYPE_10__ {scalar_t__ fslspclksel; scalar_t__ fslssupp; } ;
union cvmx_usbcx_hcfg {void* u32; TYPE_3__ s; } ;
struct TYPE_8__ {int usbtrdtim; scalar_t__ phylpwrclksel; scalar_t__ ddrsel; scalar_t__ toutcal; } ;
union cvmx_usbcx_gusbcfg {void* u32; TYPE_1__ s; } ;
struct TYPE_11__ {int prtint; int disconnint; } ;
union cvmx_usbcx_gintsts {void* u32; TYPE_4__ s; } ;
struct TYPE_9__ {int otgintmsk; int modemismsk; int hchintmsk; int rxflvlmsk; scalar_t__ sofmsk; } ;
union cvmx_usbcx_gintmsk {void* u32; TYPE_2__ s; } ;
struct TYPE_14__ {int dmaen; int nptxfemplvl; int ptxfemplvl; int glblintrmsk; scalar_t__ hbstlen; } ;
union cvmx_usbcx_gahbcfg {void* u32; TYPE_7__ s; } ;
struct octeon_hcd {int init_flags; int index; } ;
struct device {int dummy; } ;


 int CVMX_USBCX_GAHBCFG (int ) ;
 int CVMX_USBCX_GINTMSK (int ) ;
 int CVMX_USBCX_GINTSTS (int ) ;
 int CVMX_USBCX_GUSBCFG (int ) ;
 int CVMX_USBCX_HCFG (int ) ;
 int CVMX_USBCX_HCINTMSKX (int,int ) ;
 int CVMX_USBNX_CLK_CTL (int ) ;
 int CVMX_USBNX_USBP_CTL_STATUS (int ) ;



 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK ;
 int CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND ;
 int CVMX_USB_INITIALIZE_FLAGS_NO_DMA ;
 int DIV_ROUND_UP (int ,int) ;
 int EAGAIN ;
 int OCTEON_CN3XXX ;
 int OCTEON_CN50XX ;
 int OCTEON_CN56XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int USB_SET_FIELD32 (int ,int ,int ,int) ;
 int __delay (int) ;
 int cvmx_fifo_setup (struct octeon_hcd*) ;
 void* cvmx_read64_uint64 (int ) ;
 void* cvmx_usb_read_csr32 (struct octeon_hcd*,int ) ;
 int cvmx_usb_shutdown (struct octeon_hcd*) ;
 int cvmx_usb_write_csr32 (struct octeon_hcd*,int ,void*) ;
 int cvmx_usbcx_gintmsk ;
 int cvmx_write64_uint64 (int ,void*) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int) ;
 int disconnintmsk ;
 int mdelay (int) ;
 int msleep (int) ;
 int octeon_get_clock_rate () ;
 int prtintmsk ;
 int udelay (int) ;

__attribute__((used)) static int cvmx_usb_initialize(struct device *dev,
          struct octeon_hcd *usb)
{
 int channel;
 int divisor;
 int retries = 0;
 union cvmx_usbcx_hcfg usbcx_hcfg;
 union cvmx_usbnx_clk_ctl usbn_clk_ctl;
 union cvmx_usbcx_gintsts usbc_gintsts;
 union cvmx_usbcx_gahbcfg usbcx_gahbcfg;
 union cvmx_usbcx_gintmsk usbcx_gintmsk;
 union cvmx_usbcx_gusbcfg usbcx_gusbcfg;
 union cvmx_usbnx_usbp_ctl_status usbn_usbp_ctl_status;

retry:
 usbn_clk_ctl.u64 = cvmx_read64_uint64(CVMX_USBNX_CLK_CTL(usb->index));
 usbn_clk_ctl.s.por = 1;
 usbn_clk_ctl.s.hrst = 0;
 usbn_clk_ctl.s.prst = 0;
 usbn_clk_ctl.s.hclk_rst = 0;
 usbn_clk_ctl.s.enable = 0;




 if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_CLOCK_XO_GND) {





  if (OCTEON_IS_MODEL(OCTEON_CN3XXX) ||
      OCTEON_IS_MODEL(OCTEON_CN56XX) ||
      OCTEON_IS_MODEL(OCTEON_CN50XX))

   usbn_clk_ctl.s.p_rtype = 2;
  else

   usbn_clk_ctl.s.p_rtype = 1;

  switch (usb->init_flags &
   CVMX_USB_INITIALIZE_FLAGS_CLOCK_MHZ_MASK) {
  case 130:
   usbn_clk_ctl.s.p_c_sel = 0;
   break;
  case 129:
   usbn_clk_ctl.s.p_c_sel = 1;
   break;
  case 128:
   usbn_clk_ctl.s.p_c_sel = 2;
   break;
  }
 } else {




  if (OCTEON_IS_MODEL(OCTEON_CN3XXX))

   usbn_clk_ctl.s.p_rtype = 3;
  else

   usbn_clk_ctl.s.p_rtype = 0;

  usbn_clk_ctl.s.p_c_sel = 0;
 }





 divisor = DIV_ROUND_UP(octeon_get_clock_rate(), 125000000);

 if (divisor < 4)
  divisor = 4;
 usbn_clk_ctl.s.divide = divisor;
 usbn_clk_ctl.s.divide2 = 0;
 cvmx_write64_uint64(CVMX_USBNX_CLK_CTL(usb->index), usbn_clk_ctl.u64);


 usbn_clk_ctl.s.hclk_rst = 1;
 cvmx_write64_uint64(CVMX_USBNX_CLK_CTL(usb->index), usbn_clk_ctl.u64);

 __delay(64);





 usbn_clk_ctl.s.por = 0;
 cvmx_write64_uint64(CVMX_USBNX_CLK_CTL(usb->index), usbn_clk_ctl.u64);

 mdelay(1);





 usbn_usbp_ctl_status.u64 =
  cvmx_read64_uint64(CVMX_USBNX_USBP_CTL_STATUS(usb->index));
 usbn_usbp_ctl_status.s.ate_reset = 1;
 cvmx_write64_uint64(CVMX_USBNX_USBP_CTL_STATUS(usb->index),
       usbn_usbp_ctl_status.u64);

 __delay(10);




 usbn_usbp_ctl_status.s.ate_reset = 0;
 cvmx_write64_uint64(CVMX_USBNX_USBP_CTL_STATUS(usb->index),
       usbn_usbp_ctl_status.u64);




 usbn_clk_ctl.s.prst = 1;
 cvmx_write64_uint64(CVMX_USBNX_CLK_CTL(usb->index), usbn_clk_ctl.u64);





 usbn_usbp_ctl_status.s.hst_mode = 0;
 cvmx_write64_uint64(CVMX_USBNX_USBP_CTL_STATUS(usb->index),
       usbn_usbp_ctl_status.u64);

 udelay(1);




 usbn_clk_ctl.s.hrst = 1;
 cvmx_write64_uint64(CVMX_USBNX_CLK_CTL(usb->index), usbn_clk_ctl.u64);

 usbn_clk_ctl.s.enable = 1;
 cvmx_write64_uint64(CVMX_USBNX_CLK_CTL(usb->index), usbn_clk_ctl.u64);
 udelay(1);
 usbcx_gahbcfg.u32 = 0;
 usbcx_gahbcfg.s.dmaen = !(usb->init_flags &
      CVMX_USB_INITIALIZE_FLAGS_NO_DMA);
 usbcx_gahbcfg.s.hbstlen = 0;
 usbcx_gahbcfg.s.nptxfemplvl = 1;
 usbcx_gahbcfg.s.ptxfemplvl = 1;
 usbcx_gahbcfg.s.glblintrmsk = 1;
 cvmx_usb_write_csr32(usb, CVMX_USBCX_GAHBCFG(usb->index),
        usbcx_gahbcfg.u32);
 usbcx_gusbcfg.u32 = cvmx_usb_read_csr32(usb,
      CVMX_USBCX_GUSBCFG(usb->index));
 usbcx_gusbcfg.s.toutcal = 0;
 usbcx_gusbcfg.s.ddrsel = 0;
 usbcx_gusbcfg.s.usbtrdtim = 0x5;
 usbcx_gusbcfg.s.phylpwrclksel = 0;
 cvmx_usb_write_csr32(usb, CVMX_USBCX_GUSBCFG(usb->index),
        usbcx_gusbcfg.u32);







 usbcx_gintmsk.u32 = cvmx_usb_read_csr32(usb,
      CVMX_USBCX_GINTMSK(usb->index));
 usbcx_gintmsk.s.otgintmsk = 1;
 usbcx_gintmsk.s.modemismsk = 1;
 usbcx_gintmsk.s.hchintmsk = 1;
 usbcx_gintmsk.s.sofmsk = 0;

 if (usb->init_flags & CVMX_USB_INITIALIZE_FLAGS_NO_DMA)
  usbcx_gintmsk.s.rxflvlmsk = 1;
 cvmx_usb_write_csr32(usb, CVMX_USBCX_GINTMSK(usb->index),
        usbcx_gintmsk.u32);




 for (channel = 0; channel < 8; channel++)
  cvmx_usb_write_csr32(usb,
         CVMX_USBCX_HCINTMSKX(channel, usb->index),
         0);







 USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
   cvmx_usbcx_gintmsk, prtintmsk, 1);
 USB_SET_FIELD32(CVMX_USBCX_GINTMSK(usb->index),
   cvmx_usbcx_gintmsk, disconnintmsk, 1);





 usbcx_hcfg.u32 = cvmx_usb_read_csr32(usb, CVMX_USBCX_HCFG(usb->index));
 usbcx_hcfg.s.fslssupp = 0;
 usbcx_hcfg.s.fslspclksel = 0;
 cvmx_usb_write_csr32(usb, CVMX_USBCX_HCFG(usb->index), usbcx_hcfg.u32);

 cvmx_fifo_setup(usb);






 usbc_gintsts.u32 = cvmx_usb_read_csr32(usb,
            CVMX_USBCX_GINTSTS(usb->index));
 cvmx_usb_write_csr32(usb, CVMX_USBCX_GINTSTS(usb->index),
        usbc_gintsts.u32);
 dev_dbg(dev, "gintsts after reset: 0x%x\n", (int)usbc_gintsts.u32);
 if (!usbc_gintsts.s.disconnint && !usbc_gintsts.s.prtint)
  return 0;
 if (retries++ >= 5)
  return -EAGAIN;
 dev_info(dev, "controller reset failed (gintsts=0x%x) - retrying\n",
   (int)usbc_gintsts.u32);
 msleep(50);
 cvmx_usb_shutdown(usb);
 msleep(50);
 goto retry;
}
