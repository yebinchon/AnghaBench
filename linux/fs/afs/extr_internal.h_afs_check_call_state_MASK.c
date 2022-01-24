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
struct afs_call {int /*<<< orphan*/  state; } ;
typedef  enum afs_call_state { ____Placeholder_afs_call_state } afs_call_state ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(struct afs_call *call,
					enum afs_call_state state)
{
	return FUNC0(call->state) == state;
}