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
struct zcrypt_card {int /*<<< orphan*/  refcount; int /*<<< orphan*/  zqueues; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct zcrypt_card* FUNC2 (int,int /*<<< orphan*/ ) ; 

struct zcrypt_card *FUNC3(void)
{
	struct zcrypt_card *zc;

	zc = FUNC2(sizeof(struct zcrypt_card), GFP_KERNEL);
	if (!zc)
		return NULL;
	FUNC0(&zc->list);
	FUNC0(&zc->zqueues);
	FUNC1(&zc->refcount);
	return zc;
}