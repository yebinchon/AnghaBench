#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sh_msiof_spi_priv {TYPE_1__* pdev; scalar_t__ slave_aborted; int /*<<< orphan*/  ctlr; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct completion*) ; 
 int /*<<< orphan*/  FUNC4 (struct completion*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct sh_msiof_spi_priv *p,
					struct completion *x)
{
	if (FUNC2(p->ctlr)) {
		if (FUNC3(x) ||
		    p->slave_aborted) {
			FUNC0(&p->pdev->dev, "interrupted\n");
			return -EINTR;
		}
	} else {
		if (!FUNC4(x, HZ)) {
			FUNC1(&p->pdev->dev, "timeout\n");
			return -ETIMEDOUT;
		}
	}

	return 0;
}