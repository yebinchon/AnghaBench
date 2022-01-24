#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int type_iso; int type_bulk; int type_int; } ;
struct TYPE_8__ {int max_streams; TYPE_3__ caps; int /*<<< orphan*/  ep_list; int /*<<< orphan*/ * ops; } ;
struct dwc3_ep {int number; TYPE_4__ endpoint; struct dwc3* dwc; } ;
struct TYPE_6__ {int /*<<< orphan*/  ep_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  hwparams0; } ;
struct dwc3 {TYPE_2__ gadget; int /*<<< orphan*/  regs; TYPE_1__ hwparams; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dwc3_ep*) ; 
 int /*<<< orphan*/  dwc3_gadget_ep_ops ; 
 scalar_t__ FUNC5 (struct dwc3*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int) ; 

__attribute__((used)) static int FUNC9(struct dwc3_ep *dep)
{
	struct dwc3 *dwc = dep->dwc;
	int mdwidth;
	int kbytes;
	int size;

	mdwidth = FUNC3(dwc->hwparams.hwparams0);
	/* MDWIDTH is represented in bits, we need it in bytes */
	mdwidth /= 8;

	size = FUNC6(dwc->regs, FUNC1(dep->number >> 1));
	if (FUNC5(dwc))
		size = FUNC0(size);
	else
		size = FUNC2(size);

	/* FIFO Depth is in MDWDITH bytes. Multiply */
	size *= mdwidth;

	kbytes = size / 1024;
	if (kbytes == 0)
		kbytes = 1;

	/*
	 * FIFO sizes account an extra MDWIDTH * (kbytes + 1) bytes for
	 * internal overhead. We don't really know how these are used,
	 * but documentation say it exists.
	 */
	size -= mdwidth * (kbytes + 1);
	size /= kbytes;

	FUNC8(&dep->endpoint, size);

	dep->endpoint.max_streams = 15;
	dep->endpoint.ops = &dwc3_gadget_ep_ops;
	FUNC7(&dep->endpoint.ep_list,
			&dwc->gadget.ep_list);
	dep->endpoint.caps.type_iso = true;
	dep->endpoint.caps.type_bulk = true;
	dep->endpoint.caps.type_int = true;

	return FUNC4(dep);
}