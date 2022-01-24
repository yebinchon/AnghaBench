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
struct i2c_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_device*) ; 
 int SMBAUXCTL_E32B ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_device *priv)
{
	FUNC2(FUNC1(FUNC0(priv)) | SMBAUXCTL_E32B, FUNC0(priv));
	if ((FUNC1(FUNC0(priv)) & SMBAUXCTL_E32B) == 0)
		return -EIO;
	return 0;
}