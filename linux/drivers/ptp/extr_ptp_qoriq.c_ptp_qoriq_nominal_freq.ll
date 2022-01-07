; ModuleID = '/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_nominal_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ptp/extr_ptp_qoriq.c_ptp_qoriq_nominal_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ptp_qoriq_nominal_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptp_qoriq_nominal_freq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sdiv i32 %4, 1000000
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = srem i32 %6, 100
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 %12, %11
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 100
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %10, %1
  br label %17

17:                                               ; preds = %20, %16
  %18 = load i32, i32* %2, align 4
  %19 = sub nsw i32 %18, 100
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %2, align 4
  %22 = srem i32 1000, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %17, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %2, align 4
  %26 = mul nsw i32 %25, 1000000
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
