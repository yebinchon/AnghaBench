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
struct p9_rdir {int dummy; } ;
struct p9_fid {struct p9_rdir* rdir; } ;
struct file {struct p9_fid* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct p9_rdir* FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct p9_rdir *FUNC1(struct file *filp, int buflen)
{
	struct p9_fid *fid = filp->private_data;
	if (!fid->rdir)
		fid->rdir = FUNC0(sizeof(struct p9_rdir) + buflen, GFP_KERNEL);
	return fid->rdir;
}