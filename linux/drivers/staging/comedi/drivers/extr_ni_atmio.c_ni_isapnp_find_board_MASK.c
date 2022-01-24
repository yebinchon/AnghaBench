#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pnp_dev {int /*<<< orphan*/  card; } ;
struct TYPE_3__ {int /*<<< orphan*/  isapnp_id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EAGAIN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,char,char) ; 
 TYPE_1__* ni_boards ; 
 scalar_t__ FUNC3 (struct pnp_dev*) ; 
 scalar_t__ FUNC4 (struct pnp_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pnp_dev*) ; 
 struct pnp_dev* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pnp_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pnp_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pnp_dev **dev)
{
	struct pnp_dev *isapnp_dev = NULL;
	int i;

	for (i = 0; i < FUNC0(ni_boards); i++) {
		isapnp_dev =
			FUNC6(NULL,
				     FUNC2('N', 'I', 'C'),
				     FUNC1(ni_boards[i].isapnp_id),
				     NULL);

		if (!isapnp_dev || !isapnp_dev->card)
			continue;

		if (FUNC4(isapnp_dev) < 0)
			continue;

		if (FUNC3(isapnp_dev) < 0) {
			FUNC5(isapnp_dev);
			return -EAGAIN;
		}

		if (!FUNC8(isapnp_dev, 0) ||
		    !FUNC7(isapnp_dev, 0)) {
			FUNC5(isapnp_dev);
			return -ENOMEM;
		}
		break;
	}
	if (i == FUNC0(ni_boards))
		return -ENODEV;
	*dev = isapnp_dev;
	return 0;
}