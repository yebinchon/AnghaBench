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
struct sw_cam_table {int dummy; } ;
struct rtllib_device {int open_wep; int host_encrypt; int host_decrypt; int ieee802_1x; int* last_rxseq_num; int* last_rxfrag_num; scalar_t__* last_packet_time; int /*<<< orphan*/ * ibss_mac_hash; int /*<<< orphan*/  pHTInfo; int /*<<< orphan*/  swcamtable; scalar_t__ hwsec_active; scalar_t__ raw_tx; scalar_t__ privacy_invoked; scalar_t__ drop_unencrypted; scalar_t__ tkip_countermeasures; scalar_t__ wpa_enabled; int /*<<< orphan*/  lock; int /*<<< orphan*/  crypt_info; int /*<<< orphan*/  atm_swbw; int /*<<< orphan*/  reorder_spinlock; int /*<<< orphan*/  wpax_suitlist_lock; int /*<<< orphan*/  rtllib_ap_sec_type; int /*<<< orphan*/  scan_age; int /*<<< orphan*/  fts; struct net_device* dev; } ;
struct rt_hi_throughput {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_FTS ; 
 int /*<<< orphan*/  DEFAULT_MAX_SCAN_AGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtllib_device*) ; 
 int IEEE_IBSS_MAC_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rtllib_device*) ; 
 struct net_device* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  rtllib_ap_sec_type ; 
 int FUNC13 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC15 (struct rtllib_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

struct net_device *FUNC17(int sizeof_priv)
{
	struct rtllib_device *ieee = NULL;
	struct net_device *dev;
	int i, err;

	FUNC11("rtllib: Initializing...\n");

	dev = FUNC4(sizeof(struct rtllib_device) + sizeof_priv);
	if (!dev) {
		FUNC12("Unable to allocate net_device.\n");
		return NULL;
	}
	ieee = (struct rtllib_device *)FUNC10(dev);
	ieee->dev = dev;

	err = FUNC13(ieee);
	if (err) {
		FUNC12("Unable to allocate beacon storage: %d\n", err);
		goto failed;
	}
	FUNC14(ieee);

	/* Default fragmentation threshold is maximum payload size */
	ieee->fts = DEFAULT_FTS;
	ieee->scan_age = DEFAULT_MAX_SCAN_AGE;
	ieee->open_wep = 1;

	/* Default to enabling full open WEP with host based encrypt/decrypt */
	ieee->host_encrypt = 1;
	ieee->host_decrypt = 1;
	ieee->ieee802_1x = 1; /* Default to supporting 802.1x */

	ieee->rtllib_ap_sec_type = rtllib_ap_sec_type;

	FUNC16(&ieee->lock);
	FUNC16(&ieee->wpax_suitlist_lock);
	FUNC16(&ieee->reorder_spinlock);
	FUNC5(&(ieee->atm_swbw), 0);

	/* SAM FIXME */
	FUNC8(&ieee->crypt_info, "RTLLIB", &ieee->lock);

	ieee->wpa_enabled = 0;
	ieee->tkip_countermeasures = 0;
	ieee->drop_unencrypted = 0;
	ieee->privacy_invoked = 0;
	ieee->ieee802_1x = 1;
	ieee->raw_tx = 0;
	ieee->hwsec_active = 0;

	FUNC9(ieee->swcamtable, 0, sizeof(struct sw_cam_table) * 32);
	FUNC15(ieee);

	ieee->pHTInfo = FUNC7(sizeof(struct rt_hi_throughput), GFP_KERNEL);
	if (!ieee->pHTInfo)
		return NULL;

	FUNC1(ieee);
	FUNC0(ieee);
	FUNC3(ieee);
	for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
		FUNC2(&ieee->ibss_mac_hash[i]);

	for (i = 0; i < 17; i++) {
		ieee->last_rxseq_num[i] = -1;
		ieee->last_rxfrag_num[i] = -1;
		ieee->last_packet_time[i] = 0;
	}

	return dev;

 failed:
	FUNC6(dev);
	return NULL;
}