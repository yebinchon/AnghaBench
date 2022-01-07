
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_cam_table {int dummy; } ;
struct rtllib_device {int open_wep; int host_encrypt; int host_decrypt; int ieee802_1x; int* last_rxseq_num; int* last_rxfrag_num; scalar_t__* last_packet_time; int * ibss_mac_hash; int pHTInfo; int swcamtable; scalar_t__ hwsec_active; scalar_t__ raw_tx; scalar_t__ privacy_invoked; scalar_t__ drop_unencrypted; scalar_t__ tkip_countermeasures; scalar_t__ wpa_enabled; int lock; int crypt_info; int atm_swbw; int reorder_spinlock; int wpax_suitlist_lock; int rtllib_ap_sec_type; int scan_age; int fts; struct net_device* dev; } ;
struct rt_hi_throughput {int dummy; } ;
struct net_device {int dummy; } ;


 int DEFAULT_FTS ;
 int DEFAULT_MAX_SCAN_AGE ;
 int GFP_KERNEL ;
 int HTInitializeHTInfo (struct rtllib_device*) ;
 int HTUpdateDefaultSetting (struct rtllib_device*) ;
 int IEEE_IBSS_MAC_HASH_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int TSInitialize (struct rtllib_device*) ;
 struct net_device* alloc_etherdev (int) ;
 int atomic_set (int *,int ) ;
 int free_netdev (struct net_device*) ;
 int kzalloc (int,int ) ;
 int lib80211_crypt_info_init (int *,char*,int *) ;
 int memset (int ,int ,int) ;
 scalar_t__ netdev_priv_rsl (struct net_device*) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int rtllib_ap_sec_type ;
 int rtllib_networks_allocate (struct rtllib_device*) ;
 int rtllib_networks_initialize (struct rtllib_device*) ;
 int rtllib_softmac_init (struct rtllib_device*) ;
 int spin_lock_init (int *) ;

struct net_device *alloc_rtllib(int sizeof_priv)
{
 struct rtllib_device *ieee = ((void*)0);
 struct net_device *dev;
 int i, err;

 pr_debug("rtllib: Initializing...\n");

 dev = alloc_etherdev(sizeof(struct rtllib_device) + sizeof_priv);
 if (!dev) {
  pr_err("Unable to allocate net_device.\n");
  return ((void*)0);
 }
 ieee = (struct rtllib_device *)netdev_priv_rsl(dev);
 ieee->dev = dev;

 err = rtllib_networks_allocate(ieee);
 if (err) {
  pr_err("Unable to allocate beacon storage: %d\n", err);
  goto failed;
 }
 rtllib_networks_initialize(ieee);


 ieee->fts = DEFAULT_FTS;
 ieee->scan_age = DEFAULT_MAX_SCAN_AGE;
 ieee->open_wep = 1;


 ieee->host_encrypt = 1;
 ieee->host_decrypt = 1;
 ieee->ieee802_1x = 1;

 ieee->rtllib_ap_sec_type = rtllib_ap_sec_type;

 spin_lock_init(&ieee->lock);
 spin_lock_init(&ieee->wpax_suitlist_lock);
 spin_lock_init(&ieee->reorder_spinlock);
 atomic_set(&(ieee->atm_swbw), 0);


 lib80211_crypt_info_init(&ieee->crypt_info, "RTLLIB", &ieee->lock);

 ieee->wpa_enabled = 0;
 ieee->tkip_countermeasures = 0;
 ieee->drop_unencrypted = 0;
 ieee->privacy_invoked = 0;
 ieee->ieee802_1x = 1;
 ieee->raw_tx = 0;
 ieee->hwsec_active = 0;

 memset(ieee->swcamtable, 0, sizeof(struct sw_cam_table) * 32);
 rtllib_softmac_init(ieee);

 ieee->pHTInfo = kzalloc(sizeof(struct rt_hi_throughput), GFP_KERNEL);
 if (!ieee->pHTInfo)
  return ((void*)0);

 HTUpdateDefaultSetting(ieee);
 HTInitializeHTInfo(ieee);
 TSInitialize(ieee);
 for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
  INIT_LIST_HEAD(&ieee->ibss_mac_hash[i]);

 for (i = 0; i < 17; i++) {
  ieee->last_rxseq_num[i] = -1;
  ieee->last_rxfrag_num[i] = -1;
  ieee->last_packet_time[i] = 0;
 }

 return dev;

 failed:
 free_netdev(dev);
 return ((void*)0);
}
