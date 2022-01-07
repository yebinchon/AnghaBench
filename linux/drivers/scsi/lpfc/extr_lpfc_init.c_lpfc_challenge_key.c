
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void
lpfc_challenge_key(uint32_t * RandomChallenge, uint32_t * HashWorking)
{
 *HashWorking = (*RandomChallenge ^ *HashWorking);
}
