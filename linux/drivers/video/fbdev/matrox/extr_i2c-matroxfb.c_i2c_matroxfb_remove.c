
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct matroxfb_dh_maven_info {int dummy; } ;
struct matrox_fb_info {int dummy; } ;


 int i2c_ddc1_done (struct matroxfb_dh_maven_info*) ;
 int i2c_ddc2_done (struct matroxfb_dh_maven_info*) ;
 int i2c_maven_done (struct matroxfb_dh_maven_info*) ;
 int kfree (struct matroxfb_dh_maven_info*) ;

__attribute__((used)) static void i2c_matroxfb_remove(struct matrox_fb_info* minfo, void* data) {
 struct matroxfb_dh_maven_info* m2info = data;

 i2c_maven_done(m2info);
 i2c_ddc2_done(m2info);
 i2c_ddc1_done(m2info);
 kfree(m2info);
}
