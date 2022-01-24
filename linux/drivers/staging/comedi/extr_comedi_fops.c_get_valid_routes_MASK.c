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
struct comedi_device {unsigned int (* get_valid_routes ) (struct comedi_device*,unsigned int,unsigned int*) ;int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct comedi_device*,unsigned int,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, unsigned int *data)
{
	FUNC0(&dev->mutex);
	data[1] = dev->get_valid_routes(dev, data[1], data + 2);
	return 0;
}