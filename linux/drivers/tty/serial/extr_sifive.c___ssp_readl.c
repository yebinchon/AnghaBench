
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sifive_serial_port {int port; } ;


 int __ssp_early_readl (int *,int ) ;

__attribute__((used)) static u32 __ssp_readl(struct sifive_serial_port *ssp, u16 offs)
{
 return __ssp_early_readl(&ssp->port, offs);
}
