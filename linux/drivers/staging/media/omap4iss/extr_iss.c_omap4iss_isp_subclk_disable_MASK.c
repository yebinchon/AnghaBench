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
struct iss_device {int isp_subclk_resources; } ;
typedef  enum iss_isp_subclk_resource { ____Placeholder_iss_isp_subclk_resource } iss_isp_subclk_resource ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iss_device*) ; 

void FUNC1(struct iss_device *iss,
				 enum iss_isp_subclk_resource res)
{
	iss->isp_subclk_resources &= ~res;

	FUNC0(iss);
}