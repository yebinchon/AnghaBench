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
struct vml_par {int /*<<< orphan*/  gpu; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 int /*<<< orphan*/  VML_DEVICE_GPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vml_mutex ; 

__attribute__((used)) static int FUNC4(struct vml_par *par)
{
	FUNC0(&vml_mutex);

	par->gpu = FUNC3(PCI_VENDOR_ID_INTEL, VML_DEVICE_GPU, NULL);

	if (!par->gpu) {
		FUNC1(&vml_mutex);
		return -ENODEV;
	}

	FUNC1(&vml_mutex);

	if (FUNC2(par->gpu) < 0)
		return -ENODEV;

	return 0;
}