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
struct hvc_iucv_private {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct hvc_iucv_private* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hvc_iucv_private*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct hvc_iucv_private *priv = FUNC0(dev);

	FUNC2();
	FUNC1(priv);
	FUNC3();

	return 0;
}