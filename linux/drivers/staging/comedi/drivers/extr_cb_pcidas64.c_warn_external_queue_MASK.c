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
struct comedi_device {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static inline void FUNC1(struct comedi_device *dev)
{
	FUNC0(dev->class_dev,
		"AO command and AI external channel queue cannot be used simultaneously\n");
	FUNC0(dev->class_dev,
		"Use internal AI channel queue (channels must be consecutive and use same range/aref)\n");
}