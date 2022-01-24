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
typedef  int /*<<< orphan*/  u8 ;
struct gsm_dlci {int /*<<< orphan*/  gsm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct gsm_dlci *dlci, const u8 *data, int len)
{
	/* See what command is involved */
	unsigned int command = 0;
	while (len-- > 0) {
		if (FUNC2(&command, *data++) == 1) {
			int clen = *data++;
			len--;
			/* FIXME: this is properly an EA */
			clen >>= 1;
			/* Malformed command ? */
			if (clen > len)
				return;
			if (command & 1)
				FUNC0(dlci->gsm, command,
								data, clen);
			else
				FUNC1(dlci->gsm, command,
								data, clen);
			return;
		}
	}
}