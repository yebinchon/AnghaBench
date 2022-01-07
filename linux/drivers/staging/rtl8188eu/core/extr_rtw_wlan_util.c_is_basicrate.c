
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlme_ext_priv {unsigned char* basicrate; } ;
struct adapter {struct mlme_ext_priv mlmeextpriv; } ;


 int NumRates ;
 unsigned char ratetbl_val_2wifirate (unsigned char) ;

__attribute__((used)) static bool is_basicrate(struct adapter *padapter, unsigned char rate)
{
 int i;
 unsigned char val;
 struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;

 for (i = 0; i < NumRates; i++) {
  val = pmlmeext->basicrate[i];

  if ((val != 0xff) && (val != 0xfe)) {
   if (rate == ratetbl_val_2wifirate(val))
    return 1;
  }
 }
 return 0;
}
