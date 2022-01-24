#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct TYPE_2__ {int /*<<< orphan*/ * blkext; int /*<<< orphan*/ * blkpag; scalar_t__ wrtblk; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_ub6250_info*) ; 

__attribute__((used)) static void FUNC2(struct us_data *us)
{
	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;
	info->MS_Lib.wrtblk = (u16)-1; /* set to -1 */

	/* memset((fdoExt)->MS_Lib.pagemap, 0, sizeof((fdoExt)->MS_Lib.pagemap)) */

	FUNC1(info); /* (pdx)->MS_Lib.pagemap memset 0 in ms.h */

	if (info->MS_Lib.blkpag) {
		FUNC0(info->MS_Lib.blkpag);  /* Arnold test ... */
		info->MS_Lib.blkpag = NULL;
	}

	if (info->MS_Lib.blkext) {
		FUNC0(info->MS_Lib.blkext);  /* Arnold test ... */
		info->MS_Lib.blkext = NULL;
	}
}