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
union vnt_phy_field_swap {int /*<<< orphan*/  field_write; int /*<<< orphan*/ * swap; int /*<<< orphan*/  field_read; } ;
typedef  int /*<<< orphan*/  u8 ;
struct vnt_private {int /*<<< orphan*/  lock; scalar_t__ PortOffset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnt_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ MAC_REG_RSPINF_A_12 ; 
 scalar_t__ MAC_REG_RSPINF_A_18 ; 
 scalar_t__ MAC_REG_RSPINF_A_24 ; 
 scalar_t__ MAC_REG_RSPINF_A_36 ; 
 scalar_t__ MAC_REG_RSPINF_A_48 ; 
 scalar_t__ MAC_REG_RSPINF_A_54 ; 
 scalar_t__ MAC_REG_RSPINF_A_6 ; 
 scalar_t__ MAC_REG_RSPINF_A_72 ; 
 scalar_t__ MAC_REG_RSPINF_A_9 ; 
 scalar_t__ MAC_REG_RSPINF_B_1 ; 
 scalar_t__ MAC_REG_RSPINF_B_11 ; 
 scalar_t__ MAC_REG_RSPINF_B_2 ; 
 scalar_t__ MAC_REG_RSPINF_B_5 ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,unsigned char) ; 
 int /*<<< orphan*/  PK_TYPE_11B ; 
 int /*<<< orphan*/  RATE_11M ; 
 int /*<<< orphan*/  RATE_12M ; 
 int /*<<< orphan*/  RATE_18M ; 
 int /*<<< orphan*/  RATE_1M ; 
 int /*<<< orphan*/  RATE_24M ; 
 int /*<<< orphan*/  RATE_2M ; 
 int /*<<< orphan*/  RATE_36M ; 
 int /*<<< orphan*/  RATE_48M ; 
 int /*<<< orphan*/  RATE_54M ; 
 int /*<<< orphan*/  RATE_5M ; 
 int /*<<< orphan*/  RATE_6M ; 
 int /*<<< orphan*/  RATE_9M ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct vnt_private*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC12(struct vnt_private *priv, u8 bb_type)
{
	union vnt_phy_field_swap phy;
	unsigned char byTxRate, byRsvTime;      /* For OFDM */
	unsigned long flags;

	FUNC8(&priv->lock, flags);

	/* Set to Page1 */
	FUNC3(priv->PortOffset);

	/* RSPINF_b_1 */
	FUNC11(priv, 14,
			  FUNC0(priv, RATE_1M),
			  PK_TYPE_11B, &phy.field_read);

	 /* swap over to get correct write order */
	FUNC10(phy.swap[0], phy.swap[1]);

	FUNC5(priv->PortOffset + MAC_REG_RSPINF_B_1, phy.field_write);

	/* RSPINF_b_2 */
	FUNC11(priv, 14,
			  FUNC0(priv, RATE_2M),
			  PK_TYPE_11B, &phy.field_read);

	FUNC10(phy.swap[0], phy.swap[1]);

	FUNC5(priv->PortOffset + MAC_REG_RSPINF_B_2, phy.field_write);

	/* RSPINF_b_5 */
	FUNC11(priv, 14,
			  FUNC0(priv, RATE_5M),
			  PK_TYPE_11B, &phy.field_read);

	FUNC10(phy.swap[0], phy.swap[1]);

	FUNC5(priv->PortOffset + MAC_REG_RSPINF_B_5, phy.field_write);

	/* RSPINF_b_11 */
	FUNC11(priv, 14,
			  FUNC0(priv, RATE_11M),
			  PK_TYPE_11B, &phy.field_read);

	FUNC10(phy.swap[0], phy.swap[1]);

	FUNC5(priv->PortOffset + MAC_REG_RSPINF_B_11, phy.field_write);

	/* RSPINF_a_6 */
	FUNC7(RATE_6M,
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_6,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_9 */
	FUNC7(RATE_9M,
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_9,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_12 */
	FUNC7(RATE_12M,
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_12,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_18 */
	FUNC7(RATE_18M,
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_18,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_24 */
	FUNC7(RATE_24M,
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_24,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_36 */
	FUNC7(FUNC1(
							   (void *)priv,
							   RATE_36M),
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_36,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_48 */
	FUNC7(FUNC1(
							   (void *)priv,
							   RATE_48M),
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_48,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_54 */
	FUNC7(FUNC1(
							   (void *)priv,
							   RATE_54M),
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_54,
		     FUNC4(byTxRate, byRsvTime));
	/* RSPINF_a_72 */
	FUNC7(FUNC1(
							   (void *)priv,
							   RATE_54M),
				   bb_type,
				   &byTxRate,
				   &byRsvTime);
	FUNC6(priv->PortOffset + MAC_REG_RSPINF_A_72,
		     FUNC4(byTxRate, byRsvTime));
	/* Set to Page0 */
	FUNC2(priv->PortOffset);

	FUNC9(&priv->lock, flags);
}