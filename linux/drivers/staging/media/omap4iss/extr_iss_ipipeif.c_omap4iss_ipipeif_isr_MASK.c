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
typedef  int u32 ;
struct iss_ipipeif_device {int output; int /*<<< orphan*/  stopping; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int IPIPEIF_OUTPUT_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iss_ipipeif_device*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct iss_ipipeif_device *ipipeif, u32 events)
{
	if (FUNC2(&ipipeif->wait,
					     &ipipeif->stopping))
		return;

	if ((events & FUNC0(0)) &&
	    (ipipeif->output & IPIPEIF_OUTPUT_MEMORY))
		FUNC1(ipipeif);
}