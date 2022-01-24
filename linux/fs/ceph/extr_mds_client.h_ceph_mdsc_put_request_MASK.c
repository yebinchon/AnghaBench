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
struct ceph_mds_request {int /*<<< orphan*/  r_kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  ceph_mdsc_release_request ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct ceph_mds_request *req)
{
	FUNC0(&req->r_kref, ceph_mdsc_release_request);
}