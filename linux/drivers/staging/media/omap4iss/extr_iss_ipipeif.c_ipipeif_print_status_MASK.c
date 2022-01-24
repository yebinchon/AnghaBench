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
struct iss_ipipeif_device {int dummy; } ;
struct iss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CADL ; 
 int /*<<< orphan*/  CADU ; 
 int /*<<< orphan*/  CCOLP ; 
 int /*<<< orphan*/  CFG1 ; 
 int /*<<< orphan*/  CFG2 ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  HSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LNH ; 
 int /*<<< orphan*/  LNV ; 
 int /*<<< orphan*/  MODESET ; 
 int /*<<< orphan*/  SPH ; 
 int /*<<< orphan*/  SYNCEN ; 
 int /*<<< orphan*/  SYSCONFIG ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct iss_device* FUNC8 (struct iss_ipipeif_device*) ; 

__attribute__((used)) static void FUNC9(struct iss_ipipeif_device *ipipeif)
{
	struct iss_device *iss = FUNC8(ipipeif);

	FUNC7(iss->dev, "-------------IPIPEIF Register dump-------------\n");

	FUNC0(iss, CFG1);
	FUNC0(iss, CFG2);

	FUNC4(iss, SYNCEN);
	FUNC4(iss, CADU);
	FUNC4(iss, CADL);
	FUNC4(iss, MODESET);
	FUNC4(iss, CCOLP);
	FUNC4(iss, SPH);
	FUNC4(iss, LNH);
	FUNC4(iss, LNV);
	FUNC4(iss, FUNC6(0));
	FUNC4(iss, HSIZE);

	FUNC5(iss, SYSCONFIG);
	FUNC5(iss, CTRL);
	FUNC5(iss, FUNC3(0));
	FUNC5(iss, FUNC2(0));
	FUNC5(iss, FUNC1(0));

	FUNC7(iss->dev, "-----------------------------------------------\n");
}