
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct zynqmp_qspi {scalar_t__ regs; } ;


 scalar_t__ readl_relaxed (scalar_t__) ;

__attribute__((used)) static u32 zynqmp_gqspi_read(struct zynqmp_qspi *xqspi, u32 offset)
{
 return readl_relaxed(xqspi->regs + offset);
}
