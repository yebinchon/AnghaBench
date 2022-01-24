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
typedef  int sint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(u8 *key, u8 *data, u8 *ciphertext)
{
	sint round;
	sint i;
	u8 intermediatea[16];
	u8 intermediateb[16];
	u8 round_key[16];

	for (i = 0; i < 16; i++)
		round_key[i] = key[i];
	for (round = 0; round < 11; round++) {
		if (round == 0) {
			FUNC4(round_key, data, ciphertext);
			FUNC2(round_key, round);
		} else if (round == 10) {
			FUNC0(ciphertext, intermediatea);
			FUNC3(intermediatea, intermediateb);
			FUNC4(intermediateb, round_key, ciphertext);
		} else {   /* 1 - 9 */
			FUNC0(ciphertext, intermediatea);
			FUNC3(intermediatea, intermediateb);
			FUNC1(&intermediateb[0], &intermediatea[0]);
			FUNC1(&intermediateb[4], &intermediatea[4]);
			FUNC1(&intermediateb[8], &intermediatea[8]);
			FUNC1(&intermediateb[12], &intermediatea[12]);
			FUNC4(intermediatea, round_key, ciphertext);
			FUNC2(round_key, round);
		}
	}
}