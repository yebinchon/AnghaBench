
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int ipm_list; int read; int write; int lancmd_timeout; scalar_t__ pkt_seq; int lan_type; } ;


 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int LCS_DBF_HEX (int,int ,struct lcs_card**,int) ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_FRAME_TYPE_AUTO ;
 int LCS_LANCMD_TIMEOUT_DEFAULT ;
 struct lcs_card* kzalloc (int,int) ;
 int lcs_alloc_channel (int *) ;
 int lcs_cleanup_channel (int *) ;
 int lcs_free_card (struct lcs_card*) ;
 int setup ;

__attribute__((used)) static struct lcs_card *
lcs_alloc_card(void)
{
 struct lcs_card *card;
 int rc;

 LCS_DBF_TEXT(2, setup, "alloclcs");

 card = kzalloc(sizeof(struct lcs_card), GFP_KERNEL | GFP_DMA);
 if (card == ((void*)0))
  return ((void*)0);
 card->lan_type = LCS_FRAME_TYPE_AUTO;
 card->pkt_seq = 0;
 card->lancmd_timeout = LCS_LANCMD_TIMEOUT_DEFAULT;

 rc = lcs_alloc_channel(&card->read);
 if (rc){
  LCS_DBF_TEXT(2, setup, "iccwerr");
  lcs_free_card(card);
  return ((void*)0);
 }

 rc = lcs_alloc_channel(&card->write);
 if (rc) {
  LCS_DBF_TEXT(2, setup, "iccwerr");
  lcs_cleanup_channel(&card->read);
  lcs_free_card(card);
  return ((void*)0);
 }




 LCS_DBF_HEX(2, setup, &card, sizeof(void*));
 return card;
}
