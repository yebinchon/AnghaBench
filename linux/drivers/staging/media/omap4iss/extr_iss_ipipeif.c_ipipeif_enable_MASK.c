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
typedef  scalar_t__ u8 ;
struct iss_ipipeif_device {int dummy; } ;
struct iss_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISIF_SYNCEN ; 
 int /*<<< orphan*/  ISIF_SYNCEN_SYEN ; 
 int /*<<< orphan*/  OMAP4_ISS_MEM_ISP_ISIF ; 
 int /*<<< orphan*/  FUNC0 (struct iss_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iss_device* FUNC1 (struct iss_ipipeif_device*) ; 

__attribute__((used)) static void FUNC2(struct iss_ipipeif_device *ipipeif, u8 enable)
{
	struct iss_device *iss = FUNC1(ipipeif);

	FUNC0(iss, OMAP4_ISS_MEM_ISP_ISIF, ISIF_SYNCEN,
		       ISIF_SYNCEN_SYEN, enable ? ISIF_SYNCEN_SYEN : 0);
}