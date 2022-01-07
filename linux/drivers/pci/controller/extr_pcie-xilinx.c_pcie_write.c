
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xilinx_pcie_port {scalar_t__ reg_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void pcie_write(struct xilinx_pcie_port *port, u32 val, u32 reg)
{
 writel(val, port->reg_base + reg);
}
