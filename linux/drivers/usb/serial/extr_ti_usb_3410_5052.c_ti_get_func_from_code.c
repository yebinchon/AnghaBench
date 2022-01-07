
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int ti_get_func_from_code(unsigned char code)
{
 return code & 0x0f;
}
