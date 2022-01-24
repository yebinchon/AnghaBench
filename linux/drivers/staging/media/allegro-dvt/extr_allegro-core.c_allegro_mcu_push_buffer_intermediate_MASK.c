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
struct allegro_channel {int dummy; } ;
typedef  enum mcu_msg_type { ____Placeholder_mcu_msg_type } mcu_msg_type ;

/* Variables and functions */
 int MCU_MSG_TYPE_PUSH_BUFFER_INTERMEDIATE ; 
 int FUNC0 (struct allegro_channel*,int) ; 

__attribute__((used)) static int FUNC1(struct allegro_channel *channel)
{
	enum mcu_msg_type type = MCU_MSG_TYPE_PUSH_BUFFER_INTERMEDIATE;

	return FUNC0(channel, type);
}