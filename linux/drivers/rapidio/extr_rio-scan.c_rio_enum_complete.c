
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_mport {scalar_t__ phys_efptr; } ;


 scalar_t__ RIO_PORT_GEN_CTL_CSR ;
 int RIO_PORT_GEN_DISCOVERED ;
 int rio_local_read_config_32 (struct rio_mport*,scalar_t__,int*) ;

__attribute__((used)) static int rio_enum_complete(struct rio_mport *port)
{
 u32 regval;

 rio_local_read_config_32(port, port->phys_efptr + RIO_PORT_GEN_CTL_CSR,
     &regval);
 return (regval & RIO_PORT_GEN_DISCOVERED) ? 1 : 0;
}
