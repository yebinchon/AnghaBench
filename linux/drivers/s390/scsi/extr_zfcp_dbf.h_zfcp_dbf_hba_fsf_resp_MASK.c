#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zfcp_fsf_req {TYPE_2__* adapter; } ;
struct TYPE_4__ {TYPE_1__* dbf; } ;
struct TYPE_3__ {int /*<<< orphan*/  hba; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct zfcp_fsf_req*) ; 

__attribute__((used)) static inline
void FUNC2(char *tag, int level, struct zfcp_fsf_req *req)
{
	if (FUNC0(req->adapter->dbf->hba, level))
		FUNC1(tag, level, req);
}