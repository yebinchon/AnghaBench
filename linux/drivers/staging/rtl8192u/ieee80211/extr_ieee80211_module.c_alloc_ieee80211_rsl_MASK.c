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
struct net_device {int dummy; } ;
struct ieee80211_device {int open_wep; int host_encrypt; int host_decrypt; int ieee802_1x; int* last_rxseq_num; int* last_rxfrag_num; scalar_t__* last_packet_time; int /*<<< orphan*/ * ibss_mac_hash; int /*<<< orphan*/  pHTInfo; scalar_t__ hwsec_active; scalar_t__ raw_tx; scalar_t__ privacy_invoked; scalar_t__ drop_unencrypted; scalar_t__ tkip_countermeasures; scalar_t__ wpa_enabled; scalar_t__ wpax_type_set; int /*<<< orphan*/  atm_swbw; int /*<<< orphan*/  atm_chnlop; int /*<<< orphan*/  reorder_spinlock; int /*<<< orphan*/  bw_spinlock; int /*<<< orphan*/  wpax_suitlist_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  crypt_deinit_timer; int /*<<< orphan*/  crypt_deinit_list; int /*<<< orphan*/  scan_age; int /*<<< orphan*/  fts; struct net_device* dev; } ;
typedef  int /*<<< orphan*/  RT_HIGH_THROUGHPUT ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_FTS ; 
 int /*<<< orphan*/  DEFAULT_MAX_SCAN_AGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  IEEE80211_DL_ERR ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int IEEE_IBSS_MAC_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_device*) ; 
 struct net_device* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  ieee80211_crypt_deinit_handler ; 
 int FUNC10 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 struct ieee80211_device* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct net_device *FUNC19(int sizeof_priv)
{
	struct ieee80211_device *ieee;
	struct net_device *dev;
	int i, err;

	FUNC3("Initializing...\n");

	dev = FUNC7(sizeof(struct ieee80211_device) + sizeof_priv);
	if (!dev) {
		FUNC4("Unable to network device.\n");
		goto failed;
	}

	ieee = FUNC16(dev);
	ieee->dev = dev;

	err = FUNC10(ieee);
	if (err) {
		FUNC4("Unable to allocate beacon storage: %d\n",
				err);
		goto failed;
	}
	FUNC12(ieee);

	/* Default fragmentation threshold is maximum payload size */
	ieee->fts = DEFAULT_FTS;
	ieee->scan_age = DEFAULT_MAX_SCAN_AGE;
	ieee->open_wep = 1;

	/* Default to enabling full open WEP with host based encrypt/decrypt */
	ieee->host_encrypt = 1;
	ieee->host_decrypt = 1;
	ieee->ieee802_1x = 1; /* Default to supporting 802.1x */

	FUNC5(&ieee->crypt_deinit_list);
	FUNC18(&ieee->crypt_deinit_timer, ieee80211_crypt_deinit_handler,
		    0);

	FUNC17(&ieee->lock);
	FUNC17(&ieee->wpax_suitlist_lock);
	FUNC17(&ieee->bw_spinlock);
	FUNC17(&ieee->reorder_spinlock);
	/* added by WB */
	FUNC8(&ieee->atm_chnlop, 0);
	FUNC8(&ieee->atm_swbw, 0);

	ieee->wpax_type_set = 0;
	ieee->wpa_enabled = 0;
	ieee->tkip_countermeasures = 0;
	ieee->drop_unencrypted = 0;
	ieee->privacy_invoked = 0;
	ieee->ieee802_1x = 1;
	ieee->raw_tx = 0;
	//ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
	ieee->hwsec_active = 0; /* disable hwsec, switch it on when necessary. */

	FUNC13(ieee);

	ieee->pHTInfo = FUNC15(sizeof(RT_HIGH_THROUGHPUT), GFP_KERNEL);
	if (!ieee->pHTInfo) {
		FUNC2(IEEE80211_DL_ERR, "can't alloc memory for HTInfo\n");

		/* By this point in code ieee80211_networks_allocate() has been
		 * successfully called so the memory allocated should be freed
		 */
		FUNC11(ieee);
		goto failed;
	}
	FUNC1(ieee);
	FUNC0(ieee); /* may move to other place. */
	FUNC6(ieee);

	for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
		FUNC5(&ieee->ibss_mac_hash[i]);

	for (i = 0; i < 17; i++) {
		ieee->last_rxseq_num[i] = -1;
		ieee->last_rxfrag_num[i] = -1;
		ieee->last_packet_time[i] = 0;
	}

/* These function were added to load crypte module autoly */
	FUNC14();

	return dev;

 failed:
	if (dev)
		FUNC9(dev);

	return NULL;
}