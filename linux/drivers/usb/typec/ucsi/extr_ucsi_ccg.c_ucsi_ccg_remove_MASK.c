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
struct ucsi_ccg {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  ucsi; int /*<<< orphan*/  work; int /*<<< orphan*/  pm_work; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucsi_ccg*) ; 
 struct ucsi_ccg* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct ucsi_ccg *uc = FUNC2(client);

	FUNC0(&uc->pm_work);
	FUNC0(&uc->work);
	FUNC4(uc->ucsi);
	FUNC3(uc->dev);
	FUNC1(uc->irq, uc);

	return 0;
}