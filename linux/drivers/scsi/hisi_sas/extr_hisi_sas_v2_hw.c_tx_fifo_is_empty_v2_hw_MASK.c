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
typedef  int u32 ;
struct hisi_hba {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TX_DFX1 ; 
 int FUNC1 (struct hisi_hba*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct hisi_hba *hisi_hba, int phy_no)
{
	u32 dfx_val;

	dfx_val = FUNC1(hisi_hba, phy_no, DMA_TX_DFX1);

	if (dfx_val & FUNC0(16))
		return false;

	return true;
}