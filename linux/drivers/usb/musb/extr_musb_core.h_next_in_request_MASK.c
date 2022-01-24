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
struct musb_request {int dummy; } ;
struct musb_hw_ep {int /*<<< orphan*/  ep_in; } ;

/* Variables and functions */
 struct musb_request* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline struct musb_request *FUNC1(struct musb_hw_ep *hw_ep)
{
	return FUNC0(&hw_ep->ep_in);
}