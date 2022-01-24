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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ceph_vino {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  ceph_ino_compare ; 
 int /*<<< orphan*/  FUNC0 (struct ceph_vino) ; 
 struct inode* FUNC1 (struct super_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ceph_vino*) ; 

__attribute__((used)) static inline struct inode *FUNC2(struct super_block *sb,
					    struct ceph_vino vino)
{
	ino_t t = FUNC0(vino);
	return FUNC1(sb, t, ceph_ino_compare, &vino);
}