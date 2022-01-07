; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_get_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_get_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_info = type { i32, i32, %struct.TYPE_4__, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wilc_vif = type { i64, %struct.wilc_priv }
%struct.wilc_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rf_info = type { i32, i64, i64, i32, i32 }

@WILC_AP_MODE = common dso_local global i64 0, align 8
@WILC_GO_MODE = common dso_local global i64 0, align 8
@NUM_STA_ASSOCIATED = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sta required is not associated\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@NL80211_STA_INFO_INACTIVE_TIME = common dso_local global i32 0, align 4
@WILC_STATION_MODE = common dso_local global i64 0, align 8
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@NL80211_STA_INFO_RX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_PACKETS = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_FAILED = common dso_local global i32 0, align 4
@NL80211_STA_INFO_TX_BITRATE = common dso_local global i32 0, align 4
@TCP_ACK_FILTER_LINK_SPEED_THRESH = common dso_local global i32 0, align 4
@DEFAULT_LINK_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_info*)* @get_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.station_info*, align 8
  %10 = alloca %struct.wilc_vif*, align 8
  %11 = alloca %struct.wilc_priv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.rf_info, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.station_info* %3, %struct.station_info** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %16)
  store %struct.wilc_vif* %17, %struct.wilc_vif** %10, align 8
  %18 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %19 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %18, i32 0, i32 1
  store %struct.wilc_priv* %19, %struct.wilc_priv** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %20 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %21 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WILC_AP_MODE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %27 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WILC_GO_MODE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %77

31:                                               ; preds = %25, %4
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @NUM_STA_ASSOCIATED, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %32
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.wilc_priv*, %struct.wilc_priv** %11, align 8
  %39 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcmp(i32* %37, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %36
  %49 = load i64, i64* %12, align 8
  store i64 %49, i64* %13, align 8
  br label %54

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %12, align 8
  br label %32

54:                                               ; preds = %48, %32
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %55, -1
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @netdev_err(%struct.net_device* %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %153

62:                                               ; preds = %54
  %63 = load i32, i32* @NL80211_STA_INFO_INACTIVE_TIME, align 4
  %64 = call i32 @BIT_ULL(i32 %63)
  %65 = load %struct.station_info*, %struct.station_info** %9, align 8
  %66 = getelementptr inbounds %struct.station_info, %struct.station_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @wilc_get_inactive_time(%struct.wilc_vif* %69, i32* %70, i64* %14)
  %72 = load i64, i64* %14, align 8
  %73 = mul i64 1000, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.station_info*, %struct.station_info** %9, align 8
  %76 = getelementptr inbounds %struct.station_info, %struct.station_info* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %152

77:                                               ; preds = %25
  %78 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %79 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @WILC_STATION_MODE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %151

83:                                               ; preds = %77
  %84 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %85 = call i32 @wilc_get_statistics(%struct.wilc_vif* %84, %struct.rf_info* %15)
  %86 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %87 = call i32 @BIT_ULL(i32 %86)
  %88 = load i32, i32* @NL80211_STA_INFO_RX_PACKETS, align 4
  %89 = call i32 @BIT_ULL(i32 %88)
  %90 = or i32 %87, %89
  %91 = load i32, i32* @NL80211_STA_INFO_TX_PACKETS, align 4
  %92 = call i32 @BIT_ULL(i32 %91)
  %93 = or i32 %90, %92
  %94 = load i32, i32* @NL80211_STA_INFO_TX_FAILED, align 4
  %95 = call i32 @BIT_ULL(i32 %94)
  %96 = or i32 %93, %95
  %97 = load i32, i32* @NL80211_STA_INFO_TX_BITRATE, align 4
  %98 = call i32 @BIT_ULL(i32 %97)
  %99 = or i32 %96, %98
  %100 = load %struct.station_info*, %struct.station_info** %9, align 8
  %101 = getelementptr inbounds %struct.station_info, %struct.station_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.station_info*, %struct.station_info** %9, align 8
  %107 = getelementptr inbounds %struct.station_info, %struct.station_info* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.station_info*, %struct.station_info** %9, align 8
  %111 = getelementptr inbounds %struct.station_info, %struct.station_info* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %113, %115
  %117 = load %struct.station_info*, %struct.station_info** %9, align 8
  %118 = getelementptr inbounds %struct.station_info, %struct.station_info* %117, i32 0, i32 4
  store i64 %116, i64* %118, align 8
  %119 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.station_info*, %struct.station_info** %9, align 8
  %122 = getelementptr inbounds %struct.station_info, %struct.station_info* %121, i32 0, i32 3
  store i64 %120, i64* %122, align 8
  %123 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 10
  %126 = load %struct.station_info*, %struct.station_info** %9, align 8
  %127 = getelementptr inbounds %struct.station_info, %struct.station_info* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  %129 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @TCP_ACK_FILTER_LINK_SPEED_THRESH, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %83
  %134 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DEFAULT_LINK_SPEED, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %140 = call i32 @wilc_enable_tcp_ack_filter(%struct.wilc_vif* %139, i32 1)
  br label %150

141:                                              ; preds = %133, %83
  %142 = getelementptr inbounds %struct.rf_info, %struct.rf_info* %15, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @DEFAULT_LINK_SPEED, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %148 = call i32 @wilc_enable_tcp_ack_filter(%struct.wilc_vif* %147, i32 0)
  br label %149

149:                                              ; preds = %146, %141
  br label %150

150:                                              ; preds = %149, %138
  br label %151

151:                                              ; preds = %150, %77
  br label %152

152:                                              ; preds = %151, %62
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %57
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @wilc_get_inactive_time(%struct.wilc_vif*, i32*, i64*) #1

declare dso_local i32 @wilc_get_statistics(%struct.wilc_vif*, %struct.rf_info*) #1

declare dso_local i32 @wilc_enable_tcp_ack_filter(%struct.wilc_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
