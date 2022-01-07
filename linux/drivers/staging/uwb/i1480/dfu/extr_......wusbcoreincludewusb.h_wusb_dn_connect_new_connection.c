
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dn_connect {int attributes; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static inline int wusb_dn_connect_new_connection(const struct wusb_dn_connect *dn)
{
 return (le16_to_cpu(dn->attributes) >> 8) & 0x1;
}
