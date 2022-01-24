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
struct request {int dummy; } ;
struct TYPE_2__ {int status; scalar_t__ retries; } ;

/* Variables and functions */
 int NVME_SC_DNR ; 
 scalar_t__ FUNC0 (struct request*) ; 
 scalar_t__ nvme_max_retries ; 
 TYPE_1__* FUNC1 (struct request*) ; 

__attribute__((used)) static inline bool FUNC2(struct request *req)
{
	if (FUNC0(req))
		return false;
	if (FUNC1(req)->status & NVME_SC_DNR)
		return false;
	if (FUNC1(req)->retries >= nvme_max_retries)
		return false;
	return true;
}