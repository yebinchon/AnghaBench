
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_mfp_pin {unsigned int* func; } ;


 int EINVAL ;
 int LTQ_MAX_MUX ;

__attribute__((used)) static int match_mux(const struct ltq_mfp_pin *mfp, unsigned mux)
{
 int i;
 for (i = 0; i < LTQ_MAX_MUX; i++) {
  if (mfp->func[i] == mux)
   break;
 }
 if (i >= LTQ_MAX_MUX)
  return -EINVAL;
 return i;
}
