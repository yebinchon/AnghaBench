; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_tx_power_limit_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_tx_power_limit_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_hal = type { i32* }

@RTW_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@RTW_REGD_MAX = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_MAX = common dso_local global i64 0, align 8
@RTW_RATE_SECTION_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_phy_tx_power_limit_config(%struct.rtw_hal* %0) #0 {
  %2 = alloca %struct.rtw_hal*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.rtw_hal* %0, %struct.rtw_hal** %2, align 8
  %6 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %7 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @RTW_CHANNEL_WIDTH_20, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  store i32 1, i32* %10, align 4
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %39, %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @RTW_REGD_MAX, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @RTW_CHANNEL_WIDTH_MAX, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @RTW_RATE_SECTION_MAX, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @__rtw_phy_tx_power_limit_config(%struct.rtw_hal* %26, i64 %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %21

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %16

38:                                               ; preds = %16
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %3, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %11

42:                                               ; preds = %11
  ret void
}

declare dso_local i32 @__rtw_phy_tx_power_limit_config(%struct.rtw_hal*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
