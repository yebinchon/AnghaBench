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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rndis_params {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct rndis_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct rndis_params*,int /*<<< orphan*/ *) ; 

void FUNC2(struct rndis_params *params)
{
	u8 *buf;
	u32 length;

	if (!params)
		return;
	params->state = RNDIS_UNINITIALIZED;

	/* drain the response queue */
	while ((buf = FUNC1(params, &length)))
		FUNC0(params, buf);
}