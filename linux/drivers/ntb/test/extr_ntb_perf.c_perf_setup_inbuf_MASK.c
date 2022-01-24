#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_peer {scalar_t__ inbuf_size; int /*<<< orphan*/  inbuf_xlat; int /*<<< orphan*/  gidx; int /*<<< orphan*/  pidx; int /*<<< orphan*/  inbuf; struct perf_ctx* perf; } ;
struct perf_ctx {TYPE_1__* ntb; int /*<<< orphan*/  gidx; } ;
typedef  scalar_t__ resource_size_t ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PERF_CMD_SXLAT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct perf_peer*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct perf_peer *peer)
{
	resource_size_t xlat_align, size_align, size_max;
	struct perf_ctx *perf = peer->perf;
	int ret;

	/* Get inbound MW parameters */
	ret = FUNC3(perf->ntb, peer->pidx, perf->gidx,
			       &xlat_align, &size_align, &size_max);
	if (ret) {
		FUNC1(&perf->ntb->dev, "Couldn't get inbuf restrictions\n");
		return ret;
	}

	if (peer->inbuf_size > size_max) {
		FUNC1(&perf->ntb->dev, "Too big inbuf size %pa > %pa\n",
			&peer->inbuf_size, &size_max);
		return -EINVAL;
	}

	peer->inbuf_size = FUNC7(peer->inbuf_size, size_align);

	FUNC6(peer);

	peer->inbuf = FUNC2(&perf->ntb->dev, peer->inbuf_size,
					 &peer->inbuf_xlat, GFP_KERNEL);
	if (!peer->inbuf) {
		FUNC1(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
			&peer->inbuf_size);
		return -ENOMEM;
	}
	if (!FUNC0(peer->inbuf_xlat, xlat_align)) {
		FUNC1(&perf->ntb->dev, "Unaligned inbuf allocated\n");
		goto err_free_inbuf;
	}

	ret = FUNC4(perf->ntb, peer->pidx, peer->gidx,
			       peer->inbuf_xlat, peer->inbuf_size);
	if (ret) {
		FUNC1(&perf->ntb->dev, "Failed to set inbuf translation\n");
		goto err_free_inbuf;
	}

	/*
	 * We submit inbuf xlat transmission cmd for execution here to follow
	 * the code architecture, even though this method is called from service
	 * work itself so the command will be executed right after it returns.
	 */
	(void)FUNC5(peer, PERF_CMD_SXLAT);

	return 0;

err_free_inbuf:
	FUNC6(peer);

	return ret;
}