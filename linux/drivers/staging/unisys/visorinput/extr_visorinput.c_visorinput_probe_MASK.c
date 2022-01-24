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
struct visor_device {int /*<<< orphan*/  visorchannel; } ;
typedef  int /*<<< orphan*/  guid_t ;
typedef  enum visorinput_dev_type { ____Placeholder_visorinput_dev_type } visorinput_dev_type ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct visor_device*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  visor_keyboard_channel_guid ; 
 int /*<<< orphan*/  visor_mouse_channel_guid ; 
 int /*<<< orphan*/  FUNC2 (struct visor_device*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int visorinput_keyboard ; 
 int visorinput_mouse ; 

__attribute__((used)) static int FUNC4(struct visor_device *dev)
{
	const guid_t *guid;
	enum visorinput_dev_type dtype;

	guid = FUNC3(dev->visorchannel);
	if (FUNC1(guid, &visor_mouse_channel_guid))
		dtype = visorinput_mouse;
	else if (FUNC1(guid, &visor_keyboard_channel_guid))
		dtype = visorinput_keyboard;
	else
		return -ENODEV;
	FUNC2(dev);
	if (!FUNC0(dev, dtype))
		return -ENOMEM;
	return 0;
}