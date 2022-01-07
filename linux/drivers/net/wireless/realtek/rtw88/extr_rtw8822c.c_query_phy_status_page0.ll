; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_query_phy_status_page0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822c.c_query_phy_status_page0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_dm_info }
%struct.rtw_dm_info = type { i64, i64 }
%struct.rtw_rx_pkt_stat = type { i64*, i32, i32, i32 }

@RTW_RF_PATH_MAX = common dso_local global i32 0, align 4
@RF_PATH_A = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i64*, %struct.rtw_rx_pkt_stat*)* @query_phy_status_page0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_phy_status_page0(%struct.rtw_dev* %0, i64* %1, %struct.rtw_rx_pkt_stat* %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %7 = alloca %struct.rtw_dm_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.rtw_rx_pkt_stat* %2, %struct.rtw_rx_pkt_stat** %6, align 8
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 0
  store %struct.rtw_dm_info* %16, %struct.rtw_dm_info** %7, align 8
  %17 = load i32, i32* @RTW_RF_PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %12, align 8
  %20 = alloca i64, i64 %18, align 16
  store i64 %18, i64* %13, align 8
  store i64 -120, i64* %14, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = call i64 @GET_PHY_STAT_P0_PWDB_A(i64* %21)
  %23 = load i64, i64* @RF_PATH_A, align 8
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  store i64 %22, i64* %24, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = call i64 @GET_PHY_STAT_P0_PWDB_B(i64* %25)
  %27 = load i64, i64* @RF_PATH_B, align 8
  %28 = getelementptr inbounds i64, i64* %20, i64 %27
  store i64 %26, i64* %28, align 8
  %29 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %7, align 8
  %30 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load %struct.rtw_dm_info*, %struct.rtw_dm_info** %7, align 8
  %33 = getelementptr inbounds %struct.rtw_dm_info, %struct.rtw_dm_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %9, align 8
  %35 = load i64*, i64** %5, align 8
  %36 = call i64 @GET_PHY_STAT_P0_GAIN_A(i64* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64*, i64** %5, align 8
  %38 = call i64 @GET_PHY_STAT_P0_GAIN_B(i64* %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %3
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %43, %44
  %46 = shl i64 %45, 1
  %47 = load i64, i64* @RF_PATH_A, align 8
  %48 = getelementptr inbounds i64, i64* %20, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %65

51:                                               ; preds = %3
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub nsw i64 %56, %57
  %59 = shl i64 %58, 1
  %60 = load i64, i64* @RF_PATH_A, align 8
  %61 = getelementptr inbounds i64, i64* %20, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %64

64:                                               ; preds = %55, %51
  br label %65

65:                                               ; preds = %64, %42
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = sub nsw i64 %70, %71
  %73 = shl i64 %72, 1
  %74 = load i64, i64* @RF_PATH_B, align 8
  %75 = getelementptr inbounds i64, i64* %20, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, %73
  store i64 %77, i64* %75, align 8
  br label %92

78:                                               ; preds = %65
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i64, i64* %11, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub nsw i64 %83, %84
  %86 = shl i64 %85, 1
  %87 = load i64, i64* @RF_PATH_B, align 8
  %88 = getelementptr inbounds i64, i64* %20, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %82, %78
  br label %92

92:                                               ; preds = %91, %69
  %93 = load i64, i64* @RF_PATH_A, align 8
  %94 = getelementptr inbounds i64, i64* %20, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %95, 110
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* @RF_PATH_B, align 8
  %98 = getelementptr inbounds i64, i64* %20, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %99, 110
  store i64 %100, i64* %98, align 8
  %101 = load i64, i64* @RF_PATH_A, align 8
  %102 = getelementptr inbounds i64, i64* %20, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %105 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = load i64, i64* @RF_PATH_A, align 8
  %108 = getelementptr inbounds i64, i64* %106, i64 %107
  store i64 %103, i64* %108, align 8
  %109 = load i64, i64* @RF_PATH_B, align 8
  %110 = getelementptr inbounds i64, i64* %20, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %113 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  %115 = load i64, i64* @RF_PATH_B, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  store i64 %111, i64* %116, align 8
  %117 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %118 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = call i32 @rtw_phy_rf_power_2_rssi(i64* %119, i32 1)
  %121 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %122 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load i32, i32* @RTW_CHANNEL_WIDTH_20, align 4
  %124 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %125 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  %126 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %127 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @RF_PATH_A, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %14, align 8
  %133 = call i32 @max(i64 %131, i64 %132)
  %134 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %6, align 8
  %135 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %136)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GET_PHY_STAT_P0_PWDB_A(i64*) #2

declare dso_local i64 @GET_PHY_STAT_P0_PWDB_B(i64*) #2

declare dso_local i64 @GET_PHY_STAT_P0_GAIN_A(i64*) #2

declare dso_local i64 @GET_PHY_STAT_P0_GAIN_B(i64*) #2

declare dso_local i32 @rtw_phy_rf_power_2_rssi(i64*, i32) #2

declare dso_local i32 @max(i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
