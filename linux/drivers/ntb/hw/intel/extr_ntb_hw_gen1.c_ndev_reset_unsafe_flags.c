
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int topo; } ;
struct intel_ntb_dev {int hwerr_flags; int unsafe_flags; TYPE_1__ ntb; scalar_t__ unsafe_flags_ignore; } ;


 int NTB_HWERR_SB01BASE_LOCKUP ;
 int NTB_HWERR_SDOORBELL_LOCKUP ;
 int NTB_UNSAFE_DB ;
 int NTB_UNSAFE_SPAD ;
 int ntb_topo_is_b2b (int ) ;

__attribute__((used)) static inline void ndev_reset_unsafe_flags(struct intel_ntb_dev *ndev)
{
 ndev->unsafe_flags = 0;
 ndev->unsafe_flags_ignore = 0;


 if (ndev->hwerr_flags & NTB_HWERR_SDOORBELL_LOCKUP)
  if (!ntb_topo_is_b2b(ndev->ntb.topo))
   ndev->unsafe_flags |= NTB_UNSAFE_DB;


 if (ndev->hwerr_flags & NTB_HWERR_SB01BASE_LOCKUP) {
  ndev->unsafe_flags |= NTB_UNSAFE_DB;
  ndev->unsafe_flags |= NTB_UNSAFE_SPAD;
 }
}
