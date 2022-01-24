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
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

int
FUNC9(void)
{
	char line[1024], *c, *bra, manuf[8];
	int manufs = 0;
	int mode = 0;
	int lino = 0;
	int manuf_len = 0;
	FILE *devf;

	devf = FUNC2("devlist.h", "w");
	if (!devf) {
		FUNC3(stderr, "Cannot create output file!\n");
		return 1;
	}

	while (FUNC1(line, sizeof(line)-1, stdin)) {
		lino++;
		if ((c = FUNC6(line, '\n')))
			*c = 0;
		if (!line[0] || line[0] == '#')
			continue;
		if (line[0] == '\t') {
			switch (mode) {
			case 1:
				if (FUNC8(line) > 5 && line[5] == ' ') {
					c = line + 5;
					while (*c == ' ')
						*c++ = 0;
					if (manuf_len + FUNC8(c) + 1 > MAX_NAME_SIZE) {
						/* Too long, try cutting off long description */
						bra = FUNC6(c, '[');
						if (bra && bra > c && bra[-1] == ' ')
							bra[-1] = 0;
						if (manuf_len + FUNC8(c) + 1 > MAX_NAME_SIZE) {
							FUNC3(stderr, "Line %d: Product name too long\n", lino);
							return 1;
						}
					}
					FUNC3(*devf, "\tPRODUCT(%s,%s,\"", manuf, line+1);
					FUNC5(devf, c);
					FUNC4("\")\n", devf);
				} else goto err;
				break;
			default:
				goto err;
			}
		} else if (FUNC8(line) > 4 && line[4] == ' ') {
			c = line + 4;
			while (*c == ' ')
				*c++ = 0;
			if (manufs)
				FUNC4("ENDMANUF()\n\n", devf);
			manufs++;
			FUNC7(manuf, line);
			manuf_len = FUNC8(c);
			if (manuf_len + 24 > MAX_NAME_SIZE) {
				FUNC3(stderr, "Line %d: manufacturer name too long\n", lino);
				return 1;
			}
			FUNC3(*devf, "MANUF(%s,\"", manuf);
			FUNC5(devf, c);
			FUNC4("\")\n", devf);
			mode = 1;
		} else {
		err:
			FUNC3(stderr, "Line %d: Syntax error in mode %d: %s\n", lino, mode, line);
			return 1;
		}
	}
	FUNC4("ENDMANUF()\n\
\n\
#undef MANUF\n\
#undef PRODUCT\n\
#undef ENDMANUF\n", devf);

	FUNC0(devf);

	return 0;
}