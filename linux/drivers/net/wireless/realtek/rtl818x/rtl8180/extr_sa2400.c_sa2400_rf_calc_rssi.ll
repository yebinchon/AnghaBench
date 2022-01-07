; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_sa2400.c_sa2400_rf_calc_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_sa2400.c_sa2400_rf_calc_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sa2400_rf_rssi_map = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sa2400_rf_calc_rssi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa2400_rf_calc_rssi(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 128
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %21

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 78
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 32, i32* %3, align 4
  br label %21

13:                                               ; preds = %9
  %14 = load i32*, i32** @sa2400_rf_rssi_map, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 65, %18
  %20 = sdiv i32 %19, 100
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %13, %12, %8
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
