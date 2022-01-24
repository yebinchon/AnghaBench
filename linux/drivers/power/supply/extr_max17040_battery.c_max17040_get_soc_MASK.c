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
typedef  int u16 ;
struct max17040_chip {int soc; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX17040_SOC ; 
 struct max17040_chip* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	struct max17040_chip *chip = FUNC0(client);
	u16 soc;

	soc = FUNC1(client, MAX17040_SOC);

	chip->soc = (soc >> 8);
}