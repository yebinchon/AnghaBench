#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  f_ffree; int /*<<< orphan*/  f_files; int /*<<< orphan*/  f_bavail; int /*<<< orphan*/  f_bfree; int /*<<< orphan*/  f_blocks; } ;
struct TYPE_4__ {TYPE_1__ stat; } ;
union outputArgs {TYPE_2__ coda_statfs; } ;
typedef  union inputArgs {int dummy; } inputArgs ;
struct kstatfs {int /*<<< orphan*/  f_ffree; int /*<<< orphan*/  f_files; int /*<<< orphan*/  f_bavail; int /*<<< orphan*/  f_bfree; int /*<<< orphan*/  f_blocks; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_STATFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*,union inputArgs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (union inputArgs*) ; 
 int /*<<< orphan*/  statfs ; 

int FUNC5(struct dentry *dentry, struct kstatfs *sfs)
{ 
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;
        
	insize = FUNC0(statfs);
	FUNC1(CODA_STATFS);

	error = FUNC2(FUNC3(dentry->d_sb), insize, &outsize, inp);
	if (!error) {
		sfs->f_blocks = outp->coda_statfs.stat.f_blocks;
		sfs->f_bfree  = outp->coda_statfs.stat.f_bfree;
		sfs->f_bavail = outp->coda_statfs.stat.f_bavail;
		sfs->f_files  = outp->coda_statfs.stat.f_files;
		sfs->f_ffree  = outp->coda_statfs.stat.f_ffree;
	}

	FUNC4(inp);
        return error;
}