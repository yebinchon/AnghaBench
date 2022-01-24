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
struct pqi_ctrl_info {int /*<<< orphan*/  num_blocked_threads; int /*<<< orphan*/  num_busy_threads; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static inline void FUNC2(struct pqi_ctrl_info *ctrl_info)
{
	while (FUNC0(&ctrl_info->num_busy_threads) >
		FUNC0(&ctrl_info->num_blocked_threads))
		FUNC1(1000, 2000);
}