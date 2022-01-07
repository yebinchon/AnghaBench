
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum mt76_qsel { ____Placeholder_mt76_qsel } mt76_qsel ;


 int MT_QSEL_EDCA ;
 int MT_QSEL_MGMT ;

__attribute__((used)) static enum mt76_qsel ep2dmaq(u8 ep)
{
 if (ep == 5)
  return MT_QSEL_MGMT;
 return MT_QSEL_EDCA;
}
