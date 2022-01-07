
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int s626_ai_reg_to_uint(unsigned int data)
{
 return ((data >> 18) & 0x3fff) ^ 0x2000;
}
