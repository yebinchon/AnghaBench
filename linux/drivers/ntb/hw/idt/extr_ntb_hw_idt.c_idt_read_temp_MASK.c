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
typedef  int /*<<< orphan*/  u32 ;
struct idt_ntb_dev {int dummy; } ;
typedef  enum idt_temp_val { ____Placeholder_idt_temp_val } idt_temp_val ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDT_SW_TMPADJ ; 
 int /*<<< orphan*/  IDT_SW_TMPSTS ; 
#define  IDT_TEMP_CUR 131 
#define  IDT_TEMP_HIGH 130 
#define  IDT_TEMP_LOW 129 
#define  IDT_TEMP_OFFSET 128 
 int /*<<< orphan*/  TMPADJ_OFFSET ; 
 int /*<<< orphan*/  TMPSTS_HTEMP ; 
 int /*<<< orphan*/  TMPSTS_LTEMP ; 
 int /*<<< orphan*/  TMPSTS_TEMP ; 
 long FUNC1 (int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct idt_ntb_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct idt_ntb_dev *ndev,
			  const enum idt_temp_val type, long *val)
{
	u32 data;

	/* Alter the temperature field in accordance with the passed type */
	switch (type) {
	case IDT_TEMP_CUR:
		data = FUNC0(TMPSTS_TEMP,
				 FUNC3(ndev, IDT_SW_TMPSTS));
		break;
	case IDT_TEMP_LOW:
		data = FUNC0(TMPSTS_LTEMP,
				 FUNC3(ndev, IDT_SW_TMPSTS));
		break;
	case IDT_TEMP_HIGH:
		data = FUNC0(TMPSTS_HTEMP,
				 FUNC3(ndev, IDT_SW_TMPSTS));
		break;
	case IDT_TEMP_OFFSET:
		/* This is the only field with signed 0:7:1 format */
		data = FUNC0(TMPADJ_OFFSET,
				 FUNC3(ndev, IDT_SW_TMPADJ));
		*val = FUNC1(data);
		return;
	default:
		data = FUNC0(TMPSTS_TEMP,
				 FUNC3(ndev, IDT_SW_TMPSTS));
		break;
	}

	/* The rest of the fields accept unsigned 0:7:1 format */
	*val = FUNC2(data);
}