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
struct pnp_card {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_card_id ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct pnp_card *card)
{
	int rc = FUNC0(&card->dev, &dev_attr_name);

	if (rc)
		return rc;

	rc = FUNC0(&card->dev, &dev_attr_card_id);
	if (rc)
		goto err_name;

	return 0;

err_name:
	FUNC1(&card->dev, &dev_attr_name);
	return rc;
}