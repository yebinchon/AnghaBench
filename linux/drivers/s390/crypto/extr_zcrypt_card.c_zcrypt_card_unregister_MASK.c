#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct zcrypt_card {TYPE_3__* card; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
struct TYPE_6__ {TYPE_2__ ap_dev; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zcrypt_card_attr_group ; 
 int /*<<< orphan*/  zcrypt_list_lock ; 

void FUNC5(struct zcrypt_card *zc)
{
	FUNC0(DBF_INFO, "card=%02x unregister\n", zc->card->id);

	FUNC2(&zcrypt_list_lock);
	FUNC1(&zc->list);
	FUNC3(&zcrypt_list_lock);
	FUNC4(&zc->card->ap_dev.device.kobj,
			   &zcrypt_card_attr_group);
}