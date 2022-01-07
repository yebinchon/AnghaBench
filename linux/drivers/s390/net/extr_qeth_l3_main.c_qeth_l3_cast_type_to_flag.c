
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int QETH_CAST_ANYCAST ;
 int QETH_CAST_BROADCAST ;
 int QETH_CAST_MULTICAST ;
 int QETH_CAST_UNICAST ;
 int RTN_ANYCAST ;
 int RTN_BROADCAST ;
 int RTN_MULTICAST ;

__attribute__((used)) static u8 qeth_l3_cast_type_to_flag(int cast_type)
{
 if (cast_type == RTN_MULTICAST)
  return QETH_CAST_MULTICAST;
 if (cast_type == RTN_ANYCAST)
  return QETH_CAST_ANYCAST;
 if (cast_type == RTN_BROADCAST)
  return QETH_CAST_BROADCAST;
 return QETH_CAST_UNICAST;
}
