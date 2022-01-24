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
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;
struct s3c_hsudc_req {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s3c_hsudc_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct s3c_hsudc_req* FUNC3 (struct usb_request*) ; 

__attribute__((used)) static void FUNC4(struct usb_ep *ep, struct usb_request *_req)
{
	struct s3c_hsudc_req *hsreq;

	hsreq = FUNC3(_req);
	FUNC0(!FUNC2(&hsreq->queue));
	FUNC1(hsreq);
}