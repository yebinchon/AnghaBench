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
struct cdns3_request {struct usb_request request; struct cdns3_endpoint* priv_ep; } ;
struct cdns3_endpoint {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct cdns3_endpoint* FUNC0 (struct usb_ep*) ; 
 struct cdns3_request* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cdns3_request*) ; 

struct usb_request *FUNC3(struct usb_ep *ep,
						  gfp_t gfp_flags)
{
	struct cdns3_endpoint *priv_ep = FUNC0(ep);
	struct cdns3_request *priv_req;

	priv_req = FUNC1(sizeof(*priv_req), gfp_flags);
	if (!priv_req)
		return NULL;

	priv_req->priv_ep = priv_ep;

	FUNC2(priv_req);
	return &priv_req->request;
}