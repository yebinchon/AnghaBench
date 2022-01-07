; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_tx_power_by_rate_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_tx_power_by_rate_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_hal = type { i32 }

@RTW_RF_PATH_MAX = common dso_local global i64 0, align 8
@RTW_RATE_SECTION_CCK = common dso_local global i32 0, align 4
@rtw_cck_size = common dso_local global i32 0, align 4
@rtw_cck_rates = common dso_local global i32 0, align 4
@RTW_RATE_SECTION_OFDM = common dso_local global i32 0, align 4
@rtw_ofdm_size = common dso_local global i32 0, align 4
@rtw_ofdm_rates = common dso_local global i32 0, align 4
@RTW_RATE_SECTION_HT_1S = common dso_local global i32 0, align 4
@rtw_ht_1s_size = common dso_local global i32 0, align 4
@rtw_ht_1s_rates = common dso_local global i32 0, align 4
@RTW_RATE_SECTION_HT_2S = common dso_local global i32 0, align 4
@rtw_ht_2s_size = common dso_local global i32 0, align 4
@rtw_ht_2s_rates = common dso_local global i32 0, align 4
@RTW_RATE_SECTION_VHT_1S = common dso_local global i32 0, align 4
@rtw_vht_1s_size = common dso_local global i32 0, align 4
@rtw_vht_1s_rates = common dso_local global i32 0, align 4
@RTW_RATE_SECTION_VHT_2S = common dso_local global i32 0, align 4
@rtw_vht_2s_size = common dso_local global i32 0, align 4
@rtw_vht_2s_rates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_phy_tx_power_by_rate_config(%struct.rtw_hal* %0) #0 {
  %2 = alloca %struct.rtw_hal*, align 8
  %3 = alloca i64, align 8
  store %struct.rtw_hal* %0, %struct.rtw_hal** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %45, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @RTW_RF_PATH_MAX, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %48

8:                                                ; preds = %4
  %9 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* @RTW_RATE_SECTION_CCK, align 4
  %12 = load i32, i32* @rtw_cck_size, align 4
  %13 = load i32, i32* @rtw_cck_rates, align 4
  %14 = call i32 @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal* %9, i64 %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @RTW_RATE_SECTION_OFDM, align 4
  %18 = load i32, i32* @rtw_ofdm_size, align 4
  %19 = load i32, i32* @rtw_ofdm_rates, align 4
  %20 = call i32 @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal* %15, i64 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @RTW_RATE_SECTION_HT_1S, align 4
  %24 = load i32, i32* @rtw_ht_1s_size, align 4
  %25 = load i32, i32* @rtw_ht_1s_rates, align 4
  %26 = call i32 @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal* %21, i64 %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @RTW_RATE_SECTION_HT_2S, align 4
  %30 = load i32, i32* @rtw_ht_2s_size, align 4
  %31 = load i32, i32* @rtw_ht_2s_rates, align 4
  %32 = call i32 @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal* %27, i64 %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* @RTW_RATE_SECTION_VHT_1S, align 4
  %36 = load i32, i32* @rtw_vht_1s_size, align 4
  %37 = load i32, i32* @rtw_vht_1s_rates, align 4
  %38 = call i32 @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal* %33, i64 %34, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.rtw_hal*, %struct.rtw_hal** %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i32, i32* @RTW_RATE_SECTION_VHT_2S, align 4
  %42 = load i32, i32* @rtw_vht_2s_size, align 4
  %43 = load i32, i32* @rtw_vht_2s_rates, align 4
  %44 = call i32 @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal* %39, i64 %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %8
  %46 = load i64, i64* %3, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %4

48:                                               ; preds = %4
  ret void
}

declare dso_local i32 @rtw_phy_tx_power_by_rate_config_by_path(%struct.rtw_hal*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
