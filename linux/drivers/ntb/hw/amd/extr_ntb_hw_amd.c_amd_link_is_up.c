
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_dev {int peer_sta; int cntl_sta; } ;


 int AMD_LINK_DOWN_EVENT ;
 int AMD_LINK_UP_EVENT ;
 int AMD_PEER_D0_EVENT ;
 int AMD_PEER_RESET_EVENT ;
 int NTB_LNK_STA_ACTIVE (int ) ;

__attribute__((used)) static int amd_link_is_up(struct amd_ntb_dev *ndev)
{
 if (!ndev->peer_sta)
  return NTB_LNK_STA_ACTIVE(ndev->cntl_sta);

 if (ndev->peer_sta & AMD_LINK_UP_EVENT) {
  ndev->peer_sta = 0;
  return 1;
 }







 if (ndev->peer_sta & AMD_PEER_RESET_EVENT)
  ndev->peer_sta &= ~AMD_PEER_RESET_EVENT;
 else if (ndev->peer_sta & (AMD_PEER_D0_EVENT | AMD_LINK_DOWN_EVENT))
  ndev->peer_sta = 0;

 return 0;
}
