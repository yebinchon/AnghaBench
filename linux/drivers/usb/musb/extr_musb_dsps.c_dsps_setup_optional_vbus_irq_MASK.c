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
struct dsps_glue {int vbus_irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct dsps_glue*) ; 
 int /*<<< orphan*/  dsps_vbus_threaded_irq ; 
 int FUNC2 (struct platform_device*,char*) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev,
					struct dsps_glue *glue)
{
	int error;

	glue->vbus_irq = FUNC2(pdev, "vbus");
	if (glue->vbus_irq == -EPROBE_DEFER)
		return -EPROBE_DEFER;

	if (glue->vbus_irq <= 0) {
		glue->vbus_irq = 0;
		return 0;
	}

	error = FUNC1(glue->dev, glue->vbus_irq,
					  NULL, dsps_vbus_threaded_irq,
					  IRQF_ONESHOT,
					  "vbus", glue);
	if (error) {
		glue->vbus_irq = 0;
		return error;
	}
	FUNC0(glue->dev, "VBUS irq %i configured\n", glue->vbus_irq);

	return 0;
}