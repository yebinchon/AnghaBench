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
struct gds_subvector {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 scalar_t__ sclp_tty_tolower ; 

__attribute__((used)) static void FUNC4(struct gds_subvector *sv)
{
	unsigned char *str;
	int count;

	str = (unsigned char *) (sv + 1);
	count = sv->length - sizeof(*sv);
	if (sclp_tty_tolower)
		FUNC0(str, count);
	count = FUNC2(str, count);
	/* convert EBCDIC to ASCII (modify original input in SCCB) */
	FUNC1(str, count);

	/* transfer input to high level driver */
	FUNC3(str, count);
}