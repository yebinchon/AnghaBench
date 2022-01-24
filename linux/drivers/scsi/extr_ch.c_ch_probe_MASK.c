#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct scsi_device {scalar_t__ type; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int minor; int name; struct scsi_device* device; int /*<<< orphan*/  ref; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ scsi_changer ;

/* Variables and functions */
 scalar_t__ CH_MAX_DEVS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  KERN_WARNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  SCSI_CHANGER_MAJOR ; 
 scalar_t__ TYPE_MEDIUM_CHANGER ; 
 int /*<<< orphan*/  ch_index_idr ; 
 int /*<<< orphan*/  ch_index_lock ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  ch_sysfs_class ; 
 int /*<<< orphan*/  FUNC5 (struct device*,TYPE_1__*) ; 
 struct device* FUNC6 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ init ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct scsi_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,char*,int) ; 
 struct scsi_device* FUNC20 (struct device*) ; 

__attribute__((used)) static int FUNC21(struct device *dev)
{
	struct scsi_device *sd = FUNC20(dev);
	struct device *class_dev;
	int ret;
	scsi_changer *ch;

	if (sd->type != TYPE_MEDIUM_CHANGER)
		return -ENODEV;

	ch = FUNC14(sizeof(*ch), GFP_KERNEL);
	if (NULL == ch)
		return -ENOMEM;

	FUNC9(GFP_KERNEL);
	FUNC17(&ch_index_lock);
	ret = FUNC8(&ch_index_idr, ch, 0, CH_MAX_DEVS + 1, GFP_NOWAIT);
	FUNC18(&ch_index_lock);
	FUNC10();

	if (ret < 0) {
		if (ret == -ENOSPC)
			ret = -ENODEV;
		goto free_ch;
	}

	ch->minor = ret;
	FUNC19(ch->name,"ch%d",ch->minor);

	class_dev = FUNC6(ch_sysfs_class, dev,
				  FUNC1(SCSI_CHANGER_MAJOR, ch->minor), ch,
				  "s%s", ch->name);
	if (FUNC0(class_dev)) {
		FUNC16(KERN_WARNING, sd, "ch%d: device_create failed\n",
			    ch->minor);
		ret = FUNC2(class_dev);
		goto remove_idr;
	}

	FUNC15(&ch->lock);
	FUNC13(&ch->ref);
	ch->device = sd;
	ret = FUNC4(ch);
	if (ret)
		goto destroy_dev;
	if (init)
		FUNC3(ch);

	FUNC5(dev, ch);
	FUNC16(KERN_INFO, sd, "Attached scsi changer %s\n", ch->name);

	return 0;
destroy_dev:
	FUNC7(ch_sysfs_class, FUNC1(SCSI_CHANGER_MAJOR, ch->minor));
remove_idr:
	FUNC11(&ch_index_idr, ch->minor);
free_ch:
	FUNC12(ch);
	return ret;
}