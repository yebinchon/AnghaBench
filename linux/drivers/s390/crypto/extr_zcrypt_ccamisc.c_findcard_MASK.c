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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct zcrypt_device_status_ext {int functions; int /*<<< orphan*/  qid; scalar_t__ online; } ;
struct cca_info {int hwtype; char cur_mk_state; scalar_t__ cur_mkvp; char old_mk_state; scalar_t__ old_mkvp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ZDEV_ENTRIES_EXT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cca_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cca_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cca_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct zcrypt_device_status_ext*) ; 
 struct zcrypt_device_status_ext* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zcrypt_device_status_ext*) ; 

__attribute__((used)) static int FUNC9(u64 mkvp, u16 *pcardnr, u16 *pdomain,
		    int verify, int minhwtype)
{
	struct zcrypt_device_status_ext *device_status;
	u16 card, dom;
	struct cca_info ci;
	int i, rc, oi = -1;

	/* mkvp must not be zero, minhwtype needs to be >= 0 */
	if (mkvp == 0 || minhwtype < 0)
		return -EINVAL;

	/* fetch status of all crypto cards */
	device_status = FUNC7(MAX_ZDEV_ENTRIES_EXT,
				      sizeof(struct zcrypt_device_status_ext),
				      GFP_KERNEL);
	if (!device_status)
		return -ENOMEM;
	FUNC8(device_status);

	/* walk through all crypto cards */
	for (i = 0; i < MAX_ZDEV_ENTRIES_EXT; i++) {
		card = FUNC0(device_status[i].qid);
		dom = FUNC1(device_status[i].qid);
		if (device_status[i].online &&
		    device_status[i].functions & 0x04) {
			/* enabled CCA card, check current mkvp from cache */
			if (FUNC2(card, dom, &ci) == 0 &&
			    ci.hwtype >= minhwtype &&
			    ci.cur_mk_state == '2' &&
			    ci.cur_mkvp == mkvp) {
				if (!verify)
					break;
				/* verify: refresh card info */
				if (FUNC5(card, dom, &ci) == 0) {
					FUNC4(card, dom, &ci);
					if (ci.hwtype >= minhwtype &&
					    ci.cur_mk_state == '2' &&
					    ci.cur_mkvp == mkvp)
						break;
				}
			}
		} else {
			/* Card is offline and/or not a CCA card. */
			/* del mkvp entry from cache if it exists */
			FUNC3(card, dom);
		}
	}
	if (i >= MAX_ZDEV_ENTRIES_EXT) {
		/* nothing found, so this time without cache */
		for (i = 0; i < MAX_ZDEV_ENTRIES_EXT; i++) {
			if (!(device_status[i].online &&
			      device_status[i].functions & 0x04))
				continue;
			card = FUNC0(device_status[i].qid);
			dom = FUNC1(device_status[i].qid);
			/* fresh fetch mkvp from adapter */
			if (FUNC5(card, dom, &ci) == 0) {
				FUNC4(card, dom, &ci);
				if (ci.hwtype >= minhwtype &&
				    ci.cur_mk_state == '2' &&
				    ci.cur_mkvp == mkvp)
					break;
				if (ci.hwtype >= minhwtype &&
				    ci.old_mk_state == '2' &&
				    ci.old_mkvp == mkvp &&
				    oi < 0)
					oi = i;
			}
		}
		if (i >= MAX_ZDEV_ENTRIES_EXT && oi >= 0) {
			/* old mkvp matched, use this card then */
			card = FUNC0(device_status[oi].qid);
			dom = FUNC1(device_status[oi].qid);
		}
	}
	if (i < MAX_ZDEV_ENTRIES_EXT || oi >= 0) {
		if (pcardnr)
			*pcardnr = card;
		if (pdomain)
			*pdomain = dom;
		rc = (i < MAX_ZDEV_ENTRIES_EXT ? 0 : 1);
	} else
		rc = -ENODEV;

	FUNC6(device_status);
	return rc;
}