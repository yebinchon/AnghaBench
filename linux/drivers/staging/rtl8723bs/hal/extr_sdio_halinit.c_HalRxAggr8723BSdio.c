
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct registry_priv {scalar_t__ wifi_spec; } ;
struct adapter {struct registry_priv registrypriv; } ;


 scalar_t__ REG_RXDMA_AGG_PG_TH ;
 int rtw_write8 (struct adapter*,scalar_t__,int) ;

__attribute__((used)) static void HalRxAggr8723BSdio(struct adapter *padapter)
{
 struct registry_priv *pregistrypriv;
 u8 valueDMATimeout;
 u8 valueDMAPageCount;


 pregistrypriv = &padapter->registrypriv;

 if (pregistrypriv->wifi_spec) {



  valueDMATimeout = 0x06;
  valueDMAPageCount = 0x06;
 } else {


  valueDMATimeout = 0x06;
  valueDMAPageCount = 0x06;
 }

 rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
}
