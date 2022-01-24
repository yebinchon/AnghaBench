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
struct tb {int /*<<< orphan*/  wq; } ;
struct icm {int /*<<< orphan*/  rescan_work; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct icm* FUNC3 (struct tb*) ; 

__attribute__((used)) static void FUNC4(struct tb *tb)
{
	struct icm *icm = FUNC3(tb);

	if (FUNC0(&icm->rescan_work))
		FUNC1(tb->wq, &icm->rescan_work,
				 FUNC2(500));
}