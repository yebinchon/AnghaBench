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
union nvme_result {int /*<<< orphan*/  u32; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct nvme_ctrl {int /*<<< orphan*/  admin_q; } ;
struct TYPE_2__ {void* dword11; void* fid; int /*<<< orphan*/  opcode; } ;
struct nvme_command {TYPE_1__ features; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_QID_ANY ; 
 int FUNC0 (int /*<<< orphan*/ ,struct nvme_command*,union nvme_result*,void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_command*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct nvme_ctrl *dev, u8 op, unsigned int fid,
		unsigned int dword11, void *buffer, size_t buflen, u32 *result)
{
	struct nvme_command c;
	union nvme_result res;
	int ret;

	FUNC3(&c, 0, sizeof(c));
	c.features.opcode = op;
	c.features.fid = FUNC1(fid);
	c.features.dword11 = FUNC1(dword11);

	ret = FUNC0(dev->admin_q, &c, &res,
			buffer, buflen, 0, NVME_QID_ANY, 0, 0, false);
	if (ret >= 0 && result)
		*result = FUNC2(res.u32);
	return ret;
}