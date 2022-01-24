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
struct pnx8xxx_port {int /*<<< orphan*/  port; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct pnx8xxx_port* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  pnx8xxx_reg ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	struct pnx8xxx_port *sport = FUNC0(pdev);

	if (sport)
		FUNC1(&pnx8xxx_reg, &sport->port);

	return 0;
}