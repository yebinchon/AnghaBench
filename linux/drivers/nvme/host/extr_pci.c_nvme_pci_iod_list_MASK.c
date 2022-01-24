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
struct nvme_iod {scalar_t__ sg; } ;

/* Variables and functions */
 struct nvme_iod* FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct request*) ; 

__attribute__((used)) static void **FUNC2(struct request *req)
{
	struct nvme_iod *iod = FUNC0(req);
	return (void **)(iod->sg + FUNC1(req));
}