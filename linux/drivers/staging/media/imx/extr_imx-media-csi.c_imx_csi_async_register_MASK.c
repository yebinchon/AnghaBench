#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct v4l2_async_subdev {int dummy; } ;
struct v4l2_async_notifier {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_4__ {struct v4l2_async_notifier* subdev_notifier; } ;
struct csi_priv {TYPE_1__ sd; TYPE_3__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct fwnode_handle* FUNC0 (TYPE_3__*) ; 
 int FUNC1 (struct fwnode_handle*,char*,unsigned int*) ; 
 int /*<<< orphan*/  imx_csi_parse_endpoint ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_async_notifier*) ; 
 struct v4l2_async_notifier* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_async_notifier*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_async_notifier*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct v4l2_async_notifier*,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct v4l2_async_notifier*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*,struct v4l2_async_notifier*) ; 

__attribute__((used)) static int FUNC10(struct csi_priv *priv)
{
	struct v4l2_async_notifier *notifier;
	struct fwnode_handle *fwnode;
	unsigned int port;
	int ret;

	notifier = FUNC3(sizeof(*notifier), GFP_KERNEL);
	if (!notifier)
		return -ENOMEM;

	FUNC5(notifier);

	fwnode = FUNC0(priv->dev);

	/* get this CSI's port id */
	ret = FUNC1(fwnode, "reg", &port);
	if (ret < 0)
		goto out_free;

	ret = FUNC6(
		priv->dev->parent, notifier, sizeof(struct v4l2_async_subdev),
		port, imx_csi_parse_endpoint);
	if (ret < 0)
		goto out_cleanup;

	ret = FUNC9(&priv->sd, notifier);
	if (ret < 0)
		goto out_cleanup;

	ret = FUNC8(&priv->sd);
	if (ret < 0)
		goto out_unregister;

	priv->sd.subdev_notifier = notifier;

	return 0;

out_unregister:
	FUNC7(notifier);
out_cleanup:
	FUNC4(notifier);
out_free:
	FUNC2(notifier);

	return ret;
}