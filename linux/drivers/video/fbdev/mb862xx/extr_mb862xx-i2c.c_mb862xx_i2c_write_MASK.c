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
struct i2c_msg {int len; int /*<<< orphan*/ * buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct i2c_adapter *adap, struct i2c_msg *m)
{
	int i, ret = 0;

	for (i = 0; i < m->len; i++) {
		if (!FUNC0(adap, m->buf[i])) {
			ret = -EIO;
			break;
		}
	}
	return ret;
}