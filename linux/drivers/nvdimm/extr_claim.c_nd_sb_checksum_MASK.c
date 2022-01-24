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
typedef  int /*<<< orphan*/  u64 ;
struct nd_pfn_sb {int dummy; } ;
struct nd_gen_sb {int /*<<< orphan*/  checksum; } ;
struct btt_sb {int dummy; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SZ_4K ; 
 int /*<<< orphan*/  FUNC1 (struct nd_gen_sb*,int,int) ; 

u64 FUNC2(struct nd_gen_sb *nd_gen_sb)
{
	u64 sum;
	__le64 sum_save;

	FUNC0(sizeof(struct btt_sb) != SZ_4K);
	FUNC0(sizeof(struct nd_pfn_sb) != SZ_4K);
	FUNC0(sizeof(struct nd_gen_sb) != SZ_4K);

	sum_save = nd_gen_sb->checksum;
	nd_gen_sb->checksum = 0;
	sum = FUNC1(nd_gen_sb, sizeof(*nd_gen_sb), 1);
	nd_gen_sb->checksum = sum_save;
	return sum;
}