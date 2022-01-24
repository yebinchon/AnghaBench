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
struct usb_function {int dummy; } ;
struct usb_configuration {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_function*) ; 
 int FUNC2 (struct usb_function*) ; 
 struct usb_function* f_acm_cfg1 ; 
 struct usb_function* f_acm_cfg2 ; 
 struct usb_function* f_ecm_cfg1 ; 
 struct usb_function* f_ecm_cfg2 ; 
 struct usb_function* f_msg_cfg1 ; 
 struct usb_function* f_msg_cfg2 ; 
 struct usb_function* f_obex1_cfg1 ; 
 struct usb_function* f_obex1_cfg2 ; 
 struct usb_function* f_obex2_cfg1 ; 
 struct usb_function* f_obex2_cfg2 ; 
 struct usb_function* f_phonet_cfg1 ; 
 struct usb_function* f_phonet_cfg2 ; 
 struct usb_function* fi_acm ; 
 struct usb_function* fi_ecm ; 
 struct usb_function* fi_msg ; 
 struct usb_function* fi_obex1 ; 
 struct usb_function* fi_obex2 ; 
 struct usb_function* fi_phonet ; 
 struct usb_configuration nokia_config_500ma_driver ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct usb_configuration*,struct usb_function*) ; 
 struct usb_function* FUNC5 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_function*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_configuration*,struct usb_function*) ; 

__attribute__((used)) static int FUNC8(struct usb_configuration *c)
{
	struct usb_function *f_acm;
	struct usb_function *f_phonet = NULL;
	struct usb_function *f_obex1 = NULL;
	struct usb_function *f_ecm;
	struct usb_function *f_obex2 = NULL;
	struct usb_function *f_msg;
	int status = 0;
	int obex1_stat = -1;
	int obex2_stat = -1;
	int phonet_stat = -1;

	if (!FUNC0(fi_phonet)) {
		f_phonet = FUNC5(fi_phonet);
		if (FUNC0(f_phonet))
			FUNC3("could not get phonet function\n");
	}

	if (!FUNC0(fi_obex1)) {
		f_obex1 = FUNC5(fi_obex1);
		if (FUNC0(f_obex1))
			FUNC3("could not get obex function 0\n");
	}

	if (!FUNC0(fi_obex2)) {
		f_obex2 = FUNC5(fi_obex2);
		if (FUNC0(f_obex2))
			FUNC3("could not get obex function 1\n");
	}

	f_acm = FUNC5(fi_acm);
	if (FUNC0(f_acm)) {
		status = FUNC2(f_acm);
		goto err_get_acm;
	}

	f_ecm = FUNC5(fi_ecm);
	if (FUNC0(f_ecm)) {
		status = FUNC2(f_ecm);
		goto err_get_ecm;
	}

	f_msg = FUNC5(fi_msg);
	if (FUNC0(f_msg)) {
		status = FUNC2(f_msg);
		goto err_get_msg;
	}

	if (!FUNC1(f_phonet)) {
		phonet_stat = FUNC4(c, f_phonet);
		if (phonet_stat)
			FUNC3("could not add phonet function\n");
	}

	if (!FUNC1(f_obex1)) {
		obex1_stat = FUNC4(c, f_obex1);
		if (obex1_stat)
			FUNC3("could not add obex function 0\n");
	}

	if (!FUNC1(f_obex2)) {
		obex2_stat = FUNC4(c, f_obex2);
		if (obex2_stat)
			FUNC3("could not add obex function 1\n");
	}

	status = FUNC4(c, f_acm);
	if (status)
		goto err_conf;

	status = FUNC4(c, f_ecm);
	if (status) {
		FUNC3("could not bind ecm config %d\n", status);
		goto err_ecm;
	}

	status = FUNC4(c, f_msg);
	if (status)
		goto err_msg;

	if (c == &nokia_config_500ma_driver) {
		f_acm_cfg1 = f_acm;
		f_ecm_cfg1 = f_ecm;
		f_phonet_cfg1 = f_phonet;
		f_obex1_cfg1 = f_obex1;
		f_obex2_cfg1 = f_obex2;
		f_msg_cfg1 = f_msg;
	} else {
		f_acm_cfg2 = f_acm;
		f_ecm_cfg2 = f_ecm;
		f_phonet_cfg2 = f_phonet;
		f_obex1_cfg2 = f_obex1;
		f_obex2_cfg2 = f_obex2;
		f_msg_cfg2 = f_msg;
	}

	return status;
err_msg:
	FUNC7(c, f_ecm);
err_ecm:
	FUNC7(c, f_acm);
err_conf:
	if (!obex2_stat)
		FUNC7(c, f_obex2);
	if (!obex1_stat)
		FUNC7(c, f_obex1);
	if (!phonet_stat)
		FUNC7(c, f_phonet);
	FUNC6(f_msg);
err_get_msg:
	FUNC6(f_ecm);
err_get_ecm:
	FUNC6(f_acm);
err_get_acm:
	if (!FUNC1(f_obex2))
		FUNC6(f_obex2);
	if (!FUNC1(f_obex1))
		FUNC6(f_obex1);
	if (!FUNC1(f_phonet))
		FUNC6(f_phonet);
	return status;
}