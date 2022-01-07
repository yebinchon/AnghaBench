
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnt_private {int abyCurrentNetAddr; int byTopCCKBasicRate; } ;
struct TYPE_3__ {int ra; void* frame_control; void* duration; } ;
struct vnt_cts_fb {int reserved2; TYPE_1__ data; void* duration_ba; void* cts_duration_ba_f1; void* cts_duration_ba_f0; int b; } ;
struct TYPE_4__ {int ra; void* frame_control; void* duration; } ;
struct vnt_cts {int reserved2; TYPE_2__ data; void* duration_ba; int b; } ;


 unsigned char AUTO_FB_NONE ;
 int CTSDUR_BA ;
 int CTSDUR_BA_F0 ;
 int CTSDUR_BA_F1 ;
 int IEEE80211_FTYPE_CTL ;
 int IEEE80211_STYPE_CTS ;
 int PK_TYPE_11B ;
 unsigned char PK_TYPE_11GA ;
 unsigned char PK_TYPE_11GB ;
 unsigned int TYPE_ATIMDMA ;
 unsigned int TYPE_BEACONDMA ;
 void* cpu_to_le16 (int) ;
 int ether_addr_copy (int ,int ) ;
 void* s_uGetRTSCTSDuration (struct vnt_private*,int ,unsigned int,unsigned char,unsigned short,int,unsigned char) ;
 int vnt_get_phy_field (struct vnt_private*,unsigned int,int ,int ,int *) ;

__attribute__((used)) static
void
s_vFillCTSHead(
 struct vnt_private *pDevice,
 unsigned int uDMAIdx,
 unsigned char byPktType,
 void *pvCTS,
 unsigned int cbFrameLength,
 bool bNeedAck,
 bool bDisCRC,
 unsigned short wCurrentRate,
 unsigned char byFBOption
)
{
 unsigned int uCTSFrameLen = 14;

 if (!pvCTS)
  return;

 if (bDisCRC) {



  uCTSFrameLen -= 4;
 }

 if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
  if (byFBOption != AUTO_FB_NONE && uDMAIdx != TYPE_ATIMDMA && uDMAIdx != TYPE_BEACONDMA) {

   struct vnt_cts_fb *buf = pvCTS;

   vnt_get_phy_field(pDevice, uCTSFrameLen,
       pDevice->byTopCCKBasicRate,
       PK_TYPE_11B, &buf->b);

   buf->duration_ba =
    s_uGetRTSCTSDuration(pDevice, CTSDUR_BA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);


   buf->cts_duration_ba_f0 =
    s_uGetRTSCTSDuration(pDevice, CTSDUR_BA_F0,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);


   buf->cts_duration_ba_f1 =
    s_uGetRTSCTSDuration(pDevice, CTSDUR_BA_F1,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);


   buf->data.duration = buf->duration_ba;

   buf->data.frame_control =
    cpu_to_le16(IEEE80211_FTYPE_CTL |
         IEEE80211_STYPE_CTS);

   buf->reserved2 = 0x0;

   ether_addr_copy(buf->data.ra,
     pDevice->abyCurrentNetAddr);
  } else {
   struct vnt_cts *buf = pvCTS;

   vnt_get_phy_field(pDevice, uCTSFrameLen,
       pDevice->byTopCCKBasicRate,
       PK_TYPE_11B, &buf->b);


   buf->duration_ba =
    s_uGetRTSCTSDuration(pDevice, CTSDUR_BA,
           cbFrameLength, byPktType,
           wCurrentRate, bNeedAck,
           byFBOption);


   buf->data.duration = buf->duration_ba;

   buf->data.frame_control =
    cpu_to_le16(IEEE80211_FTYPE_CTL |
         IEEE80211_STYPE_CTS);

   buf->reserved2 = 0x0;
   ether_addr_copy(buf->data.ra,
     pDevice->abyCurrentNetAddr);
  }
 }
}
