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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct vnt_private {scalar_t__ byRFType; int* abyBBVGA; int basic_rates; unsigned char bySIFS; unsigned char byDIFS; scalar_t__ byEIFS; unsigned char bySlot; unsigned char byCWMaxMin; int /*<<< orphan*/  byPacketType; scalar_t__ PortOffset; scalar_t__ bShortSlotTime; } ;

/* Variables and functions */
 scalar_t__ BB_TYPE_11A ; 
 scalar_t__ BB_TYPE_11B ; 
 scalar_t__ BB_TYPE_11G ; 
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnt_private*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnt_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnt_private*,scalar_t__) ; 
 scalar_t__ C_EIFS ; 
 int C_SIFS_A ; 
 int C_SIFS_BG ; 
 int C_SLOT_LONG ; 
 int C_SLOT_SHORT ; 
 scalar_t__ MAC_REG_CWMAXMIN0 ; 
 scalar_t__ MAC_REG_DIFS ; 
 scalar_t__ MAC_REG_EIFS ; 
 scalar_t__ MAC_REG_SIFS ; 
 scalar_t__ MAC_REG_SLOT ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int RATE_54M ; 
 int RATE_6M ; 
 scalar_t__ RF_AIROHA7230 ; 
 scalar_t__ RF_RFMD2959 ; 
 scalar_t__ RF_UW2452 ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned char) ; 

bool FUNC7(struct vnt_private *priv, u8 bb_type)
{
	unsigned char byCWMaxMin = 0;
	unsigned char bySlot = 0;
	unsigned char bySIFS = 0;
	unsigned char byDIFS = 0;
	unsigned char byData;
	int i;

	/* Set SIFS, DIFS, EIFS, SlotTime, CwMin */
	if (bb_type == BB_TYPE_11A) {
		if (priv->byRFType == RF_AIROHA7230) {
			/* AL7230 use single PAPE and connect to PAPE_2.4G */
			FUNC5(priv->PortOffset, BB_TYPE_11G);
			priv->abyBBVGA[0] = 0x20;
			priv->abyBBVGA[2] = 0x10;
			priv->abyBBVGA[3] = 0x10;
			FUNC0(priv, 0xE7, &byData);
			if (byData == 0x1C)
				FUNC1(priv, 0xE7, priv->abyBBVGA[0]);

		} else if (priv->byRFType == RF_UW2452) {
			FUNC5(priv->PortOffset, BB_TYPE_11A);
			priv->abyBBVGA[0] = 0x18;
			FUNC0(priv, 0xE7, &byData);
			if (byData == 0x14) {
				FUNC1(priv, 0xE7, priv->abyBBVGA[0]);
				FUNC1(priv, 0xE1, 0x57);
			}
		} else {
			FUNC5(priv->PortOffset, BB_TYPE_11A);
		}
		FUNC1(priv, 0x88, 0x03);
		bySlot = C_SLOT_SHORT;
		bySIFS = C_SIFS_A;
		byDIFS = C_SIFS_A + 2 * C_SLOT_SHORT;
		byCWMaxMin = 0xA4;
	} else if (bb_type == BB_TYPE_11B) {
		FUNC5(priv->PortOffset, BB_TYPE_11B);
		if (priv->byRFType == RF_AIROHA7230) {
			priv->abyBBVGA[0] = 0x1C;
			priv->abyBBVGA[2] = 0x00;
			priv->abyBBVGA[3] = 0x00;
			FUNC0(priv, 0xE7, &byData);
			if (byData == 0x20)
				FUNC1(priv, 0xE7, priv->abyBBVGA[0]);

		} else if (priv->byRFType == RF_UW2452) {
			priv->abyBBVGA[0] = 0x14;
			FUNC0(priv, 0xE7, &byData);
			if (byData == 0x18) {
				FUNC1(priv, 0xE7, priv->abyBBVGA[0]);
				FUNC1(priv, 0xE1, 0xD3);
			}
		}
		FUNC1(priv, 0x88, 0x02);
		bySlot = C_SLOT_LONG;
		bySIFS = C_SIFS_BG;
		byDIFS = C_SIFS_BG + 2 * C_SLOT_LONG;
		byCWMaxMin = 0xA5;
	} else { /* PK_TYPE_11GA & PK_TYPE_11GB */
		FUNC5(priv->PortOffset, BB_TYPE_11G);
		if (priv->byRFType == RF_AIROHA7230) {
			priv->abyBBVGA[0] = 0x1C;
			priv->abyBBVGA[2] = 0x00;
			priv->abyBBVGA[3] = 0x00;
			FUNC0(priv, 0xE7, &byData);
			if (byData == 0x20)
				FUNC1(priv, 0xE7, priv->abyBBVGA[0]);

		} else if (priv->byRFType == RF_UW2452) {
			priv->abyBBVGA[0] = 0x14;
			FUNC0(priv, 0xE7, &byData);
			if (byData == 0x18) {
				FUNC1(priv, 0xE7, priv->abyBBVGA[0]);
				FUNC1(priv, 0xE1, 0xD3);
			}
		}
		FUNC1(priv, 0x88, 0x08);
		bySIFS = C_SIFS_BG;

		if (priv->bShortSlotTime) {
			bySlot = C_SLOT_SHORT;
			byDIFS = C_SIFS_BG + 2 * C_SLOT_SHORT;
		} else {
			bySlot = C_SLOT_LONG;
			byDIFS = C_SIFS_BG + 2 * C_SLOT_LONG;
		}

		byCWMaxMin = 0xa4;

		for (i = RATE_54M; i >= RATE_6M; i--) {
			if (priv->basic_rates & ((u32)(0x1 << i))) {
				byCWMaxMin |= 0x1;
				break;
			}
		}
	}

	if (priv->byRFType == RF_RFMD2959) {
		/*
		 * bcs TX_PE will reserve 3 us hardware's processing
		 * time here is 2 us.
		 */
		bySIFS -= 3;
		byDIFS -= 3;
		/*
		 * TX_PE will reserve 3 us for MAX2829 A mode only, it is for
		 * better TX throughput; MAC will need 2 us to process, so the
		 * SIFS, DIFS can be shorter by 2 us.
		 */
	}

	if (priv->bySIFS != bySIFS) {
		priv->bySIFS = bySIFS;
		FUNC6(priv->PortOffset + MAC_REG_SIFS, priv->bySIFS);
	}
	if (priv->byDIFS != byDIFS) {
		priv->byDIFS = byDIFS;
		FUNC6(priv->PortOffset + MAC_REG_DIFS, priv->byDIFS);
	}
	if (priv->byEIFS != C_EIFS) {
		priv->byEIFS = C_EIFS;
		FUNC6(priv->PortOffset + MAC_REG_EIFS, priv->byEIFS);
	}
	if (priv->bySlot != bySlot) {
		priv->bySlot = bySlot;
		FUNC6(priv->PortOffset + MAC_REG_SLOT, priv->bySlot);

		FUNC2(priv);
	}
	if (priv->byCWMaxMin != byCWMaxMin) {
		priv->byCWMaxMin = byCWMaxMin;
		FUNC6(priv->PortOffset + MAC_REG_CWMAXMIN0,
			     priv->byCWMaxMin);
	}

	priv->byPacketType = FUNC3(priv);

	FUNC4(priv, bb_type);

	return true;
}