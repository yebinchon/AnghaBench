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
struct ext_code {int subcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQEXT_FTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  diag_ftp_rx_complete ; 
 int diag_ftp_subcode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ext_code extirq,
			     unsigned int param32,
			     unsigned long param64)
{
	if ((extirq.subcode >> 8) != 8)
		return; /* not a FTP services sub-code */

	FUNC1(IRQEXT_FTP);
	diag_ftp_subcode = extirq.subcode & 0xffU;
	FUNC0(&diag_ftp_rx_complete);
}