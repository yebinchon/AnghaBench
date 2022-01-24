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
struct vchiq_state {int dummy; } ;
struct vchiq_arm_state {scalar_t__ vc_suspend_state; scalar_t__ vc_resume_state; } ;

/* Variables and functions */
 scalar_t__ VC_RESUME_REQUESTED ; 
 scalar_t__ VC_SUSPEND_IDLE ; 
 struct vchiq_arm_state* FUNC0 (struct vchiq_state*) ; 
 scalar_t__ FUNC1 (struct vchiq_state*) ; 

__attribute__((used)) static inline int
FUNC2(struct vchiq_state *state)
{
	struct vchiq_arm_state *arm_state = FUNC0(state);

	return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
			(arm_state->vc_resume_state < VC_RESUME_REQUESTED) &&
			FUNC1(state);
}