
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char const u_int32_t ;



__attribute__((used)) static inline u_int32_t get_32(const unsigned char *x)
{
 return (x[3] << 24) | (x[2] << 16) | (x[1] << 8) | x[0];
}
