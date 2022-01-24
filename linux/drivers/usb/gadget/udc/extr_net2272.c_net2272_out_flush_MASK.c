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
struct net2272_ep {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net2272_ep*) ; 
 int BUFFER_FLUSH ; 
 int DATA_OUT_TOKEN_INTERRUPT ; 
 int DATA_PACKET_RECEIVED_INTERRUPT ; 
 int /*<<< orphan*/  EP_STAT0 ; 
 int /*<<< orphan*/  EP_STAT1 ; 
 int /*<<< orphan*/  FUNC1 (struct net2272_ep*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct net2272_ep *ep)
{
	FUNC0(ep);

	FUNC1(ep, EP_STAT0, (1 << DATA_OUT_TOKEN_INTERRUPT)
			| (1 << DATA_PACKET_RECEIVED_INTERRUPT));
	FUNC1(ep, EP_STAT1, 1 << BUFFER_FLUSH);
}