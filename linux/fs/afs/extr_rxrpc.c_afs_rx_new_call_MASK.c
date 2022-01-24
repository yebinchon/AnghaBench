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
struct sock {int dummy; } ;
struct rxrpc_call {int dummy; } ;
struct afs_net {int /*<<< orphan*/  charge_preallocation_work; } ;

/* Variables and functions */
 struct afs_net* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  afs_wq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct sock *sk, struct rxrpc_call *rxcall,
			    unsigned long user_call_ID)
{
	struct afs_net *net = FUNC0(sk);

	FUNC1(afs_wq, &net->charge_preallocation_work);
}