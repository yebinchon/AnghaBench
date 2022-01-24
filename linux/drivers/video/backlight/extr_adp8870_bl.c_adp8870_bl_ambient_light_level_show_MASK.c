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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adp8870_bl {int /*<<< orphan*/  lock; int /*<<< orphan*/  client; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ADP8870_PH1LEVH ; 
 int /*<<< orphan*/  ADP8870_PH1LEVL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct adp8870_bl* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
				     struct device_attribute *attr, char *buf)
{
	struct adp8870_bl *data = FUNC1(dev);
	int error;
	uint8_t reg_val;
	uint16_t ret_val;

	FUNC2(&data->lock);
	error = FUNC0(data->client, ADP8870_PH1LEVL, &reg_val);
	if (error < 0) {
		FUNC3(&data->lock);
		return error;
	}
	ret_val = reg_val;
	error = FUNC0(data->client, ADP8870_PH1LEVH, &reg_val);
	FUNC3(&data->lock);

	if (error < 0)
		return error;

	/* Return 13-bit conversion value for the first light sensor */
	ret_val += (reg_val & 0x1F) << 8;

	return FUNC4(buf, "%u\n", ret_val);
}