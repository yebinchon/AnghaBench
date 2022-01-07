
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int NumRates ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ratetbl2rateset (struct adapter*,unsigned char*) ;

void get_rate_set(struct adapter *padapter, unsigned char *pbssrate, int *bssrate_len)
{
 unsigned char supportedrates[NumRates];

 memset(supportedrates, 0, NumRates);
 *bssrate_len = ratetbl2rateset(padapter, supportedrates);
 memcpy(pbssrate, supportedrates, *bssrate_len);
}
