; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_set_tx_power_level_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_set_tx_power_level_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_hal }
%struct.rtw_hal = type { i64 }

@RTW_BAND_2G = common dso_local global i64 0, align 8
@RTW_RATE_SECTION_CCK = common dso_local global i64 0, align 8
@RTW_RATE_SECTION_OFDM = common dso_local global i64 0, align 8
@RTW_RATE_SECTION_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64, i64)* @rtw_phy_set_tx_power_level_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_phy_set_tx_power_level_by_path(%struct.rtw_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtw_hal*, align 8
  %8 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 0
  store %struct.rtw_hal* %10, %struct.rtw_hal** %7, align 8
  %11 = load %struct.rtw_hal*, %struct.rtw_hal** %7, align 8
  %12 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RTW_BAND_2G, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @RTW_RATE_SECTION_CCK, align 8
  store i64 %17, i64* %8, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load i64, i64* @RTW_RATE_SECTION_OFDM, align 8
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %18, %16
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @RTW_RATE_SECTION_MAX, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @rtw_phy_set_tx_power_index_by_rs(%struct.rtw_dev* %26, i64 %27, i64 %28, i64 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %8, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %8, align 8
  br label %21

34:                                               ; preds = %21
  ret void
}

declare dso_local i32 @rtw_phy_set_tx_power_index_by_rs(%struct.rtw_dev*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
