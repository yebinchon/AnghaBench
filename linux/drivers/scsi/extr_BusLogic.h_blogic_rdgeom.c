
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blogic_adapter {scalar_t__ io_addr; } ;


 scalar_t__ BLOGIC_GEOMETRY_REG ;
 unsigned char inb (scalar_t__) ;

__attribute__((used)) static inline unsigned char blogic_rdgeom(struct blogic_adapter *adapter)
{
 return inb(adapter->io_addr + BLOGIC_GEOMETRY_REG);
}
