; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_coef_iq_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_rtw8822c_dpk_coef_iq_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32, i32)* @rtw8822c_dpk_coef_iq_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw8822c_dpk_coef_iq_check(%struct.rtw_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 4096
  br i1 %9, label %19, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 4095
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 4096
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 4095
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %13, %10, %3
  store i32 1, i32* %4, align 4
  br label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
