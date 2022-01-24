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
typedef  scalar_t__ u8 ;
struct ds_status {int dummy; } ;
struct ds_device {int dummy; } ;

/* Variables and functions */
 int COMM_BIT_IO ; 
 int COMM_D ; 
 int COMM_IM ; 
 int FUNC0 (struct ds_device*,scalar_t__*,int) ; 
 int FUNC1 (struct ds_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ds_device*,struct ds_status*) ; 

__attribute__((used)) static int FUNC3(struct ds_device *dev, u8 bit, u8 *tbit)
{
	int err;
	struct ds_status st;

	err = FUNC1(dev, COMM_BIT_IO | COMM_IM | (bit ? COMM_D : 0),
		0);
	if (err)
		return err;

	FUNC2(dev, &st);

	err = FUNC0(dev, tbit, sizeof(*tbit));
	if (err < 0)
		return err;

	return 0;
}