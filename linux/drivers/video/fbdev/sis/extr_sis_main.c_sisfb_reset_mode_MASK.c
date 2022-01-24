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
struct sis_video_info {int /*<<< orphan*/  current_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sis_video_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_video_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sis_video_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sis_video_info*) ; 

__attribute__((used)) static int
FUNC4(struct sis_video_info *ivideo)
{
	if(FUNC2(ivideo, 0))
		return 1;

	FUNC3(ivideo);
	FUNC0(ivideo, ivideo->current_base);
	FUNC1(ivideo, ivideo->current_base);

	return 0;
}