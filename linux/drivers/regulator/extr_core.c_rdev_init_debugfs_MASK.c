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
struct TYPE_3__ {struct device* parent; } ;
struct regulator_dev {int /*<<< orphan*/  bypass_count; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  open_count; int /*<<< orphan*/  use_count; TYPE_2__* desc; TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_4__ {char const* name; } ;

/* Variables and functions */
 int NAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debugfs_root ; 
 char* FUNC2 (struct device*) ; 
 char* FUNC3 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct regulator_dev*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,char const*) ; 

__attribute__((used)) static void FUNC6(struct regulator_dev *rdev)
{
	struct device *parent = rdev->dev.parent;
	const char *rname = FUNC3(rdev);
	char name[NAME_MAX];

	/* Avoid duplicate debugfs directory names */
	if (parent && rname == rdev->desc->name) {
		FUNC5(name, sizeof(name), "%s-%s", FUNC2(parent),
			 rname);
		rname = name;
	}

	rdev->debugfs = FUNC0(rname, debugfs_root);
	if (!rdev->debugfs) {
		FUNC4(rdev, "Failed to create debugfs directory\n");
		return;
	}

	FUNC1("use_count", 0444, rdev->debugfs,
			   &rdev->use_count);
	FUNC1("open_count", 0444, rdev->debugfs,
			   &rdev->open_count);
	FUNC1("bypass_count", 0444, rdev->debugfs,
			   &rdev->bypass_count);
}