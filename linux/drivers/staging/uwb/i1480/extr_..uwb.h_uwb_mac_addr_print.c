
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_mac_addr {int data; } ;


 size_t __uwb_addr_print (char*,size_t,int ,int) ;

__attribute__((used)) static inline size_t uwb_mac_addr_print(char *buf, size_t buf_size,
     const struct uwb_mac_addr *addr)
{
 return __uwb_addr_print(buf, buf_size, addr->data, 1);
}
