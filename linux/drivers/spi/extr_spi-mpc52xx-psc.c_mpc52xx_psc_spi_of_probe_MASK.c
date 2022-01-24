#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct TYPE_3__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef  int s16 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int) ; 
 int* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int const*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *op)
{
	const u32 *regaddr_p;
	u64 regaddr64, size64;
	s16 id = -1;

	regaddr_p = FUNC3(op->dev.of_node, 0, &size64, NULL);
	if (!regaddr_p) {
		FUNC0(&op->dev, "Invalid PSC address\n");
		return -EINVAL;
	}
	regaddr64 = FUNC5(op->dev.of_node, regaddr_p);

	/* get PSC id (1..6, used by port_config) */
	if (op->dev.platform_data == NULL) {
		const u32 *psc_nump;

		psc_nump = FUNC4(op->dev.of_node, "cell-index", NULL);
		if (!psc_nump || *psc_nump > 5) {
			FUNC0(&op->dev, "Invalid cell-index property\n");
			return -EINVAL;
		}
		id = *psc_nump + 1;
	}

	return FUNC2(&op->dev, (u32)regaddr64, (u32)size64,
				FUNC1(op->dev.of_node, 0), id);
}