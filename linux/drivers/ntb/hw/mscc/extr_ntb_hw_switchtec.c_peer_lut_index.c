
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_ntb {int peer_nr_direct_mw; int nr_rsvd_luts; } ;



__attribute__((used)) static int peer_lut_index(struct switchtec_ntb *sndev, int mw_idx)
{
 return mw_idx - sndev->peer_nr_direct_mw + sndev->nr_rsvd_luts;
}
