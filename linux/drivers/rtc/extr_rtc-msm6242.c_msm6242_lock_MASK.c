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
struct msm6242_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSM6242_CD ; 
 int MSM6242_CD_BUSY ; 
 int /*<<< orphan*/  MSM6242_CD_HOLD ; 
 int /*<<< orphan*/  FUNC0 (struct msm6242_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct msm6242_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm6242_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct msm6242_priv *priv)
{
	int cnt = 5;

	FUNC2(priv, MSM6242_CD_HOLD, MSM6242_CD);

	while ((FUNC1(priv, MSM6242_CD) & MSM6242_CD_BUSY) && cnt) {
		FUNC0(priv, MSM6242_CD_HOLD, MSM6242_CD);
		FUNC4(70);
		FUNC2(priv, MSM6242_CD_HOLD, MSM6242_CD);
		cnt--;
	}

	if (!cnt)
		FUNC3("timed out waiting for RTC (0x%x)\n",
			FUNC1(priv, MSM6242_CD));
}