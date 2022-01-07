; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_encode_outsize_for_pvsz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_hp-wmi.c_encode_outsize_for_pvsz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @encode_outsize_for_pvsz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_outsize_for_pvsz(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 4096
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @EINVAL, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 1024
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 5, i32* %2, align 4
  br label %26

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp sgt i32 %14, 128
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 4, i32* %2, align 4
  br label %26

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = icmp sgt i32 %18, 4
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 3, i32* %2, align 4
  br label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 2, i32* %2, align 4
  br label %26

25:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %24, %20, %16, %12, %6
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
