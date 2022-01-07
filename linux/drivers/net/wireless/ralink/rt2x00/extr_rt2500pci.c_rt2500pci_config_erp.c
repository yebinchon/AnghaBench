
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00lib_erp {int short_preamble; int basic_rates; int slot_time; int sifs; int pifs; int difs; int eifs; int beacon_int; } ;
struct rt2x00_dev {int dummy; } ;


 int ACK_SIZE ;
 int ARCSR1 ;
 int ARCSR2 ;
 int ARCSR2_LENGTH ;
 int ARCSR2_SERVICE ;
 int ARCSR2_SIGNAL ;
 int ARCSR3 ;
 int ARCSR3_SERVICE ;
 int ARCSR3_SIGNAL ;
 int ARCSR4 ;
 int ARCSR4_SERVICE ;
 int ARCSR4_SIGNAL ;
 int ARCSR5 ;
 int ARCSR5_SERVICE ;
 int ARCSR5_SIGNAL ;
 int BSS_CHANGED_BASIC_RATES ;
 int BSS_CHANGED_BEACON_INT ;
 int BSS_CHANGED_ERP_PREAMBLE ;
 int BSS_CHANGED_ERP_SLOT ;
 int CSR11 ;
 int CSR11_SLOT_TIME ;
 int CSR12 ;
 int CSR12_BEACON_INTERVAL ;
 int CSR12_CFP_MAX_DURATION ;
 int CSR18 ;
 int CSR18_PIFS ;
 int CSR18_SIFS ;
 int CSR19 ;
 int CSR19_DIFS ;
 int CSR19_EIFS ;
 int GET_DURATION (int ,int) ;
 int IEEE80211_HEADER ;
 int TXCSR1 ;
 int TXCSR1_ACK_CONSUME_TIME ;
 int TXCSR1_ACK_TIMEOUT ;
 int TXCSR1_AUTORESPONDER ;
 int TXCSR1_TSF_OFFSET ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static void rt2500pci_config_erp(struct rt2x00_dev *rt2x00dev,
     struct rt2x00lib_erp *erp,
     u32 changed)
{
 int preamble_mask;
 u32 reg;




 if (changed & BSS_CHANGED_ERP_PREAMBLE) {
  preamble_mask = erp->short_preamble << 3;

  reg = rt2x00mmio_register_read(rt2x00dev, TXCSR1);
  rt2x00_set_field32(&reg, TXCSR1_ACK_TIMEOUT, 0x162);
  rt2x00_set_field32(&reg, TXCSR1_ACK_CONSUME_TIME, 0xa2);
  rt2x00_set_field32(&reg, TXCSR1_TSF_OFFSET, IEEE80211_HEADER);
  rt2x00_set_field32(&reg, TXCSR1_AUTORESPONDER, 1);
  rt2x00mmio_register_write(rt2x00dev, TXCSR1, reg);

  reg = rt2x00mmio_register_read(rt2x00dev, ARCSR2);
  rt2x00_set_field32(&reg, ARCSR2_SIGNAL, 0x00);
  rt2x00_set_field32(&reg, ARCSR2_SERVICE, 0x04);
  rt2x00_set_field32(&reg, ARCSR2_LENGTH,
       GET_DURATION(ACK_SIZE, 10));
  rt2x00mmio_register_write(rt2x00dev, ARCSR2, reg);

  reg = rt2x00mmio_register_read(rt2x00dev, ARCSR3);
  rt2x00_set_field32(&reg, ARCSR3_SIGNAL, 0x01 | preamble_mask);
  rt2x00_set_field32(&reg, ARCSR3_SERVICE, 0x04);
  rt2x00_set_field32(&reg, ARCSR2_LENGTH,
       GET_DURATION(ACK_SIZE, 20));
  rt2x00mmio_register_write(rt2x00dev, ARCSR3, reg);

  reg = rt2x00mmio_register_read(rt2x00dev, ARCSR4);
  rt2x00_set_field32(&reg, ARCSR4_SIGNAL, 0x02 | preamble_mask);
  rt2x00_set_field32(&reg, ARCSR4_SERVICE, 0x04);
  rt2x00_set_field32(&reg, ARCSR2_LENGTH,
       GET_DURATION(ACK_SIZE, 55));
  rt2x00mmio_register_write(rt2x00dev, ARCSR4, reg);

  reg = rt2x00mmio_register_read(rt2x00dev, ARCSR5);
  rt2x00_set_field32(&reg, ARCSR5_SIGNAL, 0x03 | preamble_mask);
  rt2x00_set_field32(&reg, ARCSR5_SERVICE, 0x84);
  rt2x00_set_field32(&reg, ARCSR2_LENGTH,
       GET_DURATION(ACK_SIZE, 110));
  rt2x00mmio_register_write(rt2x00dev, ARCSR5, reg);
 }

 if (changed & BSS_CHANGED_BASIC_RATES)
  rt2x00mmio_register_write(rt2x00dev, ARCSR1, erp->basic_rates);

 if (changed & BSS_CHANGED_ERP_SLOT) {
  reg = rt2x00mmio_register_read(rt2x00dev, CSR11);
  rt2x00_set_field32(&reg, CSR11_SLOT_TIME, erp->slot_time);
  rt2x00mmio_register_write(rt2x00dev, CSR11, reg);

  reg = rt2x00mmio_register_read(rt2x00dev, CSR18);
  rt2x00_set_field32(&reg, CSR18_SIFS, erp->sifs);
  rt2x00_set_field32(&reg, CSR18_PIFS, erp->pifs);
  rt2x00mmio_register_write(rt2x00dev, CSR18, reg);

  reg = rt2x00mmio_register_read(rt2x00dev, CSR19);
  rt2x00_set_field32(&reg, CSR19_DIFS, erp->difs);
  rt2x00_set_field32(&reg, CSR19_EIFS, erp->eifs);
  rt2x00mmio_register_write(rt2x00dev, CSR19, reg);
 }

 if (changed & BSS_CHANGED_BEACON_INT) {
  reg = rt2x00mmio_register_read(rt2x00dev, CSR12);
  rt2x00_set_field32(&reg, CSR12_BEACON_INTERVAL,
       erp->beacon_int * 16);
  rt2x00_set_field32(&reg, CSR12_CFP_MAX_DURATION,
       erp->beacon_int * 16);
  rt2x00mmio_register_write(rt2x00dev, CSR12, reg);
 }

}
