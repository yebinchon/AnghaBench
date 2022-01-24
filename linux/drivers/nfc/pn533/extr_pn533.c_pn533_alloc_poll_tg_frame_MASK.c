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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct pn533 {int* gb; size_t gb_len; } ;

/* Variables and functions */
 size_t PN533_INIT_TARGET_DEP ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int*,int) ; 
 struct sk_buff* FUNC2 (struct pn533*,unsigned int) ; 
 int* FUNC3 (struct sk_buff*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,size_t) ; 
 int* FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct pn533 *dev)
{
	struct sk_buff *skb;
	u8 *felica, *nfcid3;

	u8 *gbytes = dev->gb;
	size_t gbytes_len = dev->gb_len;

	u8 felica_params[18] = {0x1, 0xfe, /* DEP */
				0x0, 0x0, 0x0, 0x0, 0x0, 0x0, /* random */
				0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
				0xff, 0xff}; /* System code */

	u8 mifare_params[6] = {0x1, 0x1, /* SENS_RES */
			       0x0, 0x0, 0x0,
			       0x40}; /* SEL_RES for DEP */

	unsigned int skb_len = 36 + /*
				     * mode (1), mifare (6),
				     * felica (18), nfcid3 (10), gb_len (1)
				     */
			       gbytes_len +
			       1;  /* len Tk*/

	skb = FUNC2(dev, skb_len);
	if (!skb)
		return NULL;

	/* DEP support only */
	FUNC4(skb, PN533_INIT_TARGET_DEP);

	/* MIFARE params */
	FUNC3(skb, mifare_params, 6);

	/* Felica params */
	felica = FUNC3(skb, felica_params, 18);
	FUNC0(felica + 2, 6);

	/* NFCID3 */
	nfcid3 = FUNC5(skb, 10);
	FUNC1(nfcid3, felica, 8);

	/* General bytes */
	FUNC4(skb, gbytes_len);

	FUNC3(skb, gbytes, gbytes_len);

	/* Len Tk */
	FUNC4(skb, 0);

	return skb;
}