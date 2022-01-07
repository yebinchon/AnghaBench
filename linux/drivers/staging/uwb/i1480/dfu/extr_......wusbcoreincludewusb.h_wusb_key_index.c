
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static inline u8 wusb_key_index(int index, int type, int originator)
{
 return (originator << 6) | (type << 4) | index;
}
