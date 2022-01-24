#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_peer {int /*<<< orphan*/ * inbuf; int /*<<< orphan*/  inbuf_xlat; int /*<<< orphan*/  inbuf_size; TYPE_1__* perf; int /*<<< orphan*/  gidx; int /*<<< orphan*/  pidx; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {TYPE_2__* ntb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct perf_peer *peer)
{
	if (!peer->inbuf)
		return;

	(void)FUNC1(peer->perf->ntb, peer->pidx, peer->gidx);
	FUNC0(&peer->perf->ntb->dev, peer->inbuf_size,
			  peer->inbuf, peer->inbuf_xlat);
	peer->inbuf = NULL;
}