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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  u16 ;
struct vc_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_CHAR_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct vc_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ spk_pos ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct vc_data *vc)
{
	u_char tmp;
	u16 ch = FUNC0(vc, (u_short *)spk_pos, &tmp);

	FUNC2(FUNC1(MSG_CHAR_INFO), ch, ch);
}