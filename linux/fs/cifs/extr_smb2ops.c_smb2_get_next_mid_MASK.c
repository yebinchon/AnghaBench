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
struct TCP_Server_Info {int /*<<< orphan*/  CurrentMid; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  GlobalMid_Lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __u64
FUNC2(struct TCP_Server_Info *server)
{
	__u64 mid;
	/* for SMB2 we need the current value */
	FUNC0(&GlobalMid_Lock);
	mid = server->CurrentMid++;
	FUNC1(&GlobalMid_Lock);
	return mid;
}