
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_data {scalar_t__ M; scalar_t__ nBytesInM; int K1; int R; int K0; int L; } ;



__attribute__((used)) static void secmicclear(struct mic_data *pmicdata)
{

 pmicdata->L = pmicdata->K0;
 pmicdata->R = pmicdata->K1;
 pmicdata->nBytesInM = 0;
 pmicdata->M = 0;
}
