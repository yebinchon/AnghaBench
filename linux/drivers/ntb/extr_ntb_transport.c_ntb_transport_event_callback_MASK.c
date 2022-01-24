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
struct ntb_transport_ctx {int /*<<< orphan*/  link_cleanup; int /*<<< orphan*/  link_work; int /*<<< orphan*/  ndev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct ntb_transport_ctx *nt = data;

	if (FUNC0(nt->ndev, NULL, NULL) == 1)
		FUNC1(&nt->link_work, 0);
	else
		FUNC2(&nt->link_cleanup);
}