
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct in6_addr {int dummy; } ;
typedef int ipv6_addr ;
typedef int ipv4_addr ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;
typedef struct in6_addr __be32 ;


 int EINVAL ;
 int QETH_DBF_MESSAGE (int,char*) ;
 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 scalar_t__ ipv4_is_multicast (struct in6_addr) ;
 scalar_t__ ipv6_addr_is_multicast (struct in6_addr*) ;
 int memcpy (struct in6_addr*,int *,int) ;
 scalar_t__ qeth_l3_string_to_ipaddr (char const*,int,int *) ;

__attribute__((used)) static int qeth_l3_parse_rxipe(const char *buf, enum qeth_prot_versions proto,
   u8 *addr)
{
 __be32 ipv4_addr;
 struct in6_addr ipv6_addr;

 if (qeth_l3_string_to_ipaddr(buf, proto, addr)) {
  return -EINVAL;
 }
 if (proto == QETH_PROT_IPV4) {
  memcpy(&ipv4_addr, addr, sizeof(ipv4_addr));
  if (ipv4_is_multicast(ipv4_addr)) {
   QETH_DBF_MESSAGE(2, "multicast rxip not supported.\n");
   return -EINVAL;
  }
 } else if (proto == QETH_PROT_IPV6) {
  memcpy(&ipv6_addr, addr, sizeof(ipv6_addr));
  if (ipv6_addr_is_multicast(&ipv6_addr)) {
   QETH_DBF_MESSAGE(2, "multicast rxip not supported.\n");
   return -EINVAL;
  }
 }

 return 0;
}
