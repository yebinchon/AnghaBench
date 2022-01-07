
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;
typedef int __le16 ;


 int le16_to_cpup (int *) ;

__attribute__((used)) static inline int w1_DS18B20_convert_temp(u8 rom[9])
{
 s16 t = le16_to_cpup((__le16 *)rom);

 return t*1000/16;
}
