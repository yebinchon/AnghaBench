#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ta; int /*<<< orphan*/  ra; void* frame_control; void* duration; } ;
struct vnt_rts_g_fb {TYPE_3__ data; void* duration_aa; void* rts_duration_aa_f1; void* rts_duration_ba_f1; void* rts_duration_aa_f0; void* rts_duration_ba_f0; void* duration_ba; void* duration_bb; int /*<<< orphan*/  a; int /*<<< orphan*/  b; } ;
struct TYPE_6__ {int /*<<< orphan*/  ta; int /*<<< orphan*/  ra; void* frame_control; void* duration; } ;
struct vnt_rts_g {TYPE_2__ data; void* duration_aa; void* duration_ba; void* duration_bb; int /*<<< orphan*/  a; int /*<<< orphan*/  b; } ;
struct TYPE_8__ {int /*<<< orphan*/  ta; int /*<<< orphan*/  ra; void* frame_control; void* duration; } ;
struct vnt_rts_ab {TYPE_4__ data; void* duration; int /*<<< orphan*/  ab; } ;
struct TYPE_5__ {int /*<<< orphan*/  ta; int /*<<< orphan*/  ra; void* frame_control; void* duration; } ;
struct vnt_rts_a_fb {TYPE_1__ data; void* duration; void* rts_duration_f1; void* rts_duration_f0; int /*<<< orphan*/  a; } ;
struct vnt_private {unsigned short byTopCCKBasicRate; unsigned short byTopOFDMBasicRate; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; } ;

/* Variables and functions */
 unsigned char AUTO_FB_NONE ; 
 int IEEE80211_FTYPE_CTL ; 
 int IEEE80211_STYPE_RTS ; 
 unsigned char PK_TYPE_11A ; 
 unsigned char PK_TYPE_11B ; 
 unsigned char PK_TYPE_11GA ; 
 unsigned char PK_TYPE_11GB ; 
 int /*<<< orphan*/  RTSDUR_AA ; 
 int /*<<< orphan*/  RTSDUR_AA_F0 ; 
 int /*<<< orphan*/  RTSDUR_AA_F1 ; 
 int /*<<< orphan*/  RTSDUR_BA ; 
 int /*<<< orphan*/  RTSDUR_BA_F0 ; 
 int /*<<< orphan*/  RTSDUR_BA_F1 ; 
 int /*<<< orphan*/  RTSDUR_BB ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct vnt_private*,int /*<<< orphan*/ ,unsigned int,unsigned char,unsigned short,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*,unsigned int,unsigned short,unsigned char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
