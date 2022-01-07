
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_dev_addr {int dummy; } ;


 int memcmp (struct uwb_dev_addr const*,struct uwb_dev_addr const*,int) ;

__attribute__((used)) static inline int uwb_dev_addr_cmp(const struct uwb_dev_addr *addr1,
       const struct uwb_dev_addr *addr2)
{
 return memcmp(addr1, addr2, sizeof(*addr1));
}
