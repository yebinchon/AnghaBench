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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct hvc_struct {int vtermno; } ;

/* Variables and functions */
 struct hvc_struct* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hvc_opal_boot_priv ; 
 int /*<<< orphan*/ ** hvc_opal_privs ; 
 int FUNC1 (struct hvc_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *dev)
{
	struct hvc_struct *hp = FUNC0(&dev->dev);
	int rc, termno;

	termno = hp->vtermno;
	rc = FUNC1(hp);
	if (rc == 0) {
		if (hvc_opal_privs[termno] != &hvc_opal_boot_priv)
			FUNC2(hvc_opal_privs[termno]);
		hvc_opal_privs[termno] = NULL;
	}
	return rc;
}