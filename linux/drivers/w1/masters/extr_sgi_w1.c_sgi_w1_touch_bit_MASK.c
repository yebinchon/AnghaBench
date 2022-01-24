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
typedef  scalar_t__ u8 ;
struct sgi_w1_device {int /*<<< orphan*/  mcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC4(void *data, u8 bit)
{
	struct sgi_w1_device *dev = data;
	u8 ret;

	if (bit)
		FUNC3(FUNC0(6, 13), dev->mcr);
	else
		FUNC3(FUNC0(80, 30), dev->mcr);

	ret = FUNC1(dev->mcr);
	if (bit)
		FUNC2(100); /* recovery */
	return ret;
}