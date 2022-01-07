
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uea_softc {size_t modem_index; } ;


 scalar_t__ ADI930 ;
 scalar_t__ EAGLE_IV ;
 int FW_DIR ;
 scalar_t__ IS_ISDN (struct uea_softc*) ;
 int THIS_MODULE ;
 scalar_t__ UEA_CHIP_VERSION (struct uea_softc*) ;
 int UEA_FW_NAME_MAX ;
 char** cmv_file ;
 int kernel_param_lock (int ) ;
 int kernel_param_unlock (int ) ;
 int strcpy (char* const,int ) ;
 int strlcat (char* const,char*,int ) ;

__attribute__((used)) static void cmvs_file_name(struct uea_softc *sc, char *const cmv_name, int ver)
{
 char file_arr[] = "CMVxy.bin";
 char *file;

 kernel_param_lock(THIS_MODULE);

 if (cmv_file[sc->modem_index] == ((void*)0)) {
  if (UEA_CHIP_VERSION(sc) == ADI930)
   file_arr[3] = '9';
  else if (UEA_CHIP_VERSION(sc) == EAGLE_IV)
   file_arr[3] = '4';
  else
   file_arr[3] = 'e';

  file_arr[4] = IS_ISDN(sc) ? 'i' : 'p';
  file = file_arr;
 } else
  file = cmv_file[sc->modem_index];

 strcpy(cmv_name, FW_DIR);
 strlcat(cmv_name, file, UEA_FW_NAME_MAX);
 if (ver == 2)
  strlcat(cmv_name, ".v2", UEA_FW_NAME_MAX);
 kernel_param_unlock(THIS_MODULE);
}
