
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_20__ {scalar_t__ pre_chk; } ;
union cvmx_gmxx_rxx_frm_ctl {TYPE_5__ s; int u64; } ;
typedef int u8 ;
struct TYPE_24__ {int err_code; } ;
struct TYPE_14__ {TYPE_9__ snoip; } ;
struct TYPE_19__ {int ipprt; } ;
struct TYPE_23__ {int len; TYPE_4__ cn38xx; } ;
struct TYPE_21__ {int addr; } ;
struct TYPE_22__ {TYPE_6__ s; } ;
struct TYPE_16__ {int pknd; } ;
struct TYPE_17__ {TYPE_1__ cn68xx; } ;
struct TYPE_18__ {TYPE_2__ pip; } ;
struct TYPE_15__ {TYPE_10__ word2; TYPE_8__ word1; TYPE_7__ packet_ptr; TYPE_3__ word0; } ;
typedef TYPE_11__ cvmx_wqe_t ;


 int CVMX_GMXX_RXX_FRM_CTL (int,int) ;
 int OCTEON_FEATURE_PKND ;
 int cvm_oct_free_work (TYPE_11__*) ;
 int cvmx_helper_get_interface_index_num (int) ;
 int cvmx_helper_get_interface_num (int) ;
 int* cvmx_phys_to_ptr (int) ;
 int cvmx_read_csr (int ) ;
 scalar_t__ octeon_has_feature (int ) ;
 int printk_ratelimited (char*,int,...) ;

__attribute__((used)) static inline int cvm_oct_check_rcv_error(cvmx_wqe_t *work)
{
 int port;

 if (octeon_has_feature(OCTEON_FEATURE_PKND))
  port = work->word0.pip.cn68xx.pknd;
 else
  port = work->word1.cn38xx.ipprt;

 if ((work->word2.snoip.err_code == 10) && (work->word1.len <= 64)) {






 } else if (work->word2.snoip.err_code == 5 ||
     work->word2.snoip.err_code == 7) {
  int interface = cvmx_helper_get_interface_num(port);
  int index = cvmx_helper_get_interface_index_num(port);
  union cvmx_gmxx_rxx_frm_ctl gmxx_rxx_frm_ctl;

  gmxx_rxx_frm_ctl.u64 =
      cvmx_read_csr(CVMX_GMXX_RXX_FRM_CTL(index, interface));
  if (gmxx_rxx_frm_ctl.s.pre_chk == 0) {
   u8 *ptr =
       cvmx_phys_to_ptr(work->packet_ptr.s.addr);
   int i = 0;

   while (i < work->word1.len - 1) {
    if (*ptr != 0x55)
     break;
    ptr++;
    i++;
   }

   if (*ptr == 0xd5) {

    work->packet_ptr.s.addr += i + 1;
    work->word1.len -= i + 5;
   } else if ((*ptr & 0xf) == 0xd) {

    work->packet_ptr.s.addr += i;
    work->word1.len -= i + 4;
    for (i = 0; i < work->word1.len; i++) {
     *ptr =
         ((*ptr & 0xf0) >> 4) |
         ((*(ptr + 1) & 0xf) << 4);
     ptr++;
    }
   } else {
    printk_ratelimited("Port %d unknown preamble, packet dropped\n",
         port);
    cvm_oct_free_work(work);
    return 1;
   }
  }
 } else {
  printk_ratelimited("Port %d receive error code %d, packet dropped\n",
       port, work->word2.snoip.err_code);
  cvm_oct_free_work(work);
  return 1;
 }

 return 0;
}
