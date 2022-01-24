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
struct request {int dummy; } ;
struct nvme_loop_iod {int /*<<< orphan*/  sg_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  SG_CHUNK_SIZE ; 
 struct nvme_loop_iod* FUNC0 (struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct request *req)
{
	struct nvme_loop_iod *iod = FUNC0(req);

	FUNC1(req);
	FUNC3(&iod->sg_table, SG_CHUNK_SIZE);
	FUNC2(req);
}