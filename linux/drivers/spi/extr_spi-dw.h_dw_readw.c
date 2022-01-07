
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct dw_spi {scalar_t__ regs; } ;


 int __raw_readw (scalar_t__) ;

__attribute__((used)) static inline u16 dw_readw(struct dw_spi *dws, u32 offset)
{
 return __raw_readw(dws->regs + offset);
}
