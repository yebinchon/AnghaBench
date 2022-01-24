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
typedef  int /*<<< orphan*/  u64 ;
struct ceph_mds_client {int /*<<< orphan*/  cap_flushing_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ceph_mds_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ceph_mds_client *mdsc,
			    u64 want_flush_tid)
{
	FUNC1("check_caps_flush want %llu\n", want_flush_tid);

	FUNC2(mdsc->cap_flushing_wq,
		   FUNC0(mdsc, want_flush_tid));

	FUNC1("check_caps_flush ok, flushed thru %llu\n", want_flush_tid);
}