
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int speed_t ;


 int DIV_ROUND_CLOSEST (int ,int ) ;

__attribute__((used)) static int calc_baud_divisor(speed_t baudrate, speed_t clockrate)
{
 if (!baudrate)
  return 0;

 return DIV_ROUND_CLOSEST(clockrate, baudrate);
}
