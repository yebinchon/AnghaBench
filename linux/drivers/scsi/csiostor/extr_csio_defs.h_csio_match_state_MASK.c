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
typedef  scalar_t__ csio_sm_state_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 

__attribute__((used)) static inline bool
FUNC1(void *smp, void *state)
{
	return (FUNC0(smp) == (csio_sm_state_t)state);
}