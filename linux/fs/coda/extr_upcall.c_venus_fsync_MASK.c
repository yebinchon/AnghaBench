#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union outputArgs {int dummy; } outputArgs ;
struct CodaFid {int dummy; } ;
struct TYPE_2__ {struct CodaFid VFid; } ;
union inputArgs {TYPE_1__ coda_fsync; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_FSYNC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*,union inputArgs*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  fsync ; 
 int /*<<< orphan*/  FUNC4 (union inputArgs*) ; 

int FUNC5(struct super_block *sb, struct CodaFid *fid)
{
        union inputArgs *inp;
        union outputArgs *outp; 
	int insize, outsize, error;
	
	insize=FUNC0(fsync);
	FUNC1(CODA_FSYNC);

	inp->coda_fsync.VFid = *fid;
	error = FUNC2(FUNC3(sb), insize, &outsize, inp);

	FUNC4(inp);
	return error;
}