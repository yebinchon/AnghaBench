#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct ctcm_priv {int /*<<< orphan*/  protocol; TYPE_2__** channel; TYPE_1__* fsm; int /*<<< orphan*/  buffer_size; } ;
struct channel {int dummy; } ;
struct ccwgroup_device {struct ccw_device** cdev; int /*<<< orphan*/  dev; } ;
struct ccw_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  id; } ;
typedef  enum ctcm_channel_types { ____Placeholder_ctcm_channel_types } ctcm_channel_types ;
struct TYPE_4__ {int /*<<< orphan*/  id; int /*<<< orphan*/  max_bufsize; int /*<<< orphan*/  protocol; struct net_device* netdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  CTCM_FUNTAIL ; 
 int CTCM_ID_SIZE ; 
 int CTCM_READ ; 
 int CTCM_WRITE ; 
 int /*<<< orphan*/  CTC_DBF_INFO ; 
 int /*<<< orphan*/  CTC_DBF_NOTICE ; 
 int EIO ; 
 int ENODEV ; 
 int /*<<< orphan*/  SETUP ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRACE ; 
 int FUNC2 (struct ccw_device*,int,struct ctcm_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ccw_device*) ; 
 int FUNC4 (struct ccw_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 void* FUNC6 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct channel*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 struct net_device* FUNC9 (struct ctcm_priv*) ; 
 struct ctcm_priv* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct ccwgroup_device *cgdev)
{
	char read_id[CTCM_ID_SIZE];
	char write_id[CTCM_ID_SIZE];
	int direction;
	enum ctcm_channel_types type;
	struct ctcm_priv *priv;
	struct net_device *dev;
	struct ccw_device *cdev0;
	struct ccw_device *cdev1;
	struct channel *readc;
	struct channel *writec;
	int ret;
	int result;

	priv = FUNC10(&cgdev->dev);
	if (!priv) {
		result = -ENODEV;
		goto out_err_result;
	}

	cdev0 = cgdev->cdev[0];
	cdev1 = cgdev->cdev[1];

	type = FUNC13(&cdev0->id);

	FUNC15(read_id, CTCM_ID_SIZE, "ch-%s", FUNC12(&cdev0->dev));
	FUNC15(write_id, CTCM_ID_SIZE, "ch-%s", FUNC12(&cdev1->dev));

	ret = FUNC2(cdev0, type, priv);
	if (ret) {
		result = ret;
		goto out_err_result;
	}
	ret = FUNC2(cdev1, type, priv);
	if (ret) {
		result = ret;
		goto out_remove_channel1;
	}

	ret = FUNC4(cdev0);
	if (ret != 0) {
		FUNC0(TRACE, CTC_DBF_NOTICE,
			"%s(%s) set_online rc=%d",
				CTCM_FUNTAIL, read_id, ret);
		result = -EIO;
		goto out_remove_channel2;
	}

	ret = FUNC4(cdev1);
	if (ret != 0) {
		FUNC0(TRACE, CTC_DBF_NOTICE,
			"%s(%s) set_online rc=%d",
				CTCM_FUNTAIL, write_id, ret);

		result = -EIO;
		goto out_ccw1;
	}

	dev = FUNC9(priv);
	if (dev == NULL) {
		result = -ENODEV;
		goto out_ccw2;
	}

	for (direction = CTCM_READ; direction <= CTCM_WRITE; direction++) {
		priv->channel[direction] =
			FUNC6(type, direction == CTCM_READ ?
				read_id : write_id, direction);
		if (priv->channel[direction] == NULL) {
			if (direction == CTCM_WRITE)
				FUNC5(priv->channel[CTCM_READ]);
			result = -ENODEV;
			goto out_dev;
		}
		priv->channel[direction]->netdev = dev;
		priv->channel[direction]->protocol = priv->protocol;
		priv->channel[direction]->max_bufsize = priv->buffer_size;
	}
	/* sysfs magic */
	FUNC1(dev, &cgdev->dev);

	if (FUNC14(dev)) {
		result = -ENODEV;
		goto out_dev;
	}

	FUNC16(priv->fsm->name, dev->name, sizeof(priv->fsm->name));

	FUNC11(&dev->dev,
		"setup OK : r/w = %s/%s, protocol : %d\n",
			priv->channel[CTCM_READ]->id,
			priv->channel[CTCM_WRITE]->id, priv->protocol);

	FUNC0(SETUP, CTC_DBF_INFO,
		"setup(%s) OK : r/w = %s/%s, protocol : %d", dev->name,
			priv->channel[CTCM_READ]->id,
			priv->channel[CTCM_WRITE]->id, priv->protocol);

	return 0;
out_dev:
	FUNC8(dev);
out_ccw2:
	FUNC3(cgdev->cdev[1]);
out_ccw1:
	FUNC3(cgdev->cdev[0]);
out_remove_channel2:
	readc = FUNC6(type, read_id, CTCM_READ);
	FUNC7(readc);
out_remove_channel1:
	writec = FUNC6(type, write_id, CTCM_WRITE);
	FUNC7(writec);
out_err_result:
	return result;
}