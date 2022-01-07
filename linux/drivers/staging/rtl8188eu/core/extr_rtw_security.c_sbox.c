
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__* sbox_table ;

__attribute__((used)) static u8 sbox(u8 a)
{
 return sbox_table[(int)a];
}
