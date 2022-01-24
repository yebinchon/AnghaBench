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
struct cpcap_phy_ddata {int /*<<< orphan*/  dev; TYPE_1__* vbus; } ;
typedef  enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_5__ {int /*<<< orphan*/  indio_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int IIO_VOLTAGE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_1__*,int*) ; 

__attribute__((used)) static int FUNC5(struct cpcap_phy_ddata *ddata)
{
	enum iio_chan_type type;
	int error;

	ddata->vbus = FUNC3(ddata->dev, "vbus");
	if (FUNC0(ddata->vbus)) {
		error = FUNC1(ddata->vbus);
		goto out_err;
	}

	if (!ddata->vbus->indio_dev) {
		error = -ENXIO;
		goto out_err;
	}

	error = FUNC4(ddata->vbus, &type);
	if (error < 0)
		goto out_err;

	if (type != IIO_VOLTAGE) {
		error = -EINVAL;
		goto out_err;
	}

	return 0;

out_err:
	FUNC2(ddata->dev, "could not initialize VBUS or ID IIO: %i\n",
		error);

	return error;
}