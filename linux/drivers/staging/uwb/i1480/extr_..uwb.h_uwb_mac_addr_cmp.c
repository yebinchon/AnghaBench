
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_mac_addr {int dummy; } ;


 int memcmp (struct uwb_mac_addr const*,struct uwb_mac_addr const*,int) ;

__attribute__((used)) static inline int uwb_mac_addr_cmp(const struct uwb_mac_addr *addr1,
       const struct uwb_mac_addr *addr2)
{
 return memcmp(addr1, addr2, sizeof(*addr1));
}
