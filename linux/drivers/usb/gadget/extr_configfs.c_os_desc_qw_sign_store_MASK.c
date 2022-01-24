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
typedef  int /*<<< orphan*/  wchar_t ;
struct gadget_info {int /*<<< orphan*/  lock; scalar_t__ qw_sign; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int OS_STRING_QW_SIGN_LEN ; 
 int /*<<< orphan*/  UTF16_LITTLE_ENDIAN ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gadget_info* FUNC3 (struct config_item*) ; 
 int FUNC4 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item, const char *page,
				     size_t len)
{
	struct gadget_info *gi = FUNC3(item);
	int res, l;

	l = FUNC0((int)len, OS_STRING_QW_SIGN_LEN >> 1);
	if (page[l - 1] == '\n')
		--l;

	FUNC1(&gi->lock);
	res = FUNC4(page, l,
			      UTF16_LITTLE_ENDIAN, (wchar_t *) gi->qw_sign,
			      OS_STRING_QW_SIGN_LEN);
	if (res > 0)
		res = len;
	FUNC2(&gi->lock);

	return res;
}