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
struct idt_ntb_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IDT_TEMP_HIGH ; 
 int /*<<< orphan*/  IDT_TEMP_LOW ; 
 int /*<<< orphan*/  IDT_TEMP_MAX_MDEG ; 
 int /*<<< orphan*/  IDT_TEMP_MIN_MDEG ; 
 struct idt_ntb_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct idt_ntb_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				    struct device_attribute *da,
				    const char *buf, size_t count)
{
	struct idt_ntb_dev *ndev = FUNC0(dev);

	/* Just set the maximal value to the lowest temperature field and
	 * minimal value to the highest temperature field
	 */
	FUNC1(ndev, IDT_TEMP_LOW, IDT_TEMP_MAX_MDEG);
	FUNC1(ndev, IDT_TEMP_HIGH, IDT_TEMP_MIN_MDEG);

	return count;
}