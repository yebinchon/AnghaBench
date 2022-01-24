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
struct TYPE_3__ {int /*<<< orphan*/  netfid; } ;
struct cifsFileInfo {TYPE_1__ fid; int /*<<< orphan*/  tlink; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  scalar_t__ __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tgid; } ;

/* Variables and functions */
 int FUNC0 (unsigned int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const unsigned int xid, struct cifsFileInfo *cfile, __u64 offset,
	       __u64 length, __u32 type, int lock, int unlock, bool wait)
{
	return FUNC0(xid, FUNC1(cfile->tlink), cfile->fid.netfid,
			   current->tgid, length, offset, unlock, lock,
			   (__u8)type, wait, 0);
}