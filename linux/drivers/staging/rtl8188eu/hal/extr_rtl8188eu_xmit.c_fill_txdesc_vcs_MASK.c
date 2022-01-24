#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pkt_attrib {int vcs_mode; int bwmode; scalar_t__ ch_offset; scalar_t__ ht_en; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int CTS_2_SELF ; 
#define  CTS_TO_SELF 130 
 scalar_t__ HAL_PRIME_CHNL_OFFSET_DONT_CARE ; 
 scalar_t__ HAL_PRIME_CHNL_OFFSET_LOWER ; 
 scalar_t__ HAL_PRIME_CHNL_OFFSET_UPPER ; 
 int HT_CHANNEL_WIDTH_40 ; 
 int HW_RTS_EN ; 
#define  NONE_VCS 129 
#define  RTS_CTS 128 
 int RTS_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct pkt_attrib *pattrib, __le32 *pdw)
{
	switch (pattrib->vcs_mode) {
	case RTS_CTS:
		*pdw |= FUNC1(RTS_EN);
		break;
	case CTS_TO_SELF:
		*pdw |= FUNC1(CTS_2_SELF);
		break;
	case NONE_VCS:
	default:
		break;
	}
	if (pattrib->vcs_mode) {
		*pdw |= FUNC1(HW_RTS_EN);
		/*  Set RTS BW */
		if (pattrib->ht_en) {
			*pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ?	FUNC1(FUNC0(27)) : 0;

			if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
				*pdw |= FUNC1((0x01 << 28) & 0x30000000);
			else if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_UPPER)
				*pdw |= FUNC1((0x02 << 28) & 0x30000000);
			else if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_DONT_CARE)
				*pdw |= 0;
			else
				*pdw |= FUNC1((0x03 << 28) & 0x30000000);
		}
	}
}