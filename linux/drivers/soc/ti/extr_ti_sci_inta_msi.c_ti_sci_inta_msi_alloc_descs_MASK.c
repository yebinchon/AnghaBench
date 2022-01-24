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
struct ti_sci_resource {int sets; TYPE_2__* desc; } ;
struct TYPE_3__ {scalar_t__ dev_index; } ;
struct msi_desc {int /*<<< orphan*/  list; TYPE_1__ inta; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int num; scalar_t__ start; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct msi_desc* FUNC1 (struct device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 

__attribute__((used)) static int FUNC5(struct device *dev,
				       struct ti_sci_resource *res)
{
	struct msi_desc *msi_desc;
	int set, i, count = 0;

	for (set = 0; set < res->sets; set++) {
		for (i = 0; i < res->desc[set].num; i++) {
			msi_desc = FUNC1(dev, 1, NULL);
			if (!msi_desc) {
				FUNC4(dev);
				return -ENOMEM;
			}

			msi_desc->inta.dev_index = res->desc[set].start + i;
			FUNC0(&msi_desc->list);
			FUNC3(&msi_desc->list, FUNC2(dev));
			count++;
		}
	}

	return count;
}