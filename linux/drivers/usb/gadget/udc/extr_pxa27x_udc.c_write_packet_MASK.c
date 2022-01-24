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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct pxa_ep {int dummy; } ;
struct TYPE_2__ {scalar_t__ actual; int /*<<< orphan*/  length; scalar_t__ buf; } ;
struct pxa27x_request {TYPE_1__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDCCSR ; 
 int /*<<< orphan*/  UDCDR ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_ep*,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pxa_ep *ep, struct pxa27x_request *req,
			unsigned int max)
{
	int length, count, remain, i;
	u32 *buf;
	u8 *buf_8;

	buf = (u32 *)(req->req.buf + req->req.actual);
	FUNC2(buf);

	length = FUNC1(req->req.length - req->req.actual, max);
	req->req.actual += length;

	remain = length & 0x3;
	count = length & ~(0x3);
	for (i = count; i > 0 ; i -= 4)
		FUNC5(ep, UDCDR, *buf++);

	buf_8 = (u8 *)buf;
	for (i = remain; i > 0; i--)
		FUNC4(ep, UDCDR, *buf_8++);

	FUNC0(ep, "length=%d+%d, udccsr=0x%03x\n", count, remain,
		FUNC3(ep, UDCCSR));

	return length;
}