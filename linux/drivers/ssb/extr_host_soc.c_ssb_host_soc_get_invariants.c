
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_sprom {int dummy; } ;
struct TYPE_3__ {int type; int vendor; } ;
struct ssb_init_invariants {int has_cardbus_slot; TYPE_1__ sprom; TYPE_1__ boardinfo; } ;
struct ssb_bus {int dummy; } ;
struct ssb_boardinfo {int dummy; } ;
typedef int buf ;


 int SSB_BOARDVENDOR_BCM ;
 int bcm47xx_nvram_getenv (char*,char*,int) ;
 int kstrtou16 (int ,int ,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int pr_warn (char*,char*) ;
 int simple_strtoul (char*,int *,int) ;
 int ssb_fill_sprom_with_fallback (struct ssb_bus*,TYPE_1__*) ;
 int strim (char*) ;

int ssb_host_soc_get_invariants(struct ssb_bus *bus,
    struct ssb_init_invariants *iv)
{
 char buf[20];
 int len, err;


 memset(&iv->boardinfo, 0, sizeof(struct ssb_boardinfo));

 len = bcm47xx_nvram_getenv("boardvendor", buf, sizeof(buf));
 if (len > 0) {
  err = kstrtou16(strim(buf), 0, &iv->boardinfo.vendor);
  if (err)
   pr_warn("Couldn't parse nvram board vendor entry with value \"%s\"\n",
    buf);
 }
 if (!iv->boardinfo.vendor)
  iv->boardinfo.vendor = SSB_BOARDVENDOR_BCM;

 len = bcm47xx_nvram_getenv("boardtype", buf, sizeof(buf));
 if (len > 0) {
  err = kstrtou16(strim(buf), 0, &iv->boardinfo.type);
  if (err)
   pr_warn("Couldn't parse nvram board type entry with value \"%s\"\n",
    buf);
 }

 memset(&iv->sprom, 0, sizeof(struct ssb_sprom));
 ssb_fill_sprom_with_fallback(bus, &iv->sprom);

 if (bcm47xx_nvram_getenv("cardbus", buf, sizeof(buf)) >= 0)
  iv->has_cardbus_slot = !!simple_strtoul(buf, ((void*)0), 10);

 return 0;
}
