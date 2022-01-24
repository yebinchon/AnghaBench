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
struct hantro_dev {TYPE_1__* variant; } ;
struct TYPE_2__ {int /*<<< orphan*/  dec_fmts; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEDIA_ENT_F_PROC_VIDEO_DECODER ; 
 int FUNC0 (struct hantro_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct hantro_dev *vpu)
{
	if (!vpu->variant->dec_fmts)
		return 0;

	return FUNC0(vpu, MEDIA_ENT_F_PROC_VIDEO_DECODER);
}