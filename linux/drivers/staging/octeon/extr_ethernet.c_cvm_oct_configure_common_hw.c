
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pkt_lend; int wqe_lend; } ;
union cvmx_ipd_ctl_status {int u64; TYPE_1__ s; } ;


 scalar_t__ CVMX_FPA_OUTPUT_BUFFER_POOL ;
 int CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE ;
 scalar_t__ CVMX_FPA_PACKET_POOL ;
 int CVMX_FPA_PACKET_POOL_SIZE ;
 scalar_t__ CVMX_FPA_WQE_POOL ;
 int CVMX_FPA_WQE_POOL_SIZE ;
 int CVMX_IPD_CTL_STATUS ;
 int cvm_oct_mem_fill_fpa (scalar_t__,int ,int) ;
 int cvmx_fpa_enable () ;
 int cvmx_helper_setup_red (int,int) ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;
 int num_packet_buffers ;

__attribute__((used)) static void cvm_oct_configure_common_hw(void)
{

 cvmx_fpa_enable();
 cvm_oct_mem_fill_fpa(CVMX_FPA_PACKET_POOL, CVMX_FPA_PACKET_POOL_SIZE,
        num_packet_buffers);
 cvm_oct_mem_fill_fpa(CVMX_FPA_WQE_POOL, CVMX_FPA_WQE_POOL_SIZE,
        num_packet_buffers);
 if (CVMX_FPA_OUTPUT_BUFFER_POOL != CVMX_FPA_PACKET_POOL)
  cvm_oct_mem_fill_fpa(CVMX_FPA_OUTPUT_BUFFER_POOL,
         CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, 1024);
 cvmx_helper_setup_red(num_packet_buffers / 4, num_packet_buffers / 8);
}
