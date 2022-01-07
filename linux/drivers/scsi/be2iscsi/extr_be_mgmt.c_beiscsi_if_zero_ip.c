
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ BEISCSI_IP_TYPE_V6 ;
 scalar_t__ IP_V4_LEN ;
 scalar_t__ IP_V6_LEN ;

__attribute__((used)) static inline bool beiscsi_if_zero_ip(u8 *ip, u32 ip_type)
{
 u32 len;

 len = (ip_type < BEISCSI_IP_TYPE_V6) ? IP_V4_LEN : IP_V6_LEN;
 while (len && !ip[len - 1])
  len--;
 return (len == 0);
}
