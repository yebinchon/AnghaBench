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
typedef  int /*<<< orphan*/  u_short ;
typedef  scalar_t__ u_long ;
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PUNC ; 
 int /*<<< orphan*/  SPACE ; 
 int /*<<< orphan*/ * buf ; 
 scalar_t__ FUNC0 (struct vc_data*) ; 
 int /*<<< orphan*/  spk_punc_mask ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct vc_data *vc)
{
	u_long cnt = FUNC0(vc);
	u_short saved_punc_mask = spk_punc_mask;

	if (cnt == 0)
		return;
	spk_punc_mask = PUNC;
	buf[cnt++] = SPACE;
	FUNC1(buf, cnt);
	spk_punc_mask = saved_punc_mask;
}