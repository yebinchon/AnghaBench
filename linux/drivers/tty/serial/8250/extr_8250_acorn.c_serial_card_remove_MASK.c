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
struct serial_card_info {int num_ports; scalar_t__* ports; } ;
struct expansion_card {int dummy; } ;

/* Variables and functions */
 struct serial_card_info* FUNC0 (struct expansion_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct serial_card_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct expansion_card *ec)
{
	struct serial_card_info *info = FUNC0(ec);
	int i;

	FUNC1(ec, NULL);

	for (i = 0; i < info->num_ports; i++)
		if (info->ports[i] > 0)
			FUNC3(info->ports[i]);

	FUNC2(info);
}