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
struct fsg_dev {int /*<<< orphan*/  bulk_in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fsg_dev*,char*) ; 
 int EAGAIN ; 
 int EINTR ; 
 int /*<<< orphan*/  FUNC1 (struct fsg_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsg_dev*,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct fsg_dev *fsg)
{
	int	rc;

	FUNC0(fsg, "bulk-in set wedge\n");
	rc = FUNC4(fsg->bulk_in);
	if (rc == -EAGAIN)
		FUNC1(fsg, "delayed bulk-in endpoint wedge\n");
	while (rc != 0) {
		if (rc != -EAGAIN) {
			FUNC2(fsg, "usb_ep_set_wedge -> %d\n", rc);
			rc = 0;
			break;
		}

		/* Wait for a short time and then try again */
		if (FUNC3(100) != 0)
			return -EINTR;
		rc = FUNC4(fsg->bulk_in);
	}
	return rc;
}