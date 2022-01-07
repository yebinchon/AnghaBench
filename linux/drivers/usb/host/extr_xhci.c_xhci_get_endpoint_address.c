
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 unsigned int USB_DIR_IN ;
 unsigned int USB_DIR_OUT ;

unsigned int xhci_get_endpoint_address(unsigned int ep_index)
{
 unsigned int number = DIV_ROUND_UP(ep_index, 2);
 unsigned int direction = ep_index % 2 ? USB_DIR_OUT : USB_DIR_IN;
 return direction | number;
}
