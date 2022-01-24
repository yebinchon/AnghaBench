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
struct ucsi_ccg {int /*<<< orphan*/  ucsi; struct device* dev; int /*<<< orphan*/  ppm; int /*<<< orphan*/  irq; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int IRQF_ONESHOT ; 
 int IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccg_irq_handler ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ucsi_ccg*) ; 
 int FUNC5 (struct ucsi_ccg*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ucsi_ccg *uc)
{
	struct device *dev = uc->dev;
	int status;

	status = FUNC5(uc);
	if (status < 0) {
		FUNC2(dev, "ucsi_ccg_start fail, err=%d\n", status);
		return status;
	}

	status = FUNC4(uc->irq, NULL, ccg_irq_handler,
				      IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
				      FUNC3(dev), uc);
	if (status < 0) {
		FUNC2(dev, "request_threaded_irq failed - %d\n", status);
		return status;
	}

	uc->ucsi = FUNC6(dev, &uc->ppm);
	if (FUNC0(uc->ucsi)) {
		FUNC2(uc->dev, "ucsi_register_ppm failed\n");
		return FUNC1(uc->ucsi);
	}

	return 0;
}