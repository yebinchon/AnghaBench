
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct registry_priv {int wifi_spec; } ;
struct adapter {TYPE_1__* HalData; struct registry_priv registrypriv; } ;
struct TYPE_2__ {int OutEpQueueSel; } ;


 int LD_RQPN ;
 int REG_RQPN ;
 int REG_RQPN_NPQ ;
 int TX_SELE_HQ ;
 int TX_SELE_LQ ;
 int TX_SELE_NQ ;
 int _HPQ (int) ;
 int _LPQ (int) ;
 scalar_t__ _NPQ (int) ;
 int _PUBQ (int) ;
 int usb_write16 (struct adapter*,int ,int) ;
 int usb_write32 (struct adapter*,int ,int) ;
 int usb_write8 (struct adapter*,int ,scalar_t__) ;

__attribute__((used)) static void _InitQueueReservedPage(struct adapter *Adapter)
{
 struct registry_priv *pregistrypriv = &Adapter->registrypriv;
 u32 numHQ = 0;
 u32 numLQ = 0;
 u32 numNQ = 0;
 u32 numPubQ;
 u32 value32;
 u8 value8;
 bool bWiFiConfig = pregistrypriv->wifi_spec;

 if (bWiFiConfig) {
  if (Adapter->HalData->OutEpQueueSel & TX_SELE_HQ)
   numHQ = 0x29;

  if (Adapter->HalData->OutEpQueueSel & TX_SELE_LQ)
   numLQ = 0x1C;


  if (Adapter->HalData->OutEpQueueSel & TX_SELE_NQ)
   numNQ = 0x1C;
  value8 = (u8)_NPQ(numNQ);
  usb_write8(Adapter, REG_RQPN_NPQ, value8);

  numPubQ = 0xA8 - numHQ - numLQ - numNQ;


  value32 = _HPQ(numHQ) | _LPQ(numLQ) | _PUBQ(numPubQ) | LD_RQPN;
  usb_write32(Adapter, REG_RQPN, value32);
 } else {
  usb_write16(Adapter, REG_RQPN_NPQ, 0x0000);
  usb_write16(Adapter, REG_RQPN_NPQ, 0x0d);
  usb_write32(Adapter, REG_RQPN, 0x808E000d);
 }
}
