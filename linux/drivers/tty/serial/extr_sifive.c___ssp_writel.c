
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sifive_serial_port {int port; } ;


 int __ssp_early_writel (int ,int ,int *) ;

__attribute__((used)) static void __ssp_writel(u32 v, u16 offs, struct sifive_serial_port *ssp)
{
 __ssp_early_writel(v, offs, &ssp->port);
}
