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
struct snic {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct snic* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (struct snic*) ; 
 char** snic_state_str ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct device *dev,
		struct device_attribute *attr,
		char *buf)
{
	struct snic *snic = FUNC1(FUNC0(dev));

	return FUNC3(buf, PAGE_SIZE, "%s\n",
			snic_state_str[FUNC2(snic)]);
}