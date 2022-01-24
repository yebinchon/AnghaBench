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
struct acm {TYPE_1__* data; int /*<<< orphan*/  read_urbs_free; int /*<<< orphan*/ * read_urbs; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct acm *acm, int index, gfp_t mem_flags)
{
	int res;

	if (!FUNC3(index, &acm->read_urbs_free))
		return 0;

	res = FUNC4(acm->read_urbs[index], mem_flags);
	if (res) {
		if (res != -EPERM && res != -ENODEV) {
			FUNC0(&acm->data->dev,
				"urb %d failed submission with %d\n",
				index, res);
		}
		FUNC2(index, &acm->read_urbs_free);
		return res;
	} else {
		FUNC1(&acm->data->dev, "submitted urb %d\n", index);
	}

	return 0;
}