
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_stats {int dummy; } ;
struct net_device {scalar_t__ ml_priv; } ;
struct lcs_card {struct net_device_stats stats; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int trace ;

__attribute__((used)) static struct net_device_stats *
lcs_getstats(struct net_device *dev)
{
 struct lcs_card *card;

 LCS_DBF_TEXT(4, trace, "netstats");
 card = (struct lcs_card *) dev->ml_priv;
 return &card->stats;
}
