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
struct mmphw_ctrl {int dummy; } ;
struct mmp_overlay {int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct mmphw_ctrl* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct mmphw_ctrl *FUNC1(struct mmp_overlay *overlay)
{
	return FUNC0(overlay->path);
}