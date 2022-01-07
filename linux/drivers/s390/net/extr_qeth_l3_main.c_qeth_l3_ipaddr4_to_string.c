
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int sprintf (char*,char*,int const*) ;

__attribute__((used)) static void qeth_l3_ipaddr4_to_string(const __u8 *addr, char *buf)
{
 sprintf(buf, "%pI4", addr);
}
