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
struct usb_composite_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_acm_cfg1 ; 
 int /*<<< orphan*/  f_acm_cfg2 ; 
 int /*<<< orphan*/  f_ecm_cfg1 ; 
 int /*<<< orphan*/  f_ecm_cfg2 ; 
 int /*<<< orphan*/  f_msg_cfg1 ; 
 int /*<<< orphan*/  f_msg_cfg2 ; 
 int /*<<< orphan*/  f_obex1_cfg1 ; 
 int /*<<< orphan*/  f_obex1_cfg2 ; 
 int /*<<< orphan*/  f_obex2_cfg1 ; 
 int /*<<< orphan*/  f_obex2_cfg2 ; 
 int /*<<< orphan*/  f_phonet_cfg1 ; 
 int /*<<< orphan*/  f_phonet_cfg2 ; 
 int /*<<< orphan*/  fi_acm ; 
 int /*<<< orphan*/  fi_ecm ; 
 int /*<<< orphan*/  fi_msg ; 
 int /*<<< orphan*/  fi_obex1 ; 
 int /*<<< orphan*/  fi_obex2 ; 
 int /*<<< orphan*/  fi_phonet ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_composite_dev *cdev)
{
	if (!FUNC1(f_obex1_cfg2))
		FUNC2(f_obex1_cfg2);
	if (!FUNC1(f_obex2_cfg2))
		FUNC2(f_obex2_cfg2);
	if (!FUNC1(f_obex1_cfg1))
		FUNC2(f_obex1_cfg1);
	if (!FUNC1(f_obex2_cfg1))
		FUNC2(f_obex2_cfg1);
	if (!FUNC1(f_phonet_cfg1))
		FUNC2(f_phonet_cfg1);
	if (!FUNC1(f_phonet_cfg2))
		FUNC2(f_phonet_cfg2);
	FUNC2(f_acm_cfg1);
	FUNC2(f_acm_cfg2);
	FUNC2(f_ecm_cfg1);
	FUNC2(f_ecm_cfg2);
	FUNC2(f_msg_cfg1);
	FUNC2(f_msg_cfg2);

	FUNC3(fi_msg);
	FUNC3(fi_ecm);
	if (!FUNC0(fi_obex2))
		FUNC3(fi_obex2);
	if (!FUNC0(fi_obex1))
		FUNC3(fi_obex1);
	if (!FUNC0(fi_phonet))
		FUNC3(fi_phonet);
	FUNC3(fi_acm);

	return 0;
}