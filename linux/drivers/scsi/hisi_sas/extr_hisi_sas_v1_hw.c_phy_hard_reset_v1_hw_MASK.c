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
struct hisi_hba {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hisi_hba*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct hisi_hba *hisi_hba, int phy_no)
{
	FUNC0(hisi_hba, phy_no, 0);
	FUNC1(100);
	FUNC0(hisi_hba, phy_no, 1);
}