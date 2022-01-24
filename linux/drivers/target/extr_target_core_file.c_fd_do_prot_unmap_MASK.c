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
struct se_cmd {int /*<<< orphan*/  se_dev; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(struct se_cmd *cmd, sector_t lba, sector_t nolb)
{
	void *buf;
	int rc;

	buf = (void *)FUNC0(GFP_KERNEL);
	if (!buf) {
		FUNC4("Unable to allocate FILEIO prot buf\n");
		return -ENOMEM;
	}
	FUNC3(buf, 0xff, PAGE_SIZE);

	rc = FUNC1(cmd->se_dev, lba, nolb, buf, PAGE_SIZE);

	FUNC2((unsigned long)buf);

	return rc;
}