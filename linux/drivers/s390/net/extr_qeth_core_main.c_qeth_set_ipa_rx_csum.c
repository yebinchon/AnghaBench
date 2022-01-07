
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;


 int EOPNOTSUPP ;
 int IPA_INBOUND_CHECKSUM ;
 int IPA_INBOUND_CHECKSUM_V6 ;
 int QETH_PROT_IPV4 ;
 int QETH_PROT_IPV6 ;
 scalar_t__ qeth_is_supported (struct qeth_card*,int ) ;
 int qeth_is_supported6 (struct qeth_card*,int ) ;
 int qeth_set_ipa_csum (struct qeth_card*,int,int ,int ) ;

__attribute__((used)) static int qeth_set_ipa_rx_csum(struct qeth_card *card, bool on)
{
 int rc_ipv4 = (on) ? -EOPNOTSUPP : 0;
 int rc_ipv6;

 if (qeth_is_supported(card, IPA_INBOUND_CHECKSUM))
  rc_ipv4 = qeth_set_ipa_csum(card, on, IPA_INBOUND_CHECKSUM,
         QETH_PROT_IPV4);
 if (!qeth_is_supported6(card, IPA_INBOUND_CHECKSUM_V6))

  return rc_ipv4;

 rc_ipv6 = qeth_set_ipa_csum(card, on, IPA_INBOUND_CHECKSUM,
        QETH_PROT_IPV6);

 if (on)

  return (rc_ipv6) ? rc_ipv4 : 0;


 return (rc_ipv6) ? rc_ipv6 : rc_ipv4;
}
