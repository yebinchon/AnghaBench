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
typedef  int u_char ;
struct sym_hcb {int features; } ;

/* Variables and functions */
 int ABRT ; 
 int /*<<< orphan*/  CABRT ; 
 int DIP ; 
 int FE_ISTAT1 ; 
 int FUNC0 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sym_hcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sym_hcb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SCRUN ; 
 int SIP ; 
 int /*<<< orphan*/  nc_dstat ; 
 int /*<<< orphan*/  nc_istat ; 
 int /*<<< orphan*/  nc_istat1 ; 
 int /*<<< orphan*/  nc_sist ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sym_hcb*) ; 
 char* FUNC5 (struct sym_hcb*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7 (struct sym_hcb *np)
{
	u_char istat = 0;
	int i;

	if (!(np->features & FE_ISTAT1) || !(FUNC0(np, nc_istat1) & SCRUN))
		goto do_chip_reset;

	FUNC2(np, nc_istat, CABRT);
	for (i = 100000 ; i ; --i) {
		istat = FUNC0(np, nc_istat);
		if (istat & SIP) {
			FUNC1(np, nc_sist);
		}
		else if (istat & DIP) {
			if (FUNC0(np, nc_dstat) & ABRT)
				break;
		}
		FUNC6(5);
	}
	FUNC2(np, nc_istat, 0);
	if (!i)
		FUNC3("%s: unable to abort current chip operation, "
		       "ISTAT=0x%02x.\n", FUNC5(np), istat);
do_chip_reset:
	FUNC4(np);
}