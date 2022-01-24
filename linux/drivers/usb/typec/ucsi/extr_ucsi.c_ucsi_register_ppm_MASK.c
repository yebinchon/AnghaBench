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
struct ucsi_ppm {int dummy; } ;
struct ucsi {int /*<<< orphan*/  work; struct ucsi_ppm* ppm; struct device* dev; int /*<<< orphan*/  ppm_lock; int /*<<< orphan*/  complete; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct ucsi* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct ucsi* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_long_wq ; 
 int /*<<< orphan*/  ucsi_init ; 

struct ucsi *FUNC6(struct device *dev, struct ucsi_ppm *ppm)
{
	struct ucsi *ucsi;

	ucsi = FUNC3(sizeof(*ucsi), GFP_KERNEL);
	if (!ucsi)
		return FUNC0(-ENOMEM);

	FUNC1(&ucsi->work, ucsi_init);
	FUNC2(&ucsi->complete);
	FUNC4(&ucsi->ppm_lock);

	ucsi->dev = dev;
	ucsi->ppm = ppm;

	/*
	 * Communication with the PPM takes a lot of time. It is not reasonable
	 * to initialize the driver here. Using a work for now.
	 */
	FUNC5(system_long_wq, &ucsi->work);

	return ucsi;
}