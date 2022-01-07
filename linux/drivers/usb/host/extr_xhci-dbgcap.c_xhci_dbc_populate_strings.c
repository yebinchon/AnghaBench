
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u32 ;
struct usb_string_descriptor {int bLength; void* bDescriptorType; scalar_t__ wData; } ;
struct dbc_str_descs {int* string0; scalar_t__ manufacturer; scalar_t__ product; scalar_t__ serial; } ;


 int DBC_MAX_STRING_LENGTH ;
 int DBC_STRING_MANUFACTURER ;
 int DBC_STRING_PRODUCT ;
 int DBC_STRING_SERIAL ;
 void* USB_DT_STRING ;
 int UTF16_LITTLE_ENDIAN ;
 int strlen (int ) ;
 int utf8s_to_utf16s (int ,int,int ,int *,int ) ;

__attribute__((used)) static u32 xhci_dbc_populate_strings(struct dbc_str_descs *strings)
{
 struct usb_string_descriptor *s_desc;
 u32 string_length;


 s_desc = (struct usb_string_descriptor *)strings->serial;
 utf8s_to_utf16s(DBC_STRING_SERIAL, strlen(DBC_STRING_SERIAL),
   UTF16_LITTLE_ENDIAN, (wchar_t *)s_desc->wData,
   DBC_MAX_STRING_LENGTH);

 s_desc->bLength = (strlen(DBC_STRING_SERIAL) + 1) * 2;
 s_desc->bDescriptorType = USB_DT_STRING;
 string_length = s_desc->bLength;
 string_length <<= 8;


 s_desc = (struct usb_string_descriptor *)strings->product;
 utf8s_to_utf16s(DBC_STRING_PRODUCT, strlen(DBC_STRING_PRODUCT),
   UTF16_LITTLE_ENDIAN, (wchar_t *)s_desc->wData,
   DBC_MAX_STRING_LENGTH);

 s_desc->bLength = (strlen(DBC_STRING_PRODUCT) + 1) * 2;
 s_desc->bDescriptorType = USB_DT_STRING;
 string_length += s_desc->bLength;
 string_length <<= 8;


 s_desc = (struct usb_string_descriptor *)strings->manufacturer;
 utf8s_to_utf16s(DBC_STRING_MANUFACTURER,
   strlen(DBC_STRING_MANUFACTURER),
   UTF16_LITTLE_ENDIAN, (wchar_t *)s_desc->wData,
   DBC_MAX_STRING_LENGTH);

 s_desc->bLength = (strlen(DBC_STRING_MANUFACTURER) + 1) * 2;
 s_desc->bDescriptorType = USB_DT_STRING;
 string_length += s_desc->bLength;
 string_length <<= 8;


 strings->string0[0] = 4;
 strings->string0[1] = USB_DT_STRING;
 strings->string0[2] = 0x09;
 strings->string0[3] = 0x04;
 string_length += 4;

 return string_length;
}
