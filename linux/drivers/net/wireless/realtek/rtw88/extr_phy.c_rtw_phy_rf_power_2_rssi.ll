; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_rf_power_2_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_rf_power_2_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FRAC_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtw_phy_rf_power_2_rssi(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32*, i32** %3, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @rtw_phy_power_2_db(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @rtw_phy_db_2_linear(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %14
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  br label %10

29:                                               ; preds = %10
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FRAC_BITS, align 4
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  %34 = add nsw i32 %30, %33
  %35 = load i32, i32* @FRAC_BITS, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i64, i64* %4, align 8
  switch i64 %37, label %53 [
    i64 2, label %38
    i64 3, label %41
    i64 4, label %50
  ]

38:                                               ; preds = %29
  %39 = load i32, i32* %8, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %54

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 1
  %45 = add nsw i32 %42, %44
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 3
  %48 = add nsw i32 %45, %47
  %49 = ashr i32 %48, 5
  store i32 %49, i32* %8, align 4
  br label %54

50:                                               ; preds = %29
  %51 = load i32, i32* %8, align 4
  %52 = ashr i32 %51, 2
  store i32 %52, i32* %8, align 4
  br label %54

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %50, %41, %38
  %55 = load i32, i32* %8, align 4
  %56 = call i64 @rtw_phy_linear_2_db(i32 %55)
  ret i64 %56
}

declare dso_local i64 @rtw_phy_power_2_db(i32) #1

declare dso_local i32 @rtw_phy_db_2_linear(i64) #1

declare dso_local i64 @rtw_phy_linear_2_db(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
