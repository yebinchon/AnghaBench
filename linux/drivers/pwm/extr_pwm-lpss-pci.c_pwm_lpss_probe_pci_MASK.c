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
struct pwm_lpss_chip {int dummy; } ;
struct pwm_lpss_boardinfo {int dummy; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/ * resource; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pwm_lpss_chip*) ; 
 int FUNC1 (struct pwm_lpss_chip*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,struct pwm_lpss_chip*) ; 
 int FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct pwm_lpss_chip* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct pwm_lpss_boardinfo const*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev,
			      const struct pci_device_id *id)
{
	const struct pwm_lpss_boardinfo *info;
	struct pwm_lpss_chip *lpwm;
	int err;

	err = FUNC3(pdev);
	if (err < 0)
		return err;

	info = (struct pwm_lpss_boardinfo *)id->driver_data;
	lpwm = FUNC6(&pdev->dev, &pdev->resource[0], info);
	if (FUNC0(lpwm))
		return FUNC1(lpwm);

	FUNC2(pdev, lpwm);

	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	return 0;
}