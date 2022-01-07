; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_cfg_connect_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_cfg_connect_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_priv = type { %struct.net_device*, i32, %struct.TYPE_2__, %struct.host_if_drv* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.host_if_drv = type { i64, %struct.wilc_conn_info }
%struct.wilc_conn_info = type { i64, i32, i32, i32, i32, i32 }
%struct.wilc_vif = type { i32, i64, %struct.wilc* }
%struct.wilc = type { i8* }

@CONN_DISCONN_EVENT_CONN_RESP = common dso_local global i32 0, align 4
@WILC_MAC_STATUS_DISCONNECTED = common dso_local global i64 0, align 8
@WLAN_STATUS_SUCCESS = common dso_local global i64 0, align 8
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i64 0, align 8
@WILC_STATION_MODE = common dso_local global i32 0, align 4
@WILC_CLIENT_MODE = common dso_local global i64 0, align 8
@WILC_INVALID_CHANNEL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Unspecified failure\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CONN_DISCONN_EVENT_DISCONN_NOTIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @cfg_connect_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfg_connect_result(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wilc_priv*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.wilc_vif*, align 8
  %10 = alloca %struct.wilc*, align 8
  %11 = alloca %struct.host_if_drv*, align 8
  %12 = alloca %struct.wilc_conn_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.wilc_priv*
  store %struct.wilc_priv* %16, %struct.wilc_priv** %7, align 8
  %17 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %18 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %20)
  store %struct.wilc_vif* %21, %struct.wilc_vif** %9, align 8
  %22 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %23 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %22, i32 0, i32 2
  %24 = load %struct.wilc*, %struct.wilc** %23, align 8
  store %struct.wilc* %24, %struct.wilc** %10, align 8
  %25 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %26 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %25, i32 0, i32 3
  %27 = load %struct.host_if_drv*, %struct.host_if_drv** %26, align 8
  store %struct.host_if_drv* %27, %struct.host_if_drv** %11, align 8
  %28 = load %struct.host_if_drv*, %struct.host_if_drv** %11, align 8
  %29 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %28, i32 0, i32 1
  store %struct.wilc_conn_info* %29, %struct.wilc_conn_info** %12, align 8
  %30 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %31 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @CONN_DISCONN_EVENT_CONN_RESP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %98

35:                                               ; preds = %3
  %36 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %37 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @WILC_MAC_STATUS_DISCONNECTED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %35
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %42
  %47 = load i64, i64* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 8
  store i64 %47, i64* %13, align 8
  %48 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %49 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %48, i32 0, i32 0
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  %51 = load i32, i32* @WILC_STATION_MODE, align 4
  %52 = call i32 @wilc_wlan_set_bssid(%struct.net_device* %50, i32* null, i32 %51)
  %53 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %54 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @WILC_CLIENT_MODE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load i8*, i8** @WILC_INVALID_CHANNEL, align 8
  %60 = load %struct.wilc*, %struct.wilc** %10, align 8
  %61 = getelementptr inbounds %struct.wilc, %struct.wilc* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %62

62:                                               ; preds = %58, %46
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = call i32 @netdev_err(%struct.net_device* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %62, %42, %35
  %66 = load i64, i64* %13, align 8
  %67 = load i64, i64* @WLAN_STATUS_SUCCESS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %71 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %74 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call i32 @memcpy(i32 %72, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %65
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %81 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %84 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %87 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %90 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wilc_conn_info*, %struct.wilc_conn_info** %12, align 8
  %93 = getelementptr inbounds %struct.wilc_conn_info, %struct.wilc_conn_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i32 @cfg80211_connect_result(%struct.net_device* %79, i32 %82, i32 %85, i32 %88, i32 %91, i32 %94, i64 %95, i32 %96)
  br label %144

98:                                               ; preds = %3
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @CONN_DISCONN_EVENT_DISCONN_NOTIF, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %143

102:                                              ; preds = %98
  store i64 0, i64* %14, align 8
  %103 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %104 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %107 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %110 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  store i32 0, i32* %111, align 4
  %112 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %113 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @eth_zero_addr(i32 %114)
  %116 = load %struct.wilc_priv*, %struct.wilc_priv** %7, align 8
  %117 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %116, i32 0, i32 0
  %118 = load %struct.net_device*, %struct.net_device** %117, align 8
  %119 = load i32, i32* @WILC_STATION_MODE, align 4
  %120 = call i32 @wilc_wlan_set_bssid(%struct.net_device* %118, i32* null, i32 %119)
  %121 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %122 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @WILC_CLIENT_MODE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %102
  %127 = load i8*, i8** @WILC_INVALID_CHANNEL, align 8
  %128 = load %struct.wilc*, %struct.wilc** %10, align 8
  %129 = getelementptr inbounds %struct.wilc, %struct.wilc* %128, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  br label %138

130:                                              ; preds = %102
  %131 = load %struct.host_if_drv*, %struct.host_if_drv** %11, align 8
  %132 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i64 3, i64* %14, align 8
  br label %137

136:                                              ; preds = %130
  store i64 1, i64* %14, align 8
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %137, %126
  %139 = load %struct.net_device*, %struct.net_device** %8, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load i32, i32* @GFP_KERNEL, align 4
  %142 = call i32 @cfg80211_disconnected(%struct.net_device* %139, i64 %140, i32* null, i32 0, i32 0, i32 %141)
  br label %143

143:                                              ; preds = %138, %98
  br label %144

144:                                              ; preds = %143, %78
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wilc_wlan_set_bssid(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cfg80211_connect_result(%struct.net_device*, i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @cfg80211_disconnected(%struct.net_device*, i64, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
