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
struct raw3215_req {struct raw3215_req* next; } ;

/* Variables and functions */
 struct raw3215_req* raw3215_freelist ; 
 int /*<<< orphan*/  raw3215_freelist_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline struct raw3215_req *FUNC2(void)
{
	struct raw3215_req *req;
	unsigned long flags;

	FUNC0(&raw3215_freelist_lock, flags);
	req = raw3215_freelist;
	raw3215_freelist = req->next;
	FUNC1(&raw3215_freelist_lock, flags);
	return req;
}