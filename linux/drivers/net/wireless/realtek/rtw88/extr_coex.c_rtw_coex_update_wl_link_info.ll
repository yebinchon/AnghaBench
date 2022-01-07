; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_update_wl_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_update_wl_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.rtw_traffic_stats, %struct.rtw_chip_info*, %struct.rtw_coex }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rtw_traffic_stats = type { i64, i64 }
%struct.rtw_chip_info = type { i32* }
%struct.rtw_coex = type { i32, %struct.rtw_coex_dm, %struct.rtw_coex_stat }
%struct.rtw_coex_dm = type { i32* }
%struct.rtw_coex_stat = type { i32, i32, i32, i8* }

@RTW_FLAG_SCANNING = common dso_local global i32 0, align 4
@RTW_FLAG_BUSY_TRAFFIC = common dso_local global i32 0, align 4
@COEX_WL_TPUT_TX = common dso_local global i32 0, align 4
@COEX_WL_TPUT_RX = common dso_local global i32 0, align 4
@RTW_BAND_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32)* @rtw_coex_update_wl_link_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_coex_update_wl_link_info(%struct.rtw_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_coex*, align 8
  %6 = alloca %struct.rtw_coex_stat*, align 8
  %7 = alloca %struct.rtw_coex_dm*, align 8
  %8 = alloca %struct.rtw_chip_info*, align 8
  %9 = alloca %struct.rtw_traffic_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 5
  store %struct.rtw_coex* %18, %struct.rtw_coex** %5, align 8
  %19 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %20 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %19, i32 0, i32 2
  store %struct.rtw_coex_stat* %20, %struct.rtw_coex_stat** %6, align 8
  %21 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %22 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %21, i32 0, i32 1
  store %struct.rtw_coex_dm* %22, %struct.rtw_coex_dm** %7, align 8
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %23, i32 0, i32 4
  %25 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %24, align 8
  store %struct.rtw_chip_info* %25, %struct.rtw_chip_info** %8, align 8
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %26, i32 0, i32 3
  store %struct.rtw_traffic_stats* %27, %struct.rtw_traffic_stats** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %29 = load i32, i32* @RTW_FLAG_SCANNING, align 4
  %30 = call i8* @rtw_flag_check(%struct.rtw_dev* %28, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %11, align 4
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %33 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %40 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %42 = load i32, i32* @RTW_FLAG_BUSY_TRAFFIC, align 4
  %43 = call i8* @rtw_flag_check(%struct.rtw_dev* %41, i32 %42)
  %44 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %45 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.rtw_traffic_stats*, %struct.rtw_traffic_stats** %9, align 8
  %47 = getelementptr inbounds %struct.rtw_traffic_stats, %struct.rtw_traffic_stats* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rtw_traffic_stats*, %struct.rtw_traffic_stats** %9, align 8
  %50 = getelementptr inbounds %struct.rtw_traffic_stats, %struct.rtw_traffic_stats* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load i32, i32* @COEX_WL_TPUT_TX, align 4
  %55 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %56 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %61

57:                                               ; preds = %2
  %58 = load i32, i32* @COEX_WL_TPUT_RX, align 4
  %59 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %60 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 133
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 132
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, 131
  br i1 %75, label %76, label %79

76:                                               ; preds = %73, %70, %67, %64, %61
  %77 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %78 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %82

79:                                               ; preds = %73
  %80 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %6, align 8
  %81 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %84 = call i32 @rtw_coex_wl_noisy_detect(%struct.rtw_dev* %83)
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %119, %82
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %7, align 8
  %90 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %8, align 8
  %97 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %15, align 4
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %104 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %16, align 4
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @rtw_coex_next_rssi_state(%struct.rtw_dev* %107, i32 %108, i32 %109, i32 %110)
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.rtw_coex_dm*, %struct.rtw_coex_dm** %7, align 8
  %114 = getelementptr inbounds %struct.rtw_coex_dm, %struct.rtw_coex_dm* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %112, i32* %118, align 4
  br label %119

119:                                              ; preds = %88
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %85

122:                                              ; preds = %85
  %123 = load i32, i32* %4, align 4
  switch i32 %123, label %126 [
    i32 129, label %124
    i32 128, label %124
    i32 130, label %124
    i32 132, label %125
    i32 131, label %125
    i32 133, label %125
  ]

124:                                              ; preds = %122, %122, %122
  store i32 1, i32* %10, align 4
  br label %136

125:                                              ; preds = %122, %122, %122
  store i32 0, i32* %10, align 4
  br label %136

126:                                              ; preds = %122
  %127 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %128 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @RTW_BAND_5G, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i32 1, i32* %10, align 4
  br label %135

134:                                              ; preds = %126
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %134, %133
  br label %136

136:                                              ; preds = %135, %125, %124
  %137 = load i32, i32* %10, align 4
  %138 = load %struct.rtw_coex*, %struct.rtw_coex** %5, align 8
  %139 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  ret void
}

declare dso_local i8* @rtw_flag_check(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_wl_noisy_detect(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_next_rssi_state(%struct.rtw_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
