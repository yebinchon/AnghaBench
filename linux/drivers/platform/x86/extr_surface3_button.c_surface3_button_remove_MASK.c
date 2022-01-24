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
struct surface3_button_data {scalar_t__* children; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int BUTTON_TYPES ; 
 struct surface3_button_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct surface3_button_data *priv = FUNC0(client);

	int i;

	for (i = 0; i < BUTTON_TYPES; i++)
		if (priv->children[i])
			FUNC1(priv->children[i]);

	return 0;
}