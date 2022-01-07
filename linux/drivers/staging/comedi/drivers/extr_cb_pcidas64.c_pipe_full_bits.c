
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline u16 pipe_full_bits(u16 hw_status_bits)
{
 return (hw_status_bits >> 10) & 0x3;
}
