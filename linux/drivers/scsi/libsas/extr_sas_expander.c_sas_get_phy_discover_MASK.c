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
struct smp_resp {int result; } ;
struct domain_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVER_REQ_SIZE ; 
 int /*<<< orphan*/  DISCOVER_RESP_SIZE ; 
 int ENOMEM ; 
 int SMP_DISCOVER ; 
 int SMP_RESP_FUNC_ACC ; 
 int* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (struct domain_device*,int*,int /*<<< orphan*/ ,struct smp_resp*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct domain_device *dev,
				int phy_id, struct smp_resp *disc_resp)
{
	int res;
	u8 *disc_req;

	disc_req = FUNC0(DISCOVER_REQ_SIZE);
	if (!disc_req)
		return -ENOMEM;

	disc_req[1] = SMP_DISCOVER;
	disc_req[9] = phy_id;

	res = FUNC2(dev, disc_req, DISCOVER_REQ_SIZE,
			       disc_resp, DISCOVER_RESP_SIZE);
	if (res)
		goto out;
	else if (disc_resp->result != SMP_RESP_FUNC_ACC) {
		res = disc_resp->result;
		goto out;
	}
out:
	FUNC1(disc_req);
	return res;
}