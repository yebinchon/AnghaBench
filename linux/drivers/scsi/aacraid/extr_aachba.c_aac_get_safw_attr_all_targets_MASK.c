#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct aac_dev {TYPE_1__** hba_map; } ;
struct aac_ciss_identify_pd {int dummy; } ;
struct TYPE_2__ {struct aac_ciss_identify_pd* safw_identify_resp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aac_dev*,int) ; 
 int FUNC1 (struct aac_dev*,int) ; 
 int FUNC2 (struct aac_dev*) ; 
 int FUNC3 (struct aac_dev*,int) ; 
 int FUNC4 (struct aac_dev*,struct aac_ciss_identify_pd**,int,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct aac_dev *dev)
{
	int i;
	int rcode = 0;
	u32 lun_count;
	u32 bus;
	u32 target;
	struct aac_ciss_identify_pd *identify_resp = NULL;

	lun_count = FUNC2(dev);

	for (i = 0; i < lun_count; ++i) {

		bus = FUNC1(dev, i);
		target = FUNC3(dev, i);

		rcode = FUNC4(dev,
						&identify_resp, bus, target);

		if (FUNC5(rcode < 0))
			goto free_identify_resp;

		dev->hba_map[bus][target].safw_identify_resp = identify_resp;
	}

out:
	return rcode;
free_identify_resp:
	FUNC0(dev, i);
	goto out;
}