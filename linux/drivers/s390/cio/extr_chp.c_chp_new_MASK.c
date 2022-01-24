#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct chp_id {size_t id; int /*<<< orphan*/  cssid; } ;
struct channel_subsystem {int /*<<< orphan*/  mutex; struct channel_path** chps; scalar_t__ cm_enabled; int /*<<< orphan*/  device; } ;
struct TYPE_7__ {int /*<<< orphan*/  release; int /*<<< orphan*/  groups; int /*<<< orphan*/ * parent; } ;
struct TYPE_6__ {int flags; } ;
struct channel_path {int state; TYPE_2__ dev; TYPE_1__ desc; int /*<<< orphan*/  lock; struct chp_id chpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,size_t,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct channel_path*) ; 
 int /*<<< orphan*/  chp_attr_groups ; 
 scalar_t__ FUNC2 (struct chp_id) ; 
 int /*<<< orphan*/  chp_release ; 
 int FUNC3 (struct channel_path*) ; 
 struct channel_subsystem* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct channel_path*) ; 
 struct channel_path* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

int FUNC14(struct chp_id chpid)
{
	struct channel_subsystem *css = FUNC4(chpid.cssid);
	struct channel_path *chp;
	int ret = 0;

	FUNC11(&css->mutex);
	if (FUNC2(chpid))
		goto out;

	chp = FUNC9(sizeof(struct channel_path), GFP_KERNEL);
	if (!chp) {
		ret = -ENOMEM;
		goto out;
	}
	/* fill in status, etc. */
	chp->chpid = chpid;
	chp->state = 1;
	chp->dev.parent = &css->device;
	chp->dev.groups = chp_attr_groups;
	chp->dev.release = chp_release;
	FUNC10(&chp->lock);

	/* Obtain channel path description and fill it in. */
	ret = FUNC3(chp);
	if (ret)
		goto out_free;
	if ((chp->desc.flags & 0x80) == 0) {
		ret = -ENODEV;
		goto out_free;
	}
	FUNC5(&chp->dev, "chp%x.%02x", chpid.cssid, chpid.id);

	/* make it known to the system */
	ret = FUNC6(&chp->dev);
	if (ret) {
		FUNC0(0, "Could not register chp%x.%02x: %d\n",
			      chpid.cssid, chpid.id, ret);
		FUNC13(&chp->dev);
		goto out;
	}

	if (css->cm_enabled) {
		ret = FUNC1(chp);
		if (ret) {
			FUNC7(&chp->dev);
			goto out;
		}
	}
	css->chps[chpid.id] = chp;
	goto out;
out_free:
	FUNC8(chp);
out:
	FUNC12(&css->mutex);
	return ret;
}