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
typedef  int u8 ;
struct net2272_ep {int dummy; } ;

/* Variables and functions */
 int ALT_NAK_OUT_PACKETS ; 
 int /*<<< orphan*/  EP_RSPCLR ; 
 int /*<<< orphan*/  EP_STAT0 ; 
 int NAK_OUT_PACKETS ; 
 int FUNC0 (struct net2272_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net2272_ep*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net2272_ep *ep)
{
	u8 tmp = FUNC0(ep, EP_STAT0);

	if ((tmp & (1 << NAK_OUT_PACKETS)) != 0)
		FUNC1(ep, EP_RSPCLR, 1 << ALT_NAK_OUT_PACKETS);
}