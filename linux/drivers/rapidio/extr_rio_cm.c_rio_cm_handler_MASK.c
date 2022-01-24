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
struct rio_ch_chan_hdr {int ch_op; int /*<<< orphan*/  src_ch; int /*<<< orphan*/  dst_ch; } ;
struct cm_dev {int /*<<< orphan*/  mport; } ;

/* Variables and functions */
#define  CM_CONN_ACK 130 
#define  CM_CONN_CLOSE 129 
#define  CM_CONN_REQ 128 
 int /*<<< orphan*/  RX_CMD ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct cm_dev*,void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 

__attribute__((used)) static void FUNC8(struct cm_dev *cm, void *data)
{
	struct rio_ch_chan_hdr *hdr;

	if (!FUNC2(cm->mport))
		goto out;

	hdr = data;

	FUNC4(RX_CMD, "OP=%x for ch=%d from %d",
		    hdr->ch_op, FUNC1(hdr->dst_ch), FUNC1(hdr->src_ch));

	switch (hdr->ch_op) {
	case CM_CONN_REQ:
		FUNC6(cm, data);
		break;
	case CM_CONN_ACK:
		FUNC7(data);
		break;
	case CM_CONN_CLOSE:
		FUNC3(data);
		break;
	default:
		FUNC5("Invalid packet header");
		break;
	}
out:
	FUNC0(data);
}