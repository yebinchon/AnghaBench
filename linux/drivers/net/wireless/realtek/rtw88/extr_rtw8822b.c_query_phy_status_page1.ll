; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_query_phy_status_page1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_query_phy_status_page1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }
%struct.rtw_rx_pkt_stat = type { i64, i32, i64*, i32, i32 }

@DESC_RATE11M = common dso_local global i64 0, align 8
@DESC_RATEMCS0 = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
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
  %29 = icmp sge i32 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 8
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  store i32 %34, i32* %8, align 4
  br label %53

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %7, align 4
  %37 = icmp sge i32 %36, 9
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %39, 12
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @RTW_CHANNEL_WIDTH_40, align 4
  store i32 %42, i32* %8, align 4
  br label %52

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 13
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @RTW_CHANNEL_WIDTH_80, align 4
  store i32 %47, i32* %8, align 4
  br label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @GET_PHY_STAT_P1_RF_MODE(i32* %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %46
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @GET_PHY_STAT_P1_PWDB_A(i32* %54)
  %56 = sub nsw i64 %55, 110
  %57 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %58 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @RF_PATH_A, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %56, i64* %61, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @GET_PHY_STAT_P1_PWDB_B(i32* %62)
  %64 = sub nsw i64 %63, 110
  %65 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %66 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %65, i32 0, i32 2
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @RF_PATH_B, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  %70 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %71 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %70, i32 0, i32 2
  %72 = load i64*, i64** %71, align 8
  %73 = call i32 @rtw_phy_rf_power_2_rssi(i64* %72, i32 2)
  %74 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %75 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %78 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %80 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %79, i32 0, i32 2
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @RF_PATH_A, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %86 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* @RF_PATH_B, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @max3(i64 %84, i64 %90, i32 %91)
  %93 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %94 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  ret void
}

declare dso_local i32 @GET_PHY_STAT_P1_L_RXSC(i32*) #1

declare dso_local i32 @GET_PHY_STAT_P1_HT_RXSC(i32*) #1

declare dso_local i32 @GET_PHY_STAT_P1_RF_MODE(i32*) #1

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
