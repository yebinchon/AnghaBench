; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_get_tx_power_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_get_tx_power_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_hal }
%struct.TYPE_2__ = type { %struct.rtw_txpwr_idx* }
%struct.rtw_txpwr_idx = type { i32, i32 }
%struct.rtw_hal = type { i32**, i32** }
%struct.rtw_power_params = type { i64, i32, i32 }

@PHY_BAND_2G = common dso_local global i64 0, align 8
@PHY_BAND_5G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_get_tx_power_params(%struct.rtw_dev* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.rtw_power_params* %6) #0 {
  %8 = alloca %struct.rtw_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rtw_power_params*, align 8
  %15 = alloca %struct.rtw_hal*, align 8
  %16 = alloca %struct.rtw_txpwr_idx*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store %struct.rtw_power_params* %6, %struct.rtw_power_params** %14, align 8
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %23 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %22, i32 0, i32 1
  store %struct.rtw_hal* %23, %struct.rtw_hal** %15, align 8
  %24 = load %struct.rtw_power_params*, %struct.rtw_power_params** %14, align 8
  %25 = getelementptr inbounds %struct.rtw_power_params, %struct.rtw_power_params* %24, i32 0, i32 0
  store i64* %25, i64** %19, align 8
  %26 = load %struct.rtw_power_params*, %struct.rtw_power_params** %14, align 8
  %27 = getelementptr inbounds %struct.rtw_power_params, %struct.rtw_power_params* %26, i32 0, i32 2
  store i32* %27, i32** %20, align 8
  %28 = load %struct.rtw_power_params*, %struct.rtw_power_params** %14, align 8
  %29 = getelementptr inbounds %struct.rtw_power_params, %struct.rtw_power_params* %28, i32 0, i32 1
  store i32* %29, i32** %21, align 8
  %30 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %31 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.rtw_txpwr_idx*, %struct.rtw_txpwr_idx** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.rtw_txpwr_idx, %struct.rtw_txpwr_idx* %33, i64 %34
  store %struct.rtw_txpwr_idx* %35, %struct.rtw_txpwr_idx** %16, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i64 @rtw_get_channel_group(i64 %36)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ule i64 %38, 14
  br i1 %39, label %40, label %60

40:                                               ; preds = %7
  %41 = load i64, i64* @PHY_BAND_2G, align 8
  store i64 %41, i64* %18, align 8
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %43 = load %struct.rtw_txpwr_idx*, %struct.rtw_txpwr_idx** %16, align 8
  %44 = getelementptr inbounds %struct.rtw_txpwr_idx, %struct.rtw_txpwr_idx* %43, i32 0, i32 1
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i64 @rtw_phy_get_2g_tx_power_index(%struct.rtw_dev* %42, i32* %44, i64 %45, i64 %46, i64 %47)
  %49 = load i64*, i64** %19, align 8
  store i64 %48, i64* %49, align 8
  %50 = load %struct.rtw_hal*, %struct.rtw_hal** %15, align 8
  %51 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %20, align 8
  store i32 %58, i32* %59, align 4
  br label %80

60:                                               ; preds = %7
  %61 = load i64, i64* @PHY_BAND_5G, align 8
  store i64 %61, i64* %18, align 8
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %63 = load %struct.rtw_txpwr_idx*, %struct.rtw_txpwr_idx** %16, align 8
  %64 = getelementptr inbounds %struct.rtw_txpwr_idx, %struct.rtw_txpwr_idx* %63, i32 0, i32 0
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %17, align 8
  %68 = call i64 @rtw_phy_get_5g_tx_power_index(%struct.rtw_dev* %62, i32* %64, i64 %65, i64 %66, i64 %67)
  %69 = load i64*, i64** %19, align 8
  store i64 %68, i64* %69, align 8
  %70 = load %struct.rtw_hal*, %struct.rtw_hal** %15, align 8
  %71 = getelementptr inbounds %struct.rtw_hal, %struct.rtw_hal* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* %9, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %20, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %60, %40
  %81 = load %struct.rtw_dev*, %struct.rtw_dev** %8, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i32 @rtw_phy_get_tx_power_limit(%struct.rtw_dev* %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  %89 = load i32*, i32** %21, align 8
  store i32 %88, i32* %89, align 4
  ret void
}

declare dso_local i64 @rtw_get_channel_group(i64) #1

declare dso_local i64 @rtw_phy_get_2g_tx_power_index(%struct.rtw_dev*, i32*, i64, i64, i64) #1

declare dso_local i64 @rtw_phy_get_5g_tx_power_index(%struct.rtw_dev*, i32*, i64, i64, i64) #1

declare dso_local i32 @rtw_phy_get_tx_power_limit(%struct.rtw_dev*, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
