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
struct nfcsim {int up; } ;
struct nfc_digital_dev {int dummy; } ;

/* Variables and functions */
 struct nfcsim* FUNC0 (struct nfc_digital_dev*) ; 

__attribute__((used)) static int FUNC1(struct nfc_digital_dev *ddev, bool on)
{
	struct nfcsim *dev = FUNC0(ddev);

	dev->up = on;

	return 0;
}