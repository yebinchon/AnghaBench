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
struct ceph_inode_info {int dummy; } ;

/* Variables and functions */
 int CEPH_CAP_FILE_BUFFER ; 
 int CEPH_CAP_FILE_EXCL ; 
 int FUNC0 (struct ceph_inode_info*) ; 
 int FUNC1 (struct ceph_inode_info*) ; 

__attribute__((used)) static inline int FUNC2(struct ceph_inode_info *ci)
{
	int w = FUNC0(ci) | FUNC1(ci);
	if (w & CEPH_CAP_FILE_BUFFER)
		w |= CEPH_CAP_FILE_EXCL;  /* we want EXCL if dirty data */
	return w;
}