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
struct ceph_rw_context {int /*<<< orphan*/  list; } ;
struct ceph_file_info {int /*<<< orphan*/  rw_contexts_lock; int /*<<< orphan*/  rw_contexts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct ceph_file_info *cf,
				       struct ceph_rw_context *ctx)
{
	FUNC1(&cf->rw_contexts_lock);
	FUNC0(&ctx->list, &cf->rw_contexts);
	FUNC2(&cf->rw_contexts_lock);
}