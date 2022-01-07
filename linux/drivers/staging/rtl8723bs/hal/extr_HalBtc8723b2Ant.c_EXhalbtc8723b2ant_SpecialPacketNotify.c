
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int PBTC_COEXIST ;


 int BTC_MSG_INTERFACE ;
 scalar_t__ BTC_PACKET_DHCP ;
 int BTC_PRINT (int ,int ,char*) ;
 int INTF_NOTIFY ;

void EXhalbtc8723b2ant_SpecialPacketNotify(PBTC_COEXIST pBtCoexist, u8 type)
{
 if (type == BTC_PACKET_DHCP) {
  BTC_PRINT(BTC_MSG_INTERFACE, INTF_NOTIFY, ("[BTCoex], DHCP Packet notify\n"));
 }
}
