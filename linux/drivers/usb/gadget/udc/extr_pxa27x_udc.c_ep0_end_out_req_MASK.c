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
struct pxa_ep {int /*<<< orphan*/  dev; } ;
struct pxa27x_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OUT_STATUS_STAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*,struct pxa27x_request*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct pxa_ep *ep, struct pxa27x_request *req,
	unsigned long *pflags)
{
	FUNC2(ep->dev, OUT_STATUS_STAGE);
	FUNC1(ep, req, pflags);
	FUNC0(ep->dev);
}