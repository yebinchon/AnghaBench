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
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 unsigned long FUNC0 (int,unsigned int) ; 

__attribute__((used)) static void FUNC1(unsigned long **setting, enum pin_config_param param,
			unsigned arg)
{
	**setting = FUNC0(param, arg);
	(*setting)++;
}