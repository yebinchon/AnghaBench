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
struct afs_vnode {int dummy; } ;
typedef  enum afs_file_error { ____Placeholder_afs_file_error } afs_file_error ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct afs_vnode*,int,int) ; 

__attribute__((used)) static inline int FUNC1(struct afs_vnode *vnode, enum afs_file_error where)
{
	FUNC0(vnode, -EIO, where);
	return -EIO;
}