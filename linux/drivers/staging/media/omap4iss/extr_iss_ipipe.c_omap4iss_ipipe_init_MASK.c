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
struct iss_ipipe_device {int /*<<< orphan*/  wait; int /*<<< orphan*/  state; } ;
struct iss_device {struct iss_ipipe_device ipipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISS_PIPELINE_STREAM_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct iss_ipipe_device*) ; 

int FUNC2(struct iss_device *iss)
{
	struct iss_ipipe_device *ipipe = &iss->ipipe;

	ipipe->state = ISS_PIPELINE_STREAM_STOPPED;
	FUNC0(&ipipe->wait);

	return FUNC1(ipipe);
}