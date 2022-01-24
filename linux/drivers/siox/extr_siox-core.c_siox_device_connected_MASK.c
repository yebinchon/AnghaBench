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
struct siox_device {int /*<<< orphan*/  status_read_clean; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct siox_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct siox_device*,int /*<<< orphan*/ ) ; 

bool FUNC2(struct siox_device *sdevice)
{
	if (!FUNC0(sdevice))
		return false;

	return !FUNC1(sdevice, sdevice->status_read_clean);
}