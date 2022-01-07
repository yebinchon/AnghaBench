
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int lan_type; } ;


 int EIO ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_FRAME_TYPE_ENET ;
 int LCS_FRAME_TYPE_FDDI ;
 int LCS_INITIATOR_TCPIP ;
 int lcs_send_startlan (struct lcs_card*,int ) ;
 int trace ;

__attribute__((used)) static int
lcs_startlan_auto(struct lcs_card *card)
{
 int rc;

 LCS_DBF_TEXT(2, trace, "strtauto");
 return -EIO;
}
