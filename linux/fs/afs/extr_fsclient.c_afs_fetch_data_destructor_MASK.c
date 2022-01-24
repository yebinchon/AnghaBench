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
struct afs_read {int dummy; } ;
struct afs_call {struct afs_read* read_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct afs_call*) ; 
 int /*<<< orphan*/  FUNC1 (struct afs_read*) ; 

__attribute__((used)) static void FUNC2(struct afs_call *call)
{
	struct afs_read *req = call->read_request;

	FUNC1(req);
	FUNC0(call);
}