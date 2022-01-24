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
typedef  int /*<<< orphan*/  u16 ;
struct nvmet_req {TYPE_1__* ns; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvmet_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

u16 FUNC2(struct nvmet_req *req)
{
	return FUNC0(req, FUNC1(req->ns->file, 1));
}