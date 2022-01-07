; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_query_phy_status_page0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_query_phy_status_page0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_rx_pkt_stat = type { i64*, i32, i32, i32 }

@RF_PATH_A = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64*, %struct.rtw_rx_pkt_stat*)* @query_phy_status_page0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_phy_status_page0(%struct.rtw_dev* %0, i64* %1, %struct.rtw_rx_pkt_stat* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.rtw_rx_pkt_stat* %2, %struct.rtw_rx_pkt_stat** %6, align 8
  store i32 -120, i32* %7, align 4
  %9 = load i64*, i64** %5, align 8
  %10 = call i64 @GET_PHY_STAT_P0_PWDB(i64* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = sub nsw i64 %11, 110
  %13 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %14 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @RF_PATH_A, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 %12, i64* %17, align 8
  %18 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %19 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @rtw_phy_rf_power_2_rssi(i64* %20, i32 1)
  %22 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %23 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  %25 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %26 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %28 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* @RF_PATH_A, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @max(i64 %32, i32 %33)
  %35 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %36 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local i64 @GET_PHY_STAT_P0_PWDB(i64*) #1

declare dso_local i32 @rtw_phy_rf_power_2_rssi(i64*, i32) #1

declare dso_local i32 @max(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
