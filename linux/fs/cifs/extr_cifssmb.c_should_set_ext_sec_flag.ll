; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_should_set_ext_sec_flag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_should_set_ext_sec_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_secflags = common dso_local global i32 0, align 4
@CIFSSEC_MAY_KRB5 = common dso_local global i32 0, align 4
@CIFSSEC_MAY_NTLMSSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @should_set_ext_sec_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @should_set_ext_sec_flag(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 129, label %5
    i32 130, label %5
    i32 128, label %6
  ]

5:                                                ; preds = %1, %1
  store i32 1, i32* %2, align 4
  br label %16

6:                                                ; preds = %1
  %7 = load i32, i32* @global_secflags, align 4
  %8 = load i32, i32* @CIFSSEC_MAY_KRB5, align 4
  %9 = load i32, i32* @CIFSSEC_MAY_NTLMSSP, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  br label %16

14:                                               ; preds = %6
  br label %15

15:                                               ; preds = %1, %14
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %13, %5
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
