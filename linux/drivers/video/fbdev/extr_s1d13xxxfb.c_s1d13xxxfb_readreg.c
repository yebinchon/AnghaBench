
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct s1d13xxxfb_par {scalar_t__ regs; } ;


 int readb (scalar_t__) ;

__attribute__((used)) static inline u8
s1d13xxxfb_readreg(struct s1d13xxxfb_par *par, u16 regno)
{
 return readb(par->regs + regno);
}
