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
struct zorro_dev {int /*<<< orphan*/  slotsize; int /*<<< orphan*/  slotaddr; int /*<<< orphan*/  rom; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
struct ConfigDev {void* cd_BoardSize; void* cd_BoardAddr; void* cd_SlotSize; void* cd_SlotAddr; int /*<<< orphan*/  cd_Rom; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  cd ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int /*<<< orphan*/ *,struct ConfigDev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ConfigDev*,int /*<<< orphan*/ ,int) ; 
 struct zorro_dev* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zorro_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct zorro_dev*) ; 

__attribute__((used)) static ssize_t FUNC8(struct file *filp, struct kobject *kobj,
				 struct bin_attribute *bin_attr,
				 char *buf, loff_t off, size_t count)
{
	struct zorro_dev *z = FUNC5(FUNC2(kobj));
	struct ConfigDev cd;

	/* Construct a ConfigDev */
	FUNC4(&cd, 0, sizeof(cd));
	cd.cd_Rom = z->rom;
	cd.cd_SlotAddr = FUNC0(z->slotaddr);
	cd.cd_SlotSize = FUNC0(z->slotsize);
	cd.cd_BoardAddr = FUNC1(FUNC7(z));
	cd.cd_BoardSize = FUNC1(FUNC6(z));

	return FUNC3(buf, count, &off, &cd, sizeof(cd));
}