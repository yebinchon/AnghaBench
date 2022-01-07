
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int ta; int ra; void* frame_control; void* duration; } ;
struct vnt_rts_g_fb {TYPE_3__ data; void* duration_aa; void* rts_duration_aa_f1; void* rts_duration_ba_f1; void* rts_duration_aa_f0; void* rts_duration_ba_f0; void* duration_ba; void* duration_bb; int a; int b; } ;
struct TYPE_6__ {int ta; int ra; void* frame_control; void* duration; } ;
struct vnt_rts_g {TYPE_2__ data; void* duration_aa; void* duration_ba; void* duration_bb; int a; int b; } ;
struct TYPE_8__ {int ta; int ra; void* frame_control; void* duration; } ;
struct vnt_rts_ab {TYPE_4__ data; void* duration; int ab; } ;
struct TYPE_5__ {int ta; int ra; void* frame_control; void* duration; } ;
struct vnt_rts_a_fb {TYPE_1__ data; void* duration; void* rts_duration_f1; void* rts_duration_f0; int a; } ;
struct vnt_private {unsigned short byTopCCKBasicRate; unsigned short byTopOFDMBasicRate; } ;
struct ieee80211_hdr {int addr2; int addr1; } ;


 unsigned char AUTO_FB_NONE ;
 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_STYPE_RTS ;
 unsigned char PK_TYPE_11A ;
 unsigned char PK_TYPE_11B ;
 unsigned char PK_TYPE_11GA ;
 unsigned char PK_TYPE_11GB ;
 int RTSDUR_AA ;
 int RTSDUR_AA_F0 ;
 int RTSDUR_AA_F1 ;
 int RTSDUR_BA ;
 int RTSDUR_BA_F0 ;
 int RTSDUR_BA_F1 ;
 int RTSDUR_BB ;
 void* cpu_to_le16 (int) ;
 int ether_addr_copy (int ,int ) ;
 void* s_uGetRTSCTSDuration (struct vnt_private*,int ,unsigned int,unsigned char,unsigned short,int,unsigned char) ;
 int vnt_get_phy_field (struct vnt_private*,unsigned int,unsigned short,unsigned char,int *) ;

__attribute__((used)) static
void
s_vFillRTSHead(
 struct vnt_private *pDevice,
 unsigned char byPktType,
 void *pvRTS,
 unsigned int cbFrameLength,
 bool bNeedAck,
 bool bDisCRC,
 struct ieee80211_hdr *hdr,
 unsigned short wCurrentRate,
 unsigned char byFBOption
)
{
 unsigned int uRTSFrameLen = 20;

 if (!pvRTS)
  return;

 if (bDisCRC) {



  uRTSFrameLen -= 4;
 }





 if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
  if (byFBOption == AUTO_FB_NONE) {
   struct vnt_rts_g *buf = pvRTS;

   vnt_get_phy_field(pDevice, uRTSFrameLen,
       pDevice->byTopCCKBasicRate,
       PK_TYPE_11B, &buf->b);

   vnt_get_phy_field(pDevice, uRTSFrameLen,
       pDevice->byTopOFDMBasicRate,
       byPktType, &buf->a);

   buf->duration_bb =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_BB,
           cbFrameLength, PK_TYPE_11B,
           pDevice->byTopCCKBasicRate,
           bNeedAck, byFBOption);
   buf->duration_aa =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->duration_ba =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_BA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);

   buf->data.duration = buf->duration_aa;

   buf->data.frame_control =
     cpu_to_le16(IEEE80211_FTYPE_CTL |
          IEEE80211_STYPE_RTS);

   ether_addr_copy(buf->data.ra, hdr->addr1);
   ether_addr_copy(buf->data.ta, hdr->addr2);
  } else {
   struct vnt_rts_g_fb *buf = pvRTS;

   vnt_get_phy_field(pDevice, uRTSFrameLen,
       pDevice->byTopCCKBasicRate,
       PK_TYPE_11B, &buf->b);

   vnt_get_phy_field(pDevice, uRTSFrameLen,
       pDevice->byTopOFDMBasicRate,
       byPktType, &buf->a);

   buf->duration_bb =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_BB,
           cbFrameLength, PK_TYPE_11B,
           pDevice->byTopCCKBasicRate,
           bNeedAck, byFBOption);
   buf->duration_aa =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->duration_ba =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_BA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->rts_duration_ba_f0 =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_BA_F0,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->rts_duration_aa_f0 =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F0,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->rts_duration_ba_f1 =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_BA_F1,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->rts_duration_aa_f1 =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F1,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->data.duration = buf->duration_aa;

   buf->data.frame_control =
     cpu_to_le16(IEEE80211_FTYPE_CTL |
          IEEE80211_STYPE_RTS);

   ether_addr_copy(buf->data.ra, hdr->addr1);
   ether_addr_copy(buf->data.ta, hdr->addr2);
  }
 } else if (byPktType == PK_TYPE_11A) {
  if (byFBOption == AUTO_FB_NONE) {
   struct vnt_rts_ab *buf = pvRTS;

   vnt_get_phy_field(pDevice, uRTSFrameLen,
       pDevice->byTopOFDMBasicRate,
       byPktType, &buf->ab);

   buf->duration =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->data.duration = buf->duration;

   buf->data.frame_control =
     cpu_to_le16(IEEE80211_FTYPE_CTL |
          IEEE80211_STYPE_RTS);

   ether_addr_copy(buf->data.ra, hdr->addr1);
   ether_addr_copy(buf->data.ta, hdr->addr2);
  } else {
   struct vnt_rts_a_fb *buf = pvRTS;

   vnt_get_phy_field(pDevice, uRTSFrameLen,
       pDevice->byTopOFDMBasicRate,
       byPktType, &buf->a);

   buf->duration =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->rts_duration_f0 =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F0,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->rts_duration_f1 =
    s_uGetRTSCTSDuration(pDevice, RTSDUR_AA_F1,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);
   buf->data.duration = buf->duration;

   buf->data.frame_control =
     cpu_to_le16(IEEE80211_FTYPE_CTL |
          IEEE80211_STYPE_RTS);

   ether_addr_copy(buf->data.ra, hdr->addr1);
   ether_addr_copy(buf->data.ta, hdr->addr2);
  }
 } else if (byPktType == PK_TYPE_11B) {
  struct vnt_rts_ab *buf = pvRTS;

  vnt_get_phy_field(pDevice, uRTSFrameLen,
      pDevice->byTopCCKBasicRate,
      PK_TYPE_11B, &buf->ab);

  buf->duration =
   s_uGetRTSCTSDuration(pDevice, RTSDUR_BB, cbFrameLength,
          byPktType, wCurrentRate, bNeedAck,
          byFBOption);

  buf->data.duration = buf->duration;

  buf->data.frame_control =
   cpu_to_le16(IEEE80211_FTYPE_CTL | IEEE80211_STYPE_RTS);

  ether_addr_copy(buf->data.ra, hdr->addr1);
  ether_addr_copy(buf->data.ta, hdr->addr2);
 }
}
