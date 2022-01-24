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
struct musb_request {scalar_t__ tx; int /*<<< orphan*/  epnum; } ;
struct musb {int /*<<< orphan*/  mregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,struct musb_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct musb_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct musb*,struct musb_request*) ; 

void FUNC4(struct musb *musb, struct musb_request *req)
{
	FUNC2(req);
	FUNC0(musb->mregs, req->epnum);
	if (req->tx)
		FUNC3(musb, req);
	else
		FUNC1(musb, req);
}