
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const u_int16_t ;



__attribute__((used)) static inline u_int16_t get_16(const unsigned char *x)
{
 return (x[1] << 8) | x[0];
}
