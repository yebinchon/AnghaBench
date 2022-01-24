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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct us_data {scalar_t__ extra; } ;
struct ms_lib_type_extdat {int dummy; } ;
struct TYPE_2__ {int BytesPerSector; int /*<<< orphan*/ * blkext; int /*<<< orphan*/ * blkpag; int /*<<< orphan*/  PagesPerBlock; scalar_t__ wrtblk; } ;
struct ene_ub6250_info {TYPE_1__ MS_Lib; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct us_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct us_data*) ; 

__attribute__((used)) static int FUNC3(struct us_data *us)
{
	struct ene_ub6250_info *info = (struct ene_ub6250_info *) us->extra;

	info->MS_Lib.wrtblk = (u16)-1;

	info->MS_Lib.blkpag = FUNC0(info->MS_Lib.PagesPerBlock,
					    info->MS_Lib.BytesPerSector,
					    GFP_KERNEL);
	info->MS_Lib.blkext = FUNC0(info->MS_Lib.PagesPerBlock,
					    sizeof(struct ms_lib_type_extdat),
					    GFP_KERNEL);

	if ((info->MS_Lib.blkpag == NULL) || (info->MS_Lib.blkext == NULL)) {
		FUNC2(us);
		return (u32)-1;
	}

	FUNC1(us);

	return 0;
}