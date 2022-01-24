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
struct coda_vattr {int dummy; } ;
struct TYPE_4__ {struct coda_vattr attr; } ;
union outputArgs {TYPE_2__ coda_getattr; } ;
struct CodaFid {int dummy; } ;
struct TYPE_3__ {struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_getattr; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_GETATTR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*,union inputArgs*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  getattr ; 
 int /*<<< orphan*/  FUNC4 (union inputArgs*) ; 

int FUNC5(struct super_block *sb, struct CodaFid *fid, 
		     struct coda_vattr *attr) 
{
        union inputArgs *inp;
        union outputArgs *outp;
        int insize, outsize, error;

        insize = FUNC0(getattr); 
	FUNC1(CODA_GETATTR);
        inp->coda_getattr.VFid = *fid;

	error = FUNC2(FUNC3(sb), insize, &outsize, inp);
	if (!error)
		*attr = outp->coda_getattr.attr;

	FUNC4(inp);
        return error;
}