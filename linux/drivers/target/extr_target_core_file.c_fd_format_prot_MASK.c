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
struct TYPE_4__ {int block_size; int /*<<< orphan*/  pi_prot_type; } ;
struct se_device {unsigned long long prot_length; TYPE_1__* transport; TYPE_2__ dev_attrib; } ;
struct TYPE_3__ {scalar_t__ (* get_blocks ) (struct se_device*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int FDBD_FORMAT_UNIT_SIZE ; 
 int FUNC0 (struct se_device*,int /*<<< orphan*/ ,scalar_t__,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct se_device*) ; 
 scalar_t__ FUNC5 (struct se_device*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 unsigned char* FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct se_device *dev)
{
	unsigned char *buf;
	int unit_size = FDBD_FORMAT_UNIT_SIZE * dev->dev_attrib.block_size;
	int ret;

	if (!dev->dev_attrib.pi_prot_type) {
		FUNC3("Unable to format_prot while pi_prot_type == 0\n");
		return -ENODEV;
	}

	buf = FUNC7(unit_size);
	if (!buf) {
		FUNC3("Unable to allocate FILEIO prot buf\n");
		return -ENOMEM;
	}

	FUNC2("Using FILEIO prot_length: %llu\n",
		 (unsigned long long)(dev->transport->get_blocks(dev) + 1) *
					dev->prot_length);

	FUNC1(buf, 0xff, unit_size);
	ret = FUNC0(dev, 0, dev->transport->get_blocks(dev) + 1,
			      buf, unit_size);
	FUNC6(buf);
	return ret;
}