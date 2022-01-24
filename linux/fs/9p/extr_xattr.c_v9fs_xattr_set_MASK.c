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
struct p9_fid {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 struct p9_fid* FUNC0 (struct dentry*) ; 
 int FUNC1 (struct p9_fid*,char const*,void const*,size_t,int) ; 

int FUNC2(struct dentry *dentry, const char *name,
		   const void *value, size_t value_len, int flags)
{
	struct p9_fid *fid = FUNC0(dentry);
	return FUNC1(fid, name, value, value_len, flags);
}