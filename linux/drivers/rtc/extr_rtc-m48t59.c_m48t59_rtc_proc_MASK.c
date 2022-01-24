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
struct seq_file {int dummy; } ;
struct m48t59_private {int /*<<< orphan*/  lock; } ;
struct m48t59_plat_data {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M48T59_FLAGS ; 
 int M48T59_FLAGS_BF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct m48t59_private* FUNC1 (struct device*) ; 
 struct m48t59_plat_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct seq_file *seq)
{
	struct m48t59_plat_data *pdata = FUNC2(dev);
	struct m48t59_private *m48t59 = FUNC1(dev);
	unsigned long flags;
	u8 val;

	FUNC4(&m48t59->lock, flags);
	val = FUNC0(M48T59_FLAGS);
	FUNC5(&m48t59->lock, flags);

	FUNC3(seq, "battery\t\t: %s\n",
		 (val & M48T59_FLAGS_BF) ? "low" : "normal");
	return 0;
}