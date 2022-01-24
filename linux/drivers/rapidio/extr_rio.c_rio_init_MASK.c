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
struct rio_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RIO_ANY_ID ; 
 int /*<<< orphan*/  FUNC0 (struct rio_dev*) ; 
 struct rio_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rio_dev*) ; 

__attribute__((used)) static int FUNC2(void)
{
	struct rio_dev *dev = NULL;

	while ((dev = FUNC1(RIO_ANY_ID, RIO_ANY_ID, dev)) != NULL) {
		FUNC0(dev);
	}
	return 0;
}