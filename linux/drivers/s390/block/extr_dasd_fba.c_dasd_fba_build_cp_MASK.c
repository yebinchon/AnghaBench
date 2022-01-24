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
struct dasd_device {int dummy; } ;
struct dasd_ccw_req {int dummy; } ;
struct dasd_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ REQ_OP_WRITE_ZEROES ; 
 struct dasd_ccw_req* FUNC0 (struct dasd_device*,struct dasd_block*,struct request*) ; 
 struct dasd_ccw_req* FUNC1 (struct dasd_device*,struct dasd_block*,struct request*) ; 
 scalar_t__ FUNC2 (struct request*) ; 

__attribute__((used)) static struct dasd_ccw_req *FUNC3(struct dasd_device *memdev,
					      struct dasd_block *block,
					      struct request *req)
{
	if (FUNC2(req) == REQ_OP_DISCARD || FUNC2(req) == REQ_OP_WRITE_ZEROES)
		return FUNC0(memdev, block, req);
	else
		return FUNC1(memdev, block, req);
}