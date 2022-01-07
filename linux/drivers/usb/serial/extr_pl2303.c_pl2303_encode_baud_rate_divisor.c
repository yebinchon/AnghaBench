
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int speed_t ;



__attribute__((used)) static speed_t pl2303_encode_baud_rate_divisor(unsigned char buf[4],
        speed_t baud)
{
 unsigned int baseline, mantissa, exponent;
 baseline = 12000000 * 32;
 mantissa = baseline / baud;
 if (mantissa == 0)
  mantissa = 1;
 exponent = 0;
 while (mantissa >= 512) {
  if (exponent < 7) {
   mantissa >>= 2;
   exponent++;
  } else {

   mantissa = 511;
   break;
  }
 }

 buf[3] = 0x80;
 buf[2] = 0;
 buf[1] = exponent << 1 | mantissa >> 8;
 buf[0] = mantissa & 0xff;


 baud = (baseline / mantissa) >> (exponent << 1);

 return baud;
}
