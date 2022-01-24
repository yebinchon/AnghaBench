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
struct slgt_info {int /*<<< orphan*/  tbuf_count; int /*<<< orphan*/  tbufs; int /*<<< orphan*/  rbuf_count; int /*<<< orphan*/  rbufs; scalar_t__ bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slgt_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct slgt_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct slgt_info*) ; 

__attribute__((used)) static void FUNC3(struct slgt_info *info)
{
	if (info->bufs) {
		FUNC0(info, info->rbufs, info->rbuf_count);
		FUNC0(info, info->tbufs, info->tbuf_count);
		FUNC1(info);
	}
	FUNC2(info);
}