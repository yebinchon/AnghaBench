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
struct xenbus_device {int dummy; } ;
struct vscsiif_sring {int dummy; } ;
struct TYPE_2__ {scalar_t__ sring; } ;
struct vscsifrnt_info {int irq; TYPE_1__ ring; int /*<<< orphan*/  ring_ref; int /*<<< orphan*/  evtchn; struct xenbus_device* dev; } ;
typedef  int /*<<< orphan*/  grant_ref_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct vscsiif_sring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct vscsiif_sring*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC6 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vscsifrnt_info*) ; 
 int /*<<< orphan*/  scsifront_irq_fn ; 
 int /*<<< orphan*/  FUNC7 (int,struct vscsifrnt_info*) ; 
 int FUNC8 (struct xenbus_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct xenbus_device*,int,char*) ; 
 int FUNC10 (struct xenbus_device*,struct vscsiif_sring*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct vscsifrnt_info *info)
{
	struct xenbus_device *dev = info->dev;
	struct vscsiif_sring *sring;
	grant_ref_t gref;
	int err = -ENOMEM;

	/***** Frontend to Backend ring start *****/
	sring = (struct vscsiif_sring *)FUNC2(GFP_KERNEL);
	if (!sring) {
		FUNC9(dev, err,
			"fail to allocate shared ring (Front to Back)");
		return err;
	}
	FUNC1(sring);
	FUNC0(&info->ring, sring, PAGE_SIZE);

	err = FUNC10(dev, sring, 1, &gref);
	if (err < 0) {
		FUNC4((unsigned long)sring);
		FUNC9(dev, err,
			"fail to grant shared ring (Front to Back)");
		return err;
	}
	info->ring_ref = gref;

	err = FUNC8(dev, &info->evtchn);
	if (err) {
		FUNC9(dev, err, "xenbus_alloc_evtchn");
		goto free_gnttab;
	}

	err = FUNC3(info->evtchn);
	if (err <= 0) {
		FUNC9(dev, err, "bind_evtchn_to_irq");
		goto free_gnttab;
	}

	info->irq = err;

	err = FUNC6(info->irq, NULL, scsifront_irq_fn,
				   IRQF_ONESHOT, "scsifront", info);
	if (err) {
		FUNC9(dev, err, "request_threaded_irq");
		goto free_irq;
	}

	return 0;

/* free resource */
free_irq:
	FUNC7(info->irq, info);
free_gnttab:
	FUNC5(info->ring_ref, 0,
				  (unsigned long)info->ring.sring);

	return err;
}