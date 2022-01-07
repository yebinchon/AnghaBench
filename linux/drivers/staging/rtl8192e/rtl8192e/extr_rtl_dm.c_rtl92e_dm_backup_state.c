
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_3__ {void* cca; void* xdagccore1; void* xcagccore1; void* xbagccore1; void* xaagccore1; } ;
struct r8192_priv {int bswitch_fsync; int bfsync_processing; TYPE_1__ initgain_backup; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ dig_algorithm; } ;


 int COMP_DIG ;
 scalar_t__ DIG_ALGO_BY_RSSI ;
 int RT_TRACE (int ,char*,void*) ;
 int UFWP ;
 int bMaskByte0 ;
 int bMaskByte1 ;
 int bMaskByte2 ;
 TYPE_2__ dm_digtable ;
 int rCCK0_CCA ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XCAGCCore1 ;
 int rOFDM0_XDAGCCore1 ;
 scalar_t__ rtl92e_get_bb_reg (struct net_device*,int ,int ) ;
 int rtl92e_set_bb_reg (struct net_device*,int ,int ,int) ;
 struct r8192_priv* rtllib_priv (struct net_device*) ;

void rtl92e_dm_backup_state(struct net_device *dev)
{
 struct r8192_priv *priv = rtllib_priv(dev);
 u32 bit_mask = bMaskByte0;

 priv->bswitch_fsync = 0;
 priv->bfsync_processing = 0;

 if (dm_digtable.dig_algorithm == DIG_ALGO_BY_RSSI)
  return;

 rtl92e_set_bb_reg(dev, UFWP, bMaskByte1, 0x8);
 priv->initgain_backup.xaagccore1 = (u8)rtl92e_get_bb_reg(dev, rOFDM0_XAAGCCore1, bit_mask);
 priv->initgain_backup.xbagccore1 = (u8)rtl92e_get_bb_reg(dev, rOFDM0_XBAGCCore1, bit_mask);
 priv->initgain_backup.xcagccore1 = (u8)rtl92e_get_bb_reg(dev, rOFDM0_XCAGCCore1, bit_mask);
 priv->initgain_backup.xdagccore1 = (u8)rtl92e_get_bb_reg(dev, rOFDM0_XDAGCCore1, bit_mask);
 bit_mask = bMaskByte2;
 priv->initgain_backup.cca = (u8)rtl92e_get_bb_reg(dev, rCCK0_CCA, bit_mask);

 RT_TRACE(COMP_DIG, "BBInitialGainBackup 0xc50 is %x\n",
   priv->initgain_backup.xaagccore1);
 RT_TRACE(COMP_DIG, "BBInitialGainBackup 0xc58 is %x\n",
   priv->initgain_backup.xbagccore1);
 RT_TRACE(COMP_DIG, "BBInitialGainBackup 0xc60 is %x\n",
   priv->initgain_backup.xcagccore1);
 RT_TRACE(COMP_DIG, "BBInitialGainBackup 0xc68 is %x\n",
   priv->initgain_backup.xdagccore1);
 RT_TRACE(COMP_DIG, "BBInitialGainBackup 0xa0a is %x\n",
   priv->initgain_backup.cca);
}
