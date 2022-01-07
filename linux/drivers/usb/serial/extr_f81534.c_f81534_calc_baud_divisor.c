
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_CLOSEST (int ,int ) ;

__attribute__((used)) static u32 f81534_calc_baud_divisor(u32 baudrate, u32 clockrate)
{
 if (!baudrate)
  return 0;


 return DIV_ROUND_CLOSEST(clockrate, baudrate);
}
