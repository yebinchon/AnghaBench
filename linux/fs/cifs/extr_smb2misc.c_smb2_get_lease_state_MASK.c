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
struct cifsInodeInfo {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cifsInodeInfo*) ; 
 scalar_t__ FUNC1 (struct cifsInodeInfo*) ; 
 scalar_t__ FUNC2 (struct cifsInodeInfo*) ; 
 int /*<<< orphan*/  SMB2_LEASE_HANDLE_CACHING ; 
 int /*<<< orphan*/  SMB2_LEASE_READ_CACHING ; 
 int /*<<< orphan*/  SMB2_LEASE_WRITE_CACHING ; 

__le32
FUNC3(struct cifsInodeInfo *cinode)
{
	__le32 lease = 0;

	if (FUNC2(cinode))
		lease |= SMB2_LEASE_WRITE_CACHING;
	if (FUNC0(cinode))
		lease |= SMB2_LEASE_HANDLE_CACHING;
	if (FUNC1(cinode))
		lease |= SMB2_LEASE_READ_CACHING;
	return lease;
}