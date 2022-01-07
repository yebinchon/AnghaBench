
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 unsigned int mda_num_columns ;
 int * mda_vram_base ;

__attribute__((used)) static inline u16 *mda_addr(unsigned int x, unsigned int y)
{
 return mda_vram_base + y * mda_num_columns + x;
}
