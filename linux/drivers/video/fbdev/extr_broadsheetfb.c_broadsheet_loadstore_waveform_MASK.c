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
struct firmware {int size; int /*<<< orphan*/  data; } ;
struct fb_info {struct broadsheetfb_par* par; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct broadsheetfb_par {int /*<<< orphan*/  io_lock; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct broadsheetfb_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct fb_info* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char*,struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
						struct device_attribute *attr,
						const char *buf, size_t len)
{
	int err;
	struct fb_info *info = FUNC2(dev);
	struct broadsheetfb_par *par = info->par;
	const struct firmware *fw_entry;

	if (len < 1)
		return -EINVAL;

	err = FUNC7(&fw_entry, "broadsheet.wbf", dev);
	if (err < 0) {
		FUNC1(dev, "Failed to get broadsheet waveform\n");
		goto err_failed;
	}

	/* try to enforce reasonable min max on waveform */
	if ((fw_entry->size < 8*1024) || (fw_entry->size > 64*1024)) {
		FUNC1(dev, "Invalid waveform\n");
		err = -EINVAL;
		goto err_fw;
	}

	FUNC4(&(par->io_lock));
	err = FUNC0(par, fw_entry->data,
							fw_entry->size);

	FUNC5(&(par->io_lock));
	if (err < 0) {
		FUNC1(dev, "Failed to store broadsheet waveform\n");
		goto err_fw;
	}

	FUNC3(dev, "Stored broadsheet waveform, size %zd\n", fw_entry->size);

	err = len;

err_fw:
	FUNC6(fw_entry);
err_failed:
	return err;
}