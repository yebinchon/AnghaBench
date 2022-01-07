
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int dummy; } ;


 int EIO ;
 int RIO_PORT_N_CTL_CSR (int ,int) ;
 int RIO_PORT_N_CTL_EN_RX ;
 int RIO_PORT_N_CTL_EN_TX ;
 int pr_debug (char*,int,int ,int ,int ) ;
 int rio_local_read_config_32 (struct rio_mport*,int,int*) ;
 int rio_local_write_config_32 (struct rio_mport*,int,int) ;
 int rio_mport_get_physefb (struct rio_mport*,int,int ,int ,int*) ;
 scalar_t__ rio_mport_read_config_32 (struct rio_mport*,int ,int ,int,int*) ;
 scalar_t__ rio_mport_write_config_32 (struct rio_mport*,int ,int ,int,int) ;

int rio_enable_rx_tx_port(struct rio_mport *port,
     int local, u16 destid,
     u8 hopcount, u8 port_num)
{
 return 0;
}
