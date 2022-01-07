; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_key_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_keyring.c_fscrypt_key_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.fscrypt_master_key** }
%struct.fscrypt_master_key = type { i32 }
%struct.key_preparsed_payload = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key_preparsed_payload*)* @fscrypt_key_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fscrypt_key_instantiate(%struct.key* %0, %struct.key_preparsed_payload* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key_preparsed_payload*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %4, align 8
  %5 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %4, align 8
  %6 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.fscrypt_master_key*
  %9 = load %struct.key*, %struct.key** %3, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.fscrypt_master_key**, %struct.fscrypt_master_key*** %11, align 8
  %13 = getelementptr inbounds %struct.fscrypt_master_key*, %struct.fscrypt_master_key** %12, i64 0
  store %struct.fscrypt_master_key* %8, %struct.fscrypt_master_key** %13, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
