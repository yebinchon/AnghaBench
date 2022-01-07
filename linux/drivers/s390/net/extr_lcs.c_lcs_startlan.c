
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int portno; scalar_t__ lan_type; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 scalar_t__ LCS_FRAME_TYPE_AUTO ;
 int LCS_INITIATOR_TCPIP ;
 int LCS_INVALID_PORT_NO ;
 int lcs_send_lanstat (struct lcs_card*) ;
 int lcs_send_startlan (struct lcs_card*,int ) ;
 int lcs_startlan_auto (struct lcs_card*) ;
 int trace ;

__attribute__((used)) static int
lcs_startlan(struct lcs_card *card)
{
 int rc, i;

 LCS_DBF_TEXT(2, trace, "startlan");
 rc = 0;
 if (card->portno != LCS_INVALID_PORT_NO) {
  if (card->lan_type == LCS_FRAME_TYPE_AUTO)
   rc = lcs_startlan_auto(card);
  else
   rc = lcs_send_startlan(card, LCS_INITIATOR_TCPIP);
 } else {
                for (i = 0; i <= 16; i++) {
                        card->portno = i;
                        if (card->lan_type != LCS_FRAME_TYPE_AUTO)
                                rc = lcs_send_startlan(card,
                                                       LCS_INITIATOR_TCPIP);
                        else

                                rc = lcs_startlan_auto(card);
                        if (rc == 0)
                                break;
                }
        }
 if (rc == 0)
  return lcs_send_lanstat(card);
 return rc;
}
