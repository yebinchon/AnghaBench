
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tdfx_par {scalar_t__ regbase_virt; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 tdfx_inl(struct tdfx_par *par, unsigned int reg)
{
 return readl(par->regbase_virt + reg);
}
