
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sas_phy_data {struct sas_phy* phy; int enable_work; int reset_work; int event_lock; } ;
struct sas_phy {struct sas_phy_data* hostdata; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_SAS_WORK (int *,int ) ;
 struct sas_phy_data* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int phy_enable_work ;
 int phy_reset_work ;

__attribute__((used)) static int sas_phy_setup(struct sas_phy *phy)
{
 struct sas_phy_data *d = kzalloc(sizeof(*d), GFP_KERNEL);

 if (!d)
  return -ENOMEM;

 mutex_init(&d->event_lock);
 INIT_SAS_WORK(&d->reset_work, phy_reset_work);
 INIT_SAS_WORK(&d->enable_work, phy_enable_work);
 d->phy = phy;
 phy->hostdata = d;

 return 0;
}
