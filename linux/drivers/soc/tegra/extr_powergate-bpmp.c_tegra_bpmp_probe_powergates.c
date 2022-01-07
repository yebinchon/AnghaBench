
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_powergate_info {char* name; unsigned int id; } ;
struct tegra_bpmp {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_dbg (int ,char*,unsigned int) ;
 struct tegra_powergate_info* kcalloc (unsigned int,int,int ) ;
 int tegra_bpmp_powergate_get_max_id (struct tegra_bpmp*) ;
 char* tegra_bpmp_powergate_get_name (struct tegra_bpmp*,unsigned int) ;

__attribute__((used)) static int
tegra_bpmp_probe_powergates(struct tegra_bpmp *bpmp,
       struct tegra_powergate_info **powergatesp)
{
 struct tegra_powergate_info *powergates;
 unsigned int max_id, id, count = 0;
 unsigned int num_holes = 0;
 int err;

 err = tegra_bpmp_powergate_get_max_id(bpmp);
 if (err < 0)
  return err;

 max_id = err;

 dev_dbg(bpmp->dev, "maximum powergate ID: %u\n", max_id);

 powergates = kcalloc(max_id + 1, sizeof(*powergates), GFP_KERNEL);
 if (!powergates)
  return -ENOMEM;

 for (id = 0; id <= max_id; id++) {
  struct tegra_powergate_info *info = &powergates[count];

  info->name = tegra_bpmp_powergate_get_name(bpmp, id);
  if (!info->name || info->name[0] == '\0') {
   num_holes++;
   continue;
  }

  info->id = id;
  count++;
 }

 dev_dbg(bpmp->dev, "holes: %u\n", num_holes);

 *powergatesp = powergates;

 return count;
}
