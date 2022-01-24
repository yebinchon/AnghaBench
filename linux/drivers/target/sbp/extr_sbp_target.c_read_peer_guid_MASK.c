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
typedef  int u64 ;
struct sbp_management_request {int /*<<< orphan*/  speed; int /*<<< orphan*/  generation; int /*<<< orphan*/  node_addr; int /*<<< orphan*/  card; } ;
typedef  int /*<<< orphan*/  low ;
typedef  int /*<<< orphan*/  high ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int CSR_CONFIG_ROM ; 
 int CSR_REGISTER_BASE ; 
 int RCODE_COMPLETE ; 
 int /*<<< orphan*/  TCODE_READ_QUADLET_REQUEST ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(u64 *guid, const struct sbp_management_request *req)
{
	int ret;
	__be32 high, low;

	ret = FUNC1(req->card, TCODE_READ_QUADLET_REQUEST,
			req->node_addr, req->generation, req->speed,
			(CSR_REGISTER_BASE | CSR_CONFIG_ROM) + 3 * 4,
			&high, sizeof(high));
	if (ret != RCODE_COMPLETE)
		return ret;

	ret = FUNC1(req->card, TCODE_READ_QUADLET_REQUEST,
			req->node_addr, req->generation, req->speed,
			(CSR_REGISTER_BASE | CSR_CONFIG_ROM) + 4 * 4,
			&low, sizeof(low));
	if (ret != RCODE_COMPLETE)
		return ret;

	*guid = (u64)FUNC0(high) << 32 | FUNC0(low);

	return RCODE_COMPLETE;
}