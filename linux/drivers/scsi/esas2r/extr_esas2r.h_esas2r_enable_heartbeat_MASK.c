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
struct esas2r_adapter {int /*<<< orphan*/  flags; TYPE_1__* nvram; } ;
struct TYPE_2__ {int options2; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CHPRST_PENDING ; 
 int /*<<< orphan*/  AF_DEGRADED_MODE ; 
 int /*<<< orphan*/  AF_HEARTBEAT_ENB ; 
 int SASNVR2_HEARTBEAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct esas2r_adapter *a)
{
	if (!FUNC2(AF_DEGRADED_MODE, &a->flags) &&
	    !FUNC2(AF_CHPRST_PENDING, &a->flags) &&
	    (a->nvram->options2 & SASNVR2_HEARTBEAT))
		FUNC1(AF_HEARTBEAT_ENB, &a->flags);
	else
		FUNC0(AF_HEARTBEAT_ENB, &a->flags);
}