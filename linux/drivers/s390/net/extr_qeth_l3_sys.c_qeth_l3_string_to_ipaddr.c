
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum qeth_prot_versions { ____Placeholder_qeth_prot_versions } qeth_prot_versions ;


 int EINVAL ;
 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 int in4_pton (char const*,int,int *,int,char const**) ;
 int in6_pton (char const*,int,int *,int,char const**) ;

__attribute__((used)) static int qeth_l3_string_to_ipaddr(const char *buf,
        enum qeth_prot_versions proto, u8 *addr)
{
 const char *end;

 if ((proto == QETH_PROT_IPV4 && !in4_pton(buf, -1, addr, -1, &end)) ||
     (proto == QETH_PROT_IPV6 && !in6_pton(buf, -1, addr, -1, &end)))
  return -EINVAL;
 return 0;
}
