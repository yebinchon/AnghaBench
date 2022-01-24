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
struct platform_device {int dummy; } ;
struct dsi_data {int /*<<< orphan*/  framedone_data; int /*<<< orphan*/  (* framedone_callback ) (int,int /*<<< orphan*/ ) ;scalar_t__ te_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSI_TIMING2 ; 
 int /*<<< orphan*/  FUNC0 (struct platform_device*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct dsi_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct platform_device *dsidev, int error)
{
	struct dsi_data *dsi = FUNC2(dsidev);

	/* SIDLEMODE back to smart-idle */
	FUNC1();

	if (dsi->te_enabled) {
		/* enable LP_RX_TO again after the TE */
		FUNC0(dsidev, DSI_TIMING2, 1, 15, 15); /* LP_RX_TO */
	}

	dsi->framedone_callback(error, dsi->framedone_data);

	if (!error)
		FUNC3(dsidev, "DISPC");
}