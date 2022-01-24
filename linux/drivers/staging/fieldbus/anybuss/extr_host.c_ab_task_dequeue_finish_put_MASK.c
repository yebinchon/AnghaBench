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
typedef  int /*<<< orphan*/  t ;
struct kfifo {int dummy; } ;
struct anybuss_host {int dummy; } ;
struct ab_task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ab_task*,struct anybuss_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct ab_task*) ; 
 int FUNC3 (struct kfifo*,struct ab_task**,int) ; 

__attribute__((used)) static void
FUNC4(struct kfifo *q, struct anybuss_host *cd)
{
	int ret;
	struct ab_task *t;

	ret = FUNC3(q, &t, sizeof(t));
	FUNC0(!ret);
	FUNC1(t, cd);
	FUNC2(t);
}