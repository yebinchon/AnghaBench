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
struct rndis_params {int /*<<< orphan*/  media_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RNDIS_MEDIA_STATE_CONNECTED ; 
 int /*<<< orphan*/  RNDIS_STATUS_MEDIA_CONNECT ; 
 int FUNC0 (struct rndis_params*,int /*<<< orphan*/ ) ; 

int FUNC1(struct rndis_params *params)
{
	params->media_state = RNDIS_MEDIA_STATE_CONNECTED;
	return FUNC0(params, RNDIS_STATUS_MEDIA_CONNECT);
}