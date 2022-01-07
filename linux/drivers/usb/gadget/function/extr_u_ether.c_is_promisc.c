
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int USB_CDC_PACKET_TYPE_PROMISCUOUS ;

__attribute__((used)) static inline int is_promisc(u16 cdc_filter)
{
 return cdc_filter & USB_CDC_PACKET_TYPE_PROMISCUOUS;
}
