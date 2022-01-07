
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fract {unsigned int numerator; unsigned int denominator; } ;
struct csi_skip_desc {unsigned int max_ratio; unsigned int keep; } ;


 unsigned int gcd (unsigned int,unsigned int) ;

__attribute__((used)) static void csi_apply_skip_interval(const struct csi_skip_desc *skip,
        struct v4l2_fract *interval)
{
 unsigned int div;

 interval->numerator *= skip->max_ratio;
 interval->denominator *= skip->keep;


 div = gcd(interval->numerator, interval->denominator);
 if (div > 1) {
  interval->numerator /= div;
  interval->denominator /= div;
 }
}
