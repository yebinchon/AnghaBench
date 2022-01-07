
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *buf_state_string(unsigned state)
{
 switch (state) {
 case 131: return "free";
 case 128: return "valid";
 case 130: return "local";
 case 129: return "usb";
 default: return "unknown";
 }
}
