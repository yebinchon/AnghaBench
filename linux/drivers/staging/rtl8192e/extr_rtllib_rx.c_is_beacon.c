
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ RTLLIB_STYPE_BEACON ;
 scalar_t__ WLAN_FC_GET_STYPE (int ) ;

__attribute__((used)) static inline int is_beacon(u16 fc)
{
 return (WLAN_FC_GET_STYPE(fc) == RTLLIB_STYPE_BEACON);
}
