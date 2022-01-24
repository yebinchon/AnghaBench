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
typedef  char u8 ;
typedef  int u32 ;
struct adapter {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 size_t FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct adapter *Adapter, char *buffer)
{
	u32 i = 0, j = 0;
	u8 map[95] = {0};
	u8 currentChar;
	char *BufOfLines, *ptmp;

	/* DBG_871X("=====>phy_DecryptBBPgParaFile()\n"); */
	/*  32 the ascii code of the first visable char, 126 the last one */
	for (i = 0; i < 95; ++i)
		map[i] = (u8) (94 - i);

	ptmp = buffer;
	i = 0;
	for (BufOfLines = FUNC0(ptmp); BufOfLines != NULL; BufOfLines = FUNC0(ptmp)) {
		/* DBG_871X("Encrypted Line: %s\n", BufOfLines); */

		for (j = 0; j < FUNC1(BufOfLines); ++j) {
			currentChar = BufOfLines[j];

			if (currentChar == '\0')
				break;

			currentChar -=  (u8) ((((i + j) * 3) % 128));

			BufOfLines[j] = map[currentChar - 32] + 32;
		}
		/* DBG_871X("Decrypted Line: %s\n", BufOfLines); */
		if (FUNC1(BufOfLines) != 0)
			i++;
		BufOfLines[FUNC1(BufOfLines)] = '\n';
	}
}