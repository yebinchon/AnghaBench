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
struct discover_resp {int /*<<< orphan*/  attached_sas_addr; } ;
struct smp_resp {struct discover_resp disc; } ;
struct domain_device {int dummy; } ;
typedef  enum sas_device_type { ____Placeholder_sas_device_type } sas_device_type ;

/* Variables and functions */
 int /*<<< orphan*/  DISCOVER_RESP_SIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SAS_ADDR_SIZE ; 
 struct smp_resp* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct smp_resp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct domain_device*,int,struct smp_resp*) ; 
 int FUNC5 (struct discover_resp*) ; 

__attribute__((used)) static int FUNC6(struct domain_device *dev, int phy_id,
				    u8 *sas_addr, enum sas_device_type *type)
{
	int res;
	struct smp_resp *disc_resp;
	struct discover_resp *dr;

	disc_resp = FUNC0(DISCOVER_RESP_SIZE);
	if (!disc_resp)
		return -ENOMEM;
	dr = &disc_resp->disc;

	res = FUNC4(dev, phy_id, disc_resp);
	if (res == 0) {
		FUNC2(sas_addr, disc_resp->disc.attached_sas_addr,
		       SAS_ADDR_SIZE);
		*type = FUNC5(dr);
		if (*type == 0)
			FUNC3(sas_addr, 0, SAS_ADDR_SIZE);
	}
	FUNC1(disc_resp);
	return res;
}