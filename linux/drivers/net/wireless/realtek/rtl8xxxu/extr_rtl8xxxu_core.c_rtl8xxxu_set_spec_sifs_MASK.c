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
typedef  int u16 ;
struct rtl8xxxu_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SPEC_SIFS ; 
 int SPEC_SIFS_CCK_MASK ; 
 int SPEC_SIFS_CCK_SHIFT ; 
 int SPEC_SIFS_OFDM_MASK ; 
 int SPEC_SIFS_OFDM_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8xxxu_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct rtl8xxxu_priv *priv, u16 cck, u16 ofdm)
{
	u16 val16;

	val16 = ((cck << SPEC_SIFS_CCK_SHIFT) & SPEC_SIFS_CCK_MASK) |
		((ofdm << SPEC_SIFS_OFDM_SHIFT) & SPEC_SIFS_OFDM_MASK);

	FUNC0(priv, REG_SPEC_SIFS, val16);
}