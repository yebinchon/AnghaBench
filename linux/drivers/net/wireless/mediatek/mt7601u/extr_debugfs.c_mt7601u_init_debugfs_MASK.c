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
struct mt7601u_dev {int /*<<< orphan*/  debugfs_reg; int /*<<< orphan*/  temp_mode; int /*<<< orphan*/  raw_temp; TYPE_2__* hw; } ;
struct dentry {int dummy; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {int /*<<< orphan*/  debugfsdir; } ;

/* Variables and functions */
 struct dentry* FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct dentry*,struct mt7601u_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fops_ampdu_stat ; 
 int /*<<< orphan*/  fops_eeprom_param ; 
 int /*<<< orphan*/  fops_regval ; 

void FUNC4(struct mt7601u_dev *dev)
{
	struct dentry *dir;

	dir = FUNC0("mt7601u", dev->hw->wiphy->debugfsdir);
	if (!dir)
		return;

	FUNC3("temperature", 0400, dir, &dev->raw_temp);
	FUNC2("temp_mode", 0400, dir, &dev->temp_mode);

	FUNC2("regidx", 0600, dir, &dev->debugfs_reg);
	FUNC1("regval", 0600, dir, dev, &fops_regval);
	FUNC1("ampdu_stat", 0400, dir, dev, &fops_ampdu_stat);
	FUNC1("eeprom_param", 0400, dir, dev, &fops_eeprom_param);
}