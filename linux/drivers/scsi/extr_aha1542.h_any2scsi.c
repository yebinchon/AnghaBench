
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static inline void any2scsi(u8 *p, u32 v)
{
 p[0] = v >> 16;
 p[1] = v >> 8;
 p[2] = v;
}
