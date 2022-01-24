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
struct work_struct {int dummy; } ;
struct qeth_l3_ip_event_work {int /*<<< orphan*/  addr; int /*<<< orphan*/  card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct work_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct qeth_l3_ip_event_work* FUNC2 (struct work_struct*) ; 

__attribute__((used)) static void FUNC3(struct work_struct *work)
{
	struct qeth_l3_ip_event_work *ip_work = FUNC2(work);

	FUNC1(ip_work->card, &ip_work->addr, false);
	FUNC0(work);
}