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
struct imx_media_dev {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENODEV ; 
 int FUNC0 (struct imx_media_dev*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int) ; 

int FUNC3(struct imx_media_dev *imxmd,
			     struct device_node *np)
{
	struct device_node *csi_np;
	int i, ret;

	for (i = 0; ; i++) {
		csi_np = FUNC2(np, "ports", i);
		if (!csi_np)
			break;

		ret = FUNC0(imxmd, csi_np);
		if (ret) {
			/* unavailable or already added is not an error */
			if (ret == -ENODEV || ret == -EEXIST) {
				FUNC1(csi_np);
				continue;
			}

			/* other error, can't continue */
			goto err_out;
		}
	}

	return 0;

err_out:
	FUNC1(csi_np);
	return ret;
}