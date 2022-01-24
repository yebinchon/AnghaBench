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
struct wl1251 {int /*<<< orphan*/  hw; int /*<<< orphan*/ * rx_descriptor; int /*<<< orphan*/ * nvs; int /*<<< orphan*/ * fw; int /*<<< orphan*/ * data_path; int /*<<< orphan*/ * target_mem_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wl1251*) ; 

int FUNC5(struct wl1251 *wl)
{
	FUNC1(wl->hw);

	FUNC4(wl);

	FUNC2(wl->target_mem_map);
	FUNC2(wl->data_path);
	FUNC3(wl->fw);
	wl->fw = NULL;
	FUNC2(wl->nvs);
	wl->nvs = NULL;

	FUNC2(wl->rx_descriptor);
	wl->rx_descriptor = NULL;

	FUNC0(wl->hw);

	return 0;
}