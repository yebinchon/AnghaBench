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
struct qeth_card {TYPE_1__* discipline; int /*<<< orphan*/  gdev; } ;
struct ccwgroup_device {int /*<<< orphan*/  dev; } ;
typedef  enum qeth_discipline_id { ____Placeholder_qeth_discipline_id } qeth_discipline_id ;
struct TYPE_2__ {int (* setup ) (int /*<<< orphan*/ ) ;int (* set_online ) (struct ccwgroup_device*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qeth_card*) ; 
 int QETH_DISCIPLINE_LAYER2 ; 
 int QETH_DISCIPLINE_LAYER3 ; 
 struct qeth_card* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_card*) ; 
 int FUNC3 (struct qeth_card*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ccwgroup_device*) ; 

__attribute__((used)) static int FUNC6(struct ccwgroup_device *gdev)
{
	struct qeth_card *card = FUNC1(&gdev->dev);
	int rc = 0;
	enum qeth_discipline_id def_discipline;

	if (!card->discipline) {
		def_discipline = FUNC0(card) ? QETH_DISCIPLINE_LAYER3 :
						QETH_DISCIPLINE_LAYER2;
		rc = FUNC3(card, def_discipline);
		if (rc)
			goto err;
		rc = card->discipline->setup(card->gdev);
		if (rc) {
			FUNC2(card);
			goto err;
		}
	}
	rc = card->discipline->set_online(gdev);
err:
	return rc;
}