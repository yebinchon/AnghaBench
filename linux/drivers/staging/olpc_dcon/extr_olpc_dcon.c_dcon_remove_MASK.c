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
struct i2c_client {int dummy; } ;
struct dcon_priv {int /*<<< orphan*/  switch_source; int /*<<< orphan*/  bl_dev; int /*<<< orphan*/  reboot_nb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCON_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ dcon_device ; 
 int /*<<< orphan*/  dcon_panic_nb ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dcon_priv*) ; 
 struct dcon_priv* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct dcon_priv*) ; 
 int /*<<< orphan*/  panic_notifier_list ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client)
{
	struct dcon_priv *dcon = FUNC4(client);

	FUNC7(&dcon->reboot_nb);
	FUNC0(&panic_notifier_list, &dcon_panic_nb);

	FUNC3(DCON_IRQ, dcon);

	FUNC1(dcon->bl_dev);

	if (dcon_device)
		FUNC6(dcon_device);
	FUNC2(&dcon->switch_source);

	FUNC5(dcon);

	return 0;
}