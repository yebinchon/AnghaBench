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
typedef  int /*<<< orphan*/  u8 ;
struct expander_device {int num_phys; } ;
struct domain_device {struct expander_device ex_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVER_REQ_SIZE ; 
 int /*<<< orphan*/  DISCOVER_RESP_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SMP_DISCOVER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct domain_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC4(struct domain_device *dev, int single)
{
	struct expander_device *ex = &dev->ex_dev;
	int  res = 0;
	u8   *disc_req;
	u8   *disc_resp;

	disc_req = FUNC0(DISCOVER_REQ_SIZE);
	if (!disc_req)
		return -ENOMEM;

	disc_resp = FUNC1(DISCOVER_RESP_SIZE);
	if (!disc_resp) {
		FUNC2(disc_req);
		return -ENOMEM;
	}

	disc_req[1] = SMP_DISCOVER;

	if (0 <= single && single < ex->num_phys) {
		res = FUNC3(dev, disc_req, disc_resp, single);
	} else {
		int i;

		for (i = 0; i < ex->num_phys; i++) {
			res = FUNC3(dev, disc_req,
							 disc_resp, i);
			if (res)
				goto out_err;
		}
	}
out_err:
	FUNC2(disc_resp);
	FUNC2(disc_req);
	return res;
}