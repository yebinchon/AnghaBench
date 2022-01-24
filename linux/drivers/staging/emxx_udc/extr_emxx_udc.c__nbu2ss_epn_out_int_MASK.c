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
struct nbu2ss_udc {int dummy; } ;
struct nbu2ss_req {int dummy; } ;
struct nbu2ss_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nbu2ss_ep*,struct nbu2ss_req*,int) ; 
 int FUNC1 (struct nbu2ss_udc*,struct nbu2ss_ep*,struct nbu2ss_req*) ; 

__attribute__((used)) static inline void FUNC2(struct nbu2ss_udc *udc,
				       struct nbu2ss_ep *ep,
				       struct nbu2ss_req *req)
{
	int	result;

	result = FUNC1(udc, ep, req);
	if (result <= 0)
		FUNC0(ep, req, result);
}