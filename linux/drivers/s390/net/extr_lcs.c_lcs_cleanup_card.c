
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int read; int write; int * dev; } ;


 int LCS_DBF_HEX (int,int ,struct lcs_card**,int) ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int free_netdev (int *) ;
 int lcs_cleanup_channel (int *) ;
 int setup ;

__attribute__((used)) static void
lcs_cleanup_card(struct lcs_card *card)
{

 LCS_DBF_TEXT(3, setup, "cleancrd");
 LCS_DBF_HEX(2,setup,&card,sizeof(void*));

 if (card->dev != ((void*)0))
  free_netdev(card->dev);

 lcs_cleanup_channel(&card->write);
 lcs_cleanup_channel(&card->read);
}
