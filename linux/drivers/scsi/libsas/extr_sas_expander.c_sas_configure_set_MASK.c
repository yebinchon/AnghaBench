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
struct domain_device {int* sas_addr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  CRI_REQ_SIZE ; 
 int /*<<< orphan*/  CRI_RESP_SIZE ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 int SMP_CONF_ROUTE_INFO ; 
 int SMP_RESP_NO_INDEX ; 
 int* FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int,int) ; 
 int FUNC7 (struct domain_device*,int*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct domain_device *dev, int phy_id,
			     u8 *sas_addr, int index, int include)
{
	int res;
	u8 *cri_req;
	u8 *cri_resp;

	cri_req = FUNC1(CRI_REQ_SIZE);
	if (!cri_req)
		return -ENOMEM;

	cri_resp = FUNC2(CRI_RESP_SIZE);
	if (!cri_resp) {
		FUNC4(cri_req);
		return -ENOMEM;
	}

	cri_req[1] = SMP_CONF_ROUTE_INFO;
	*(__be16 *)(cri_req+6) = FUNC3(index);
	cri_req[9] = phy_id;
	if (FUNC0(sas_addr) == 0 || !include)
		cri_req[12] |= 0x80;
	FUNC5(cri_req+16, sas_addr, SAS_ADDR_SIZE);

	res = FUNC7(dev, cri_req, CRI_REQ_SIZE, cri_resp,
			       CRI_RESP_SIZE);
	if (res)
		goto out;
	res = cri_resp[2];
	if (res == SMP_RESP_NO_INDEX) {
		FUNC6("overflow of indexes: dev %016llx phy%02d index 0x%x\n",
			FUNC0(dev->sas_addr), phy_id, index);
	}
out:
	FUNC4(cri_req);
	FUNC4(cri_resp);
	return res;
}