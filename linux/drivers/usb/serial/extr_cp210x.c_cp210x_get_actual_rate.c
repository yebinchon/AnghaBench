
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int speed_t ;


 unsigned int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static speed_t cp210x_get_actual_rate(speed_t baud)
{
 unsigned int prescale = 1;
 unsigned int div;

 if (baud <= 365)
  prescale = 4;

 div = DIV_ROUND_CLOSEST(48000000, 2 * prescale * baud);
 baud = 48000000 / (2 * prescale * div);

 return baud;
}
