
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long long port_bit; } ;
union cvmx_ipd_sub_port_fcs {void* u64; TYPE_2__ s; } ;
union cvmx_gmxx_rxx_int_reg {void* u64; } ;
struct TYPE_3__ {int pre_chk; } ;
union cvmx_gmxx_rxx_frm_ctl {void* u64; TYPE_1__ s; } ;
struct octeon_ethernet {unsigned long long port; } ;


 int CVMX_GMXX_RXX_FRM_CTL (int,int) ;
 int CVMX_GMXX_RXX_INT_REG (int,int) ;
 int CVMX_IPD_SUB_PORT_FCS ;
 int INDEX (unsigned long long) ;
 int INTERFACE (unsigned long long) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

__attribute__((used)) static void cvm_oct_set_hw_preamble(struct octeon_ethernet *priv, bool enable)
{
 union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;
 union cvmx_ipd_sub_port_fcs ipd_sub_port_fcs;
 union cvmx_gmxx_rxx_int_reg gmxx_rxx_int_reg;
 int interface = INTERFACE(priv->port);
 int index = INDEX(priv->port);


 gmxx_rxx_frm_ctl.u64 = cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index,
           interface));
 gmxx_rxx_frm_ctl.s.pre_chk = enable;
 cvmx_write_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface),
         gmxx_rxx_frm_ctl.u64);


 ipd_sub_port_fcs.u64 = cvmx_read_csr(CVMX_IPD_SUB_PORT_FCS);
 if (enable)
  ipd_sub_port_fcs.s.port_bit |= 1ull << priv->port;
 else
  ipd_sub_port_fcs.s.port_bit &=
     0xffffffffull ^ (1ull << priv->port);
 cvmx_write_csr(CVMX_IPD_SUB_PORT_FCS, ipd_sub_port_fcs.u64);


 gmxx_rxx_int_reg.u64 = cvmx_read_csr(CVMX_GMXX_RXX_INT_REG(index,
           interface));
 cvmx_write_csr(CVMX_GMXX_RXX_INT_REG(index, interface),
         gmxx_rxx_int_reg.u64);
}