void
FUNC4(
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
		/* When CRCDIS bit is on, H/W forgot to generate FCS for
		 * RTS frame, in this case we need to decrease its length by 4.
		 */
		uRTSFrameLen -= 4;
	}

	/* Note: So far RTSHead doesn't appear in ATIM & Beacom DMA,
	 * so we don't need to take them into account.
	 * Otherwise, we need to modify codes for them.
	 */
	if (byPktType == PK_TYPE_11GB || byPktType == PK_TYPE_11GA) {
		if (byFBOption == AUTO_FB_NONE) {
			struct vnt_rts_g *buf = pvRTS;
			/* Get SignalField, ServiceField & Length */
			FUNC3(pDevice, uRTSFrameLen,
					  pDevice->byTopCCKBasicRate,
					  PK_TYPE_11B, &buf->b);

			FUNC3(pDevice, uRTSFrameLen,
					  pDevice->byTopOFDMBasicRate,
					  byPktType, &buf->a);
			/* Get Duration */
			buf->duration_bb =
				FUNC2(pDevice, RTSDUR_BB,
						     cbFrameLength, PK_TYPE_11B,
						     pDevice->byTopCCKBasicRate,
						     bNeedAck, byFBOption);
			buf->duration_aa =
				FUNC2(pDevice, RTSDUR_AA,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->duration_ba =
				FUNC2(pDevice, RTSDUR_BA,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);

			buf->data.duration = buf->duration_aa;
			/* Get RTS Frame body */
			buf->data.frame_control =
					FUNC0(IEEE80211_FTYPE_CTL |
						    IEEE80211_STYPE_RTS);

			FUNC1(buf->data.ra, hdr->addr1);
			FUNC1(buf->data.ta, hdr->addr2);
		} else {
			struct vnt_rts_g_fb *buf = pvRTS;
			/* Get SignalField, ServiceField & Length */
			FUNC3(pDevice, uRTSFrameLen,
					  pDevice->byTopCCKBasicRate,
					  PK_TYPE_11B, &buf->b);

			FUNC3(pDevice, uRTSFrameLen,
					  pDevice->byTopOFDMBasicRate,
					  byPktType, &buf->a);
			/* Get Duration */
			buf->duration_bb =
				FUNC2(pDevice, RTSDUR_BB,
						     cbFrameLength, PK_TYPE_11B,
						     pDevice->byTopCCKBasicRate,
						     bNeedAck, byFBOption);
			buf->duration_aa =
				FUNC2(pDevice, RTSDUR_AA,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->duration_ba =
				FUNC2(pDevice, RTSDUR_BA,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->rts_duration_ba_f0 =
				FUNC2(pDevice, RTSDUR_BA_F0,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->rts_duration_aa_f0 =
				FUNC2(pDevice, RTSDUR_AA_F0,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->rts_duration_ba_f1 =
				FUNC2(pDevice, RTSDUR_BA_F1,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->rts_duration_aa_f1 =
				FUNC2(pDevice, RTSDUR_AA_F1,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->data.duration = buf->duration_aa;
			/* Get RTS Frame body */
			buf->data.frame_control =
					FUNC0(IEEE80211_FTYPE_CTL |
						    IEEE80211_STYPE_RTS);

			FUNC1(buf->data.ra, hdr->addr1);
			FUNC1(buf->data.ta, hdr->addr2);
		} /* if (byFBOption == AUTO_FB_NONE) */
	} else if (byPktType == PK_TYPE_11A) {
		if (byFBOption == AUTO_FB_NONE) {
			struct vnt_rts_ab *buf = pvRTS;
			/* Get SignalField, ServiceField & Length */
			FUNC3(pDevice, uRTSFrameLen,
					  pDevice->byTopOFDMBasicRate,
					  byPktType, &buf->ab);
			/* Get Duration */
			buf->duration =
				FUNC2(pDevice, RTSDUR_AA,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->data.duration = buf->duration;
			/* Get RTS Frame body */
			buf->data.frame_control =
					FUNC0(IEEE80211_FTYPE_CTL |
						    IEEE80211_STYPE_RTS);

			FUNC1(buf->data.ra, hdr->addr1);
			FUNC1(buf->data.ta, hdr->addr2);
		} else {
			struct vnt_rts_a_fb *buf = pvRTS;
			/* Get SignalField, ServiceField & Length */
			FUNC3(pDevice, uRTSFrameLen,
					  pDevice->byTopOFDMBasicRate,
					  byPktType, &buf->a);
			/* Get Duration */
			buf->duration =
				FUNC2(pDevice, RTSDUR_AA,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->rts_duration_f0 =
				FUNC2(pDevice, RTSDUR_AA_F0,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->rts_duration_f1 =
				FUNC2(pDevice, RTSDUR_AA_F1,
						     cbFrameLength, byPktType,
						     wCurrentRate, bNeedAck,
						     byFBOption);
			buf->data.duration = buf->duration;
			/* Get RTS Frame body */
			buf->data.frame_control =
					FUNC0(IEEE80211_FTYPE_CTL |
						    IEEE80211_STYPE_RTS);

			FUNC1(buf->data.ra, hdr->addr1);
			FUNC1(buf->data.ta, hdr->addr2);
		}
	} else if (byPktType == PK_TYPE_11B) {
		struct vnt_rts_ab *buf = pvRTS;
		/* Get SignalField, ServiceField & Length */
		FUNC3(pDevice, uRTSFrameLen,
				  pDevice->byTopCCKBasicRate,
				  PK_TYPE_11B, &buf->ab);
		/* Get Duration */
		buf->duration =
			FUNC2(pDevice, RTSDUR_BB, cbFrameLength,
					     byPktType, wCurrentRate, bNeedAck,
					     byFBOption);

		buf->data.duration = buf->duration;
		/* Get RTS Frame body */
		buf->data.frame_control =
			FUNC0(IEEE80211_FTYPE_CTL | IEEE80211_STYPE_RTS);

		FUNC1(buf->data.ra, hdr->addr1);
		FUNC1(buf->data.ta, hdr->addr2);
	}
}