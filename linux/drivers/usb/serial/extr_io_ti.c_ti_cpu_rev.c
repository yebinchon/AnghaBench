
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_ti_manuf_descriptor {int CpuRev_BoardRev; } ;


 int TI_GET_CPU_REVISION (int ) ;

__attribute__((used)) static int ti_cpu_rev(struct edge_ti_manuf_descriptor *desc)
{
 return TI_GET_CPU_REVISION(desc->CpuRev_BoardRev);
}
