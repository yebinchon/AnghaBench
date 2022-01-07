
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface_assoc_descriptor {int bFunctionProtocol; int bFunctionSubClass; int bFunctionClass; int bInterfaceCount; int bFirstInterface; } ;


 int class_decode (int ) ;
 char* format_iad ;
 int sprintf (char*,char*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static char *usb_dump_iad_descriptor(char *start, char *end,
   const struct usb_interface_assoc_descriptor *iad)
{
 if (start > end)
  return start;
 start += sprintf(start, format_iad,
    iad->bFirstInterface,
    iad->bInterfaceCount,
    iad->bFunctionClass,
    class_decode(iad->bFunctionClass),
    iad->bFunctionSubClass,
    iad->bFunctionProtocol);
 return start;
}
