#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOVERFLOW ; 
 int MAX_UART_INSTANCES ; 
 int /*<<< orphan*/  alias_bitmap ; 
 int /*<<< orphan*/  alias_bitmap_initialized ; 
 int /*<<< orphan*/  bitmap ; 
 int /*<<< orphan*/  bitmap_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  cdns_uart_of_match ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int id, ret;

	FUNC6(&bitmap_lock);

	/* Alias list is stable that's why get alias bitmap only once */
	if (!alias_bitmap_initialized) {
		ret = FUNC8(cdns_uart_of_match, "serial",
					      alias_bitmap, MAX_UART_INSTANCES);
		if (ret && ret != -EOVERFLOW) {
			FUNC7(&bitmap_lock);
			return ret;
		}

		alias_bitmap_initialized++;
	}

	/* Make sure that alias ID is not taken by instance without alias */
	FUNC0(bitmap, bitmap, alias_bitmap, MAX_UART_INSTANCES);

	FUNC1(&pdev->dev, "Alias bitmap: %*pb\n",
		MAX_UART_INSTANCES, bitmap);

	/* Look for a serialN alias */
	id = FUNC9(pdev->dev.of_node, "serial");
	if (id < 0) {
		FUNC4(&pdev->dev,
			 "No serial alias passed. Using the first free id\n");

		/*
		 * Start with id 0 and check if there is no serial0 alias
		 * which points to device which is compatible with this driver.
		 * If alias exists then try next free position.
		 */
		id = 0;

		for (;;) {
			FUNC3(&pdev->dev, "Checking id %d\n", id);
			id = FUNC5(bitmap, MAX_UART_INSTANCES, id);

			/* No free empty instance */
			if (id == MAX_UART_INSTANCES) {
				FUNC2(&pdev->dev, "No free ID\n");
				FUNC7(&bitmap_lock);
				return -EINVAL;
			}

			FUNC1(&pdev->dev, "The empty id is %d\n", id);
			/* Check if ID is empty */
			if (!FUNC10(id, bitmap)) {
				/* Break the loop if bit is taken */
				FUNC1(&pdev->dev,
					"Selected ID %d allocation passed\n",
					id);
				break;
			}
			FUNC1(&pdev->dev,
				"Selected ID %d allocation failed\n", id);
			/* if taking bit fails then try next one */
			id++;
		}
	}

	FUNC7(&bitmap_lock);

	return id;
}