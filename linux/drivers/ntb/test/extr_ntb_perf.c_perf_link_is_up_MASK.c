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
typedef  int u64 ;
struct perf_peer {int /*<<< orphan*/  pidx; TYPE_1__* perf; } ;
struct TYPE_2__ {int /*<<< orphan*/  ntb; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool FUNC2(struct perf_peer *peer)
{
	u64 link;

	link = FUNC1(peer->perf->ntb, NULL, NULL);
	return !!(link & FUNC0(peer->pidx));
}