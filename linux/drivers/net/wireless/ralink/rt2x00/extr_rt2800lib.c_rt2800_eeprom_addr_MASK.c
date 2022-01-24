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
struct rt2x00_dev {int dummy; } ;
typedef  enum rt2800_eeprom_word { ____Placeholder_rt2800_eeprom_word } rt2800_eeprom_word ;

/* Variables and functions */
 unsigned int FUNC0 (struct rt2x00_dev*,int const) ; 
 void* FUNC1 (struct rt2x00_dev*,unsigned int) ; 

__attribute__((used)) static void *FUNC2(struct rt2x00_dev *rt2x00dev,
				const enum rt2800_eeprom_word word)
{
	unsigned int index;

	index = FUNC0(rt2x00dev, word);
	return FUNC1(rt2x00dev, index);
}