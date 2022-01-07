
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rt2x00lib_conf {TYPE_1__* conf; } ;
struct rt2x00_dev {int dummy; } ;
struct TYPE_2__ {int short_frame_max_tx_count; int long_frame_max_tx_count; } ;


 int CSR11 ;
 int CSR11_LONG_RETRY ;
 int CSR11_SHORT_RETRY ;
 int rt2x00_set_field32 (int *,int ,int ) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2400pci_config_retry_limit(struct rt2x00_dev *rt2x00dev,
      struct rt2x00lib_conf *libconf)
{
 u32 reg;

 reg = rt2x00mmio_register_read(rt2x00dev, CSR11);
 rt2x00_set_field32(&reg, CSR11_LONG_RETRY,
      libconf->conf->long_frame_max_tx_count);
 rt2x00_set_field32(&reg, CSR11_SHORT_RETRY,
      libconf->conf->short_frame_max_tx_count);
 rt2x00mmio_register_write(rt2x00dev, CSR11, reg);
}
