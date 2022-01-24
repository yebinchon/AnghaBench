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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt_fw_blob {int size; scalar_t__ data; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ MAX_FW_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct net_device *dev, struct rt_fw_blob *blob,
			       const char *name, u8 padding)
{
	const struct firmware *fw;
	int rc, i;
	bool ret = true;

	rc = FUNC4(&fw, name, &dev->dev);
	if (rc < 0)
		return false;

	if (FUNC5(fw->size, 4) > MAX_FW_SIZE - padding) {
		FUNC2(dev, "Firmware image %s too big for the device.\n",
			   name);
		ret = false;
		goto out;
	}

	if (padding)
		FUNC1(blob->data, 0, padding);
	if (fw->size % 4)
		FUNC1(blob->data + padding + fw->size, 0, 4);
	FUNC0(blob->data + padding, fw->data, fw->size);

	blob->size = FUNC5(fw->size, 4) + padding;

	/* Swap endian - firmware is packaged in invalid endiannes*/
	for (i = padding; i < blob->size; i += 4) {
		u32 *data = (u32 *)(blob->data + i);
		*data = FUNC6(data);
	}
out:
	FUNC3(fw);
	return ret;
}