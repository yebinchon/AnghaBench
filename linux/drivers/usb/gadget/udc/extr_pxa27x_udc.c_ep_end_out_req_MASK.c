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
struct pxa_ep {int dummy; } ;
struct pxa27x_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_DIR_IN ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_ep*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_ep*,struct pxa27x_request*,int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static void FUNC2(struct pxa_ep *ep, struct pxa27x_request *req,
	unsigned long *pflags)
{
	FUNC0(ep, !USB_DIR_IN);
	FUNC1(ep, req, 0, pflags);
}