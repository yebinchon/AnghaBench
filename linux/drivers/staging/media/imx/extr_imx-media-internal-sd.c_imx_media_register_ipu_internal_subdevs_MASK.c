#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {scalar_t__ grp_id; TYPE_1__* dev; } ;
struct ipu_soc {int dummy; } ;
struct internal_subdev {scalar_t__ grp_id; int /*<<< orphan*/  (* sync_unregister ) (struct v4l2_subdev*) ;struct v4l2_subdev* (* sync_register ) (int /*<<< orphan*/ *,struct device*,struct ipu_soc*,scalar_t__) ;} ;
struct imx_media_dev {int /*<<< orphan*/  mutex; struct v4l2_subdev*** sync_sd; int /*<<< orphan*/  v4l2_dev; struct ipu_soc** ipu; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct v4l2_subdev*) ; 
 int NUM_IPU_SUBDEVS ; 
 int FUNC1 (struct v4l2_subdev*) ; 
 int FUNC2 (struct imx_media_dev*,struct internal_subdev const*,struct v4l2_subdev*,int) ; 
 struct ipu_soc* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct imx_media_dev*) ; 
 struct internal_subdev* int_subdev ; 
 int FUNC5 (struct ipu_soc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct v4l2_subdev* FUNC8 (int /*<<< orphan*/ *,struct device*,struct ipu_soc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_subdev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,...) ; 

int FUNC11(struct imx_media_dev *imxmd,
					    struct v4l2_subdev *csi)
{
	struct device *ipu_dev = csi->dev->parent;
	const struct internal_subdev *intsd;
	struct v4l2_subdev *sd;
	struct ipu_soc *ipu;
	int i, ipu_id, ret;

	ipu = FUNC3(ipu_dev);
	if (!ipu) {
		FUNC10(&imxmd->v4l2_dev, "invalid IPU device!\n");
		return -ENODEV;
	}

	ipu_id = FUNC5(ipu);
	if (ipu_id > 1) {
		FUNC10(&imxmd->v4l2_dev, "invalid IPU id %d!\n", ipu_id);
		return -ENODEV;
	}

	FUNC6(&imxmd->mutex);

	/* record this IPU */
	if (!imxmd->ipu[ipu_id])
		imxmd->ipu[ipu_id] = ipu;

	/* register the synchronous subdevs */
	for (i = 0; i < NUM_IPU_SUBDEVS; i++) {
		intsd = &int_subdev[i];

		sd = imxmd->sync_sd[ipu_id][i];

		/*
		 * skip if this sync subdev already registered or its
		 * not a sync subdev (one of the CSIs)
		 */
		if (sd || !intsd->sync_register)
			continue;

		FUNC7(&imxmd->mutex);
		sd = intsd->sync_register(&imxmd->v4l2_dev, ipu_dev, ipu,
					  intsd->grp_id);
		FUNC6(&imxmd->mutex);
		if (FUNC0(sd)) {
			ret = FUNC1(sd);
			goto err_unwind;
		}

		imxmd->sync_sd[ipu_id][i] = sd;
	}

	/*
	 * all the sync subdevs are registered, create the media links
	 * between them.
	 */
	for (i = 0; i < NUM_IPU_SUBDEVS; i++) {
		intsd = &int_subdev[i];

		if (intsd->grp_id == csi->grp_id) {
			sd = csi;
		} else {
			sd = imxmd->sync_sd[ipu_id][i];
			if (!sd)
				continue;
		}

		ret = FUNC2(imxmd, intsd, sd, ipu_id);
		if (ret) {
			FUNC7(&imxmd->mutex);
			FUNC4(imxmd);
			return ret;
		}
	}

	FUNC7(&imxmd->mutex);
	return 0;

err_unwind:
	while (--i >= 0) {
		intsd = &int_subdev[i];
		sd = imxmd->sync_sd[ipu_id][i];
		if (!sd || !intsd->sync_unregister)
			continue;
		FUNC7(&imxmd->mutex);
		intsd->sync_unregister(sd);
		FUNC6(&imxmd->mutex);
	}

	FUNC7(&imxmd->mutex);
	return ret;
}