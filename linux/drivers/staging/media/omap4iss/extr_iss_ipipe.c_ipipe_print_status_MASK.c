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
struct iss_ipipe_device {int dummy; } ;
struct iss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCK_MMR ; 
 int /*<<< orphan*/  FUNC0 (struct iss_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRC_COL ; 
 int /*<<< orphan*/  SRC_EN ; 
 int /*<<< orphan*/  SRC_FMT ; 
 int /*<<< orphan*/  SRC_HPS ; 
 int /*<<< orphan*/  SRC_HSZ ; 
 int /*<<< orphan*/  SRC_MODE ; 
 int /*<<< orphan*/  SRC_VPS ; 
 int /*<<< orphan*/  SRC_VSZ ; 
 int /*<<< orphan*/  YUV_PHS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct iss_device* FUNC2 (struct iss_ipipe_device*) ; 

__attribute__((used)) static void FUNC3(struct iss_ipipe_device *ipipe)
{
	struct iss_device *iss = FUNC2(ipipe);

	FUNC1(iss->dev, "-------------IPIPE Register dump-------------\n");

	FUNC0(iss, SRC_EN);
	FUNC0(iss, SRC_MODE);
	FUNC0(iss, SRC_FMT);
	FUNC0(iss, SRC_COL);
	FUNC0(iss, SRC_VPS);
	FUNC0(iss, SRC_VSZ);
	FUNC0(iss, SRC_HPS);
	FUNC0(iss, SRC_HSZ);
	FUNC0(iss, GCK_MMR);
	FUNC0(iss, YUV_PHS);

	FUNC1(iss->dev, "-----------------------------------------------\n");
}