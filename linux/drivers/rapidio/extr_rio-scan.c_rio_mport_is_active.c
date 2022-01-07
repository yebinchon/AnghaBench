
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_mport {int phys_rmap; int index; scalar_t__ phys_efptr; } ;


 scalar_t__ RIO_PORT_N_ERR_STS_CSR (int ,int ) ;
 int RIO_PORT_N_ERR_STS_PORT_OK ;
 int rio_local_read_config_32 (struct rio_mport*,scalar_t__,int*) ;

__attribute__((used)) static int rio_mport_is_active(struct rio_mport *port)
{
 u32 result = 0;

 rio_local_read_config_32(port,
  port->phys_efptr +
   RIO_PORT_N_ERR_STS_CSR(port->index, port->phys_rmap),
  &result);
 return result & RIO_PORT_N_ERR_STS_PORT_OK;
}
