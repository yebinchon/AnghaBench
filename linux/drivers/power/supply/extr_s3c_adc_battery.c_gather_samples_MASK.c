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
struct s3c_adc_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct s3c_adc_client*,int) ; 

__attribute__((used)) static int FUNC1(struct s3c_adc_client *client, int num, int channel)
{
	int value, i;

	/* default to 1 if nothing is set */
	if (num < 1)
		num = 1;

	value = 0;
	for (i = 0; i < num; i++)
		value += FUNC0(client, channel);
	value /= num;

	return value;
}