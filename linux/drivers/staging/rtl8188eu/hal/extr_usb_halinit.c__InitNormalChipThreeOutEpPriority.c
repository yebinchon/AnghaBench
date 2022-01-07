
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct registry_priv {int wifi_spec; } ;
struct adapter {struct registry_priv registrypriv; } ;


 int QUEUE_HIGH ;
 int QUEUE_LOW ;
 int QUEUE_NORMAL ;
 int _InitNormalChipRegPriority (struct adapter*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void _InitNormalChipThreeOutEpPriority(struct adapter *Adapter)
{
 struct registry_priv *pregistrypriv = &Adapter->registrypriv;
 u16 beQ, bkQ, viQ, voQ, mgtQ, hiQ;

 if (!pregistrypriv->wifi_spec) {
  beQ = QUEUE_LOW;
  bkQ = QUEUE_LOW;
  viQ = QUEUE_NORMAL;
  voQ = QUEUE_HIGH;
  mgtQ = QUEUE_HIGH;
  hiQ = QUEUE_HIGH;
 } else {
  beQ = QUEUE_LOW;
  bkQ = QUEUE_NORMAL;
  viQ = QUEUE_NORMAL;
  voQ = QUEUE_HIGH;
  mgtQ = QUEUE_HIGH;
  hiQ = QUEUE_HIGH;
 }
 _InitNormalChipRegPriority(Adapter, beQ, bkQ, viQ, voQ, mgtQ, hiQ);
}
