; ModuleID = '/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_policies_equal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/crypto/extr_policy.c_fscrypt_policies_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.fscrypt_policy = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fscrypt_policies_equal(%union.fscrypt_policy* %0, %union.fscrypt_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.fscrypt_policy*, align 8
  %5 = alloca %union.fscrypt_policy*, align 8
  store %union.fscrypt_policy* %0, %union.fscrypt_policy** %4, align 8
  store %union.fscrypt_policy* %1, %union.fscrypt_policy** %5, align 8
  %6 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %7 = bitcast %union.fscrypt_policy* %6 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %10 = bitcast %union.fscrypt_policy* %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %16 = load %union.fscrypt_policy*, %union.fscrypt_policy** %5, align 8
  %17 = load %union.fscrypt_policy*, %union.fscrypt_policy** %4, align 8
  %18 = call i32 @fscrypt_policy_size(%union.fscrypt_policy* %17)
  %19 = call i32 @memcmp(%union.fscrypt_policy* %15, %union.fscrypt_policy* %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @memcmp(%union.fscrypt_policy*, %union.fscrypt_policy*, i32) #1

declare dso_local i32 @fscrypt_policy_size(%union.fscrypt_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
