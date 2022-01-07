
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usba_udc {int int_enb_cache; } ;



__attribute__((used)) static inline u32 usba_int_enb_get(struct usba_udc *udc)
{
 return udc->int_enb_cache;
}
