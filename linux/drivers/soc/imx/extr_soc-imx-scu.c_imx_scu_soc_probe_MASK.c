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
typedef  int u32 ;
struct soc_device_attribute {char* family; void* soc_id; void* revision; int /*<<< orphan*/  machine; } ;
struct soc_device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct soc_device*) ; 
 int FUNC1 (struct soc_device*) ; 
 int /*<<< orphan*/  dev_attr_soc_uid ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct soc_device_attribute* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  of_root ; 
 struct soc_device* FUNC9 (struct soc_device_attribute*) ; 
 int /*<<< orphan*/  FUNC10 (struct soc_device*) ; 
 int /*<<< orphan*/  soc_ipc_handle ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct soc_device_attribute *soc_dev_attr;
	struct soc_device *soc_dev;
	int id, ret;
	u32 val;

	ret = FUNC4(&soc_ipc_handle);
	if (ret)
		return ret;

	soc_dev_attr = FUNC3(&pdev->dev, sizeof(*soc_dev_attr),
				    GFP_KERNEL);
	if (!soc_dev_attr)
		return -ENOMEM;

	soc_dev_attr->family = "Freescale i.MX";

	ret = FUNC8(of_root,
				      "model",
				      &soc_dev_attr->machine);
	if (ret)
		return ret;

	id = FUNC5();
	if (id < 0)
		return -EINVAL;

	/* format soc_id value passed from SCU firmware */
	val = id & 0x1f;
	soc_dev_attr->soc_id = FUNC6(GFP_KERNEL, "0x%x", val);
	if (!soc_dev_attr->soc_id)
		return -ENOMEM;

	/* format revision value passed from SCU firmware */
	val = (id >> 5) & 0xf;
	val = (((val >> 2) + 1) << 4) | (val & 0x3);
	soc_dev_attr->revision = FUNC6(GFP_KERNEL,
					   "%d.%d",
					   (val >> 4) & 0xf,
					   val & 0xf);
	if (!soc_dev_attr->revision) {
		ret = -ENOMEM;
		goto free_soc_id;
	}

	soc_dev = FUNC9(soc_dev_attr);
	if (FUNC0(soc_dev)) {
		ret = FUNC1(soc_dev);
		goto free_revision;
	}

	ret = FUNC2(FUNC10(soc_dev),
				 &dev_attr_soc_uid);
	if (ret)
		goto free_revision;

	return 0;

free_revision:
	FUNC7(soc_dev_attr->revision);
free_soc_id:
	FUNC7(soc_dev_attr->soc_id);
	return ret;
}