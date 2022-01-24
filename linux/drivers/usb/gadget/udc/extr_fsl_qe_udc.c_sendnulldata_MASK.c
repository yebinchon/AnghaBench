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
typedef  int uint ;
typedef  int /*<<< orphan*/  u8 ;
struct qe_udc {scalar_t__ nullbuf; } ;
struct qe_frame {int dummy; } ;
struct qe_ep {struct qe_udc* udc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FRAME_OK ; 
 int NO_CRC ; 
 int ZLP ; 
 int /*<<< orphan*/  FUNC0 (struct qe_frame*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qe_frame*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qe_frame*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qe_frame*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qe_ep*,struct qe_frame*) ; 
 int /*<<< orphan*/  FUNC5 (struct qe_frame*) ; 

__attribute__((used)) static int FUNC6(struct qe_ep *ep, struct qe_frame *frame, uint infor)
{
	struct qe_udc *udc = ep->udc;

	if (frame == NULL)
		return -ENODEV;

	FUNC5(frame);
	FUNC0(frame, (u8 *)udc->nullbuf);
	FUNC2(frame, 2);
	FUNC3(frame, FRAME_OK);
	FUNC1(frame, (ZLP | NO_CRC | infor));

	return FUNC4(ep, frame);
}