
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rt2x00lib_erp {int beacon_int; int eifs; int sifs; int slot_time; int basic_rates; int short_preamble; } ;
struct rt2x00_dev {int dummy; } ;


 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int MAC_CSR10 ;
 int MAC_CSR11 ;
 int MAC_CSR12 ;
 int TXRX_CSR10 ;
 int TXRX_CSR10_AUTORESPOND_PREAMBLE ;
 int TXRX_CSR11 ;
 int TXRX_CSR18 ;
 int TXRX_CSR18_INTERVAL ;
 int rt2500usb_register_read (struct rt2x00_dev*,int ) ;
 int rt2500usb_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field16 (int *,int ,int) ;

__attribute__((used)) static void rt2500usb_config_erp(struct rt2x00_dev *rt2x00dev,
     struct rt2x00lib_erp *erp,
     u32 changed)
{
 u16 reg;

 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  reg = rt2500usb_register_read(rt2x00dev, TXRX_CSR10);
  rt2x00_set_field16(&reg, TXRX_CSR10_AUTORESPOND_PREAMBLE,
       !!erp->short_preamble);
  rt2500usb_register_write(rt2x00dev, TXRX_CSR10, reg);
 }

 if (changed & BSS_CHANGED_BASIC_RATES)
  rt2500usb_register_write(rt2x00dev, TXRX_CSR11,
      erp->basic_rates);

 if (changed & BSS_CHANGED_BEACON_INT) {
  reg = rt2500usb_register_read(rt2x00dev, TXRX_CSR18);
  rt2x00_set_field16(&reg, TXRX_CSR18_INTERVAL,
       erp->beacon_int * 4);
  rt2500usb_register_write(rt2x00dev, TXRX_CSR18, reg);
 }

 if (changed & BSS_CHANGED_ERP_SLOT) {
  rt2500usb_register_write(rt2x00dev, MAC_CSR10, erp->slot_time);
  rt2500usb_register_write(rt2x00dev, MAC_CSR11, erp->sifs);
  rt2500usb_register_write(rt2x00dev, MAC_CSR12, erp->eifs);
 }
}
