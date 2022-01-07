; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_query_phy_status_page1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_query_phy_status_page1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_rx_pkt_stat = type { i64, i32, i64*, i32, i32 }

@DESC_RATE11M = common dso_local global i64 0, align 8
@DESC_RATEMCS0 = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*)* @query_phy_status_page1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_phy_status_page1(%struct.rtw_dev* %0, i32* %1, %struct.rtw_rx_pkt_stat* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.rtw_rx_pkt_stat* %2, %struct.rtw_rx_pkt_stat** %6, align 8
  store i32 -120, i32* %9, align 4
  %10 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %11 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DESC_RATE11M, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %17 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DESC_RATEMCS0, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @GET_PHY_STAT_P1_L_RXSC(i32* %22)
  store i32 %23, i32* %7, align 4
  br label %27

24:                                               ; preds = %15, %3
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @GET_PHY_STAT_P1_HT_RXSC(i32* %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 9
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 12
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @RTW_CHANNEL_WIDTH_40, align 4
  store i32 %34, i32* %8, align 4
  br label %43

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 13
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @RTW_CHANNEL_WIDTH_80, align 4
  store i32 %39, i32* %8, align 4
  br label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %33
  %44 = load i32*, i32** %5, align 8
  %45 = call i64 @GET_PHY_STAT_P1_PWDB_A(i32* %44)
  %46 = sub nsw i64 %45, 110
  %47 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %48 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @RF_PATH_A, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 %46, i64* %51, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i64 @GET_PHY_STAT_P1_PWDB_B(i32* %52)
  %54 = sub nsw i64 %53, 110
  %55 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %56 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* @RF_PATH_B, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %54, i64* %59, align 8
  %60 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %61 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %60, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = call i32 @rtw_phy_rf_power_2_rssi(i64* %62, i32 2)
  %64 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %65 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %68 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %70 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %69, i32 0, i32 2
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* @RF_PATH_A, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %76 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %75, i32 0, i32 2
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @RF_PATH_B, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @max3(i64 %74, i64 %80, i32 %81)
  %83 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %84 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  ret void
}

declare dso_local i32 @GET_PHY_STAT_P1_L_RXSC(i32*) #1

declare dso_local i32 @GET_PHY_STAT_P1_HT_RXSC(i32*) #1

declare dso_local i64 @GET_PHY_STAT_P1_PWDB_A(i32*) #1

declare dso_local i64 @GET_PHY_STAT_P1_PWDB_B(i32*) #1

declare dso_local i32 @rtw_phy_rf_power_2_rssi(i64*, i32) #1

declare dso_local i32 @max3(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
