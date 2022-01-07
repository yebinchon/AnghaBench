
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sclp_sd_listener {int completion; int id; } ;


 int init_completion (int *) ;
 int memset (struct sclp_sd_listener*,int ,int) ;

__attribute__((used)) static void sclp_sd_listener_init(struct sclp_sd_listener *listener, u32 id)
{
 memset(listener, 0, sizeof(*listener));
 listener->id = id;
 init_completion(&listener->completion);
}
