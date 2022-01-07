; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32, %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.rtw_dev*)* }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_bss_conf = type { i32, i64, i64 }
%struct.rtw_vif = type { i32, i32, i64 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@COEX_ASSOCIATE_FINISH = common dso_local global i32 0, align 4
@RTW_NET_MGD_LINKED = common dso_local global i32 0, align 4
@RSVD_PS_POLL = common dso_local global i32 0, align 4
@RSVD_QOS_NULL = common dso_local global i32 0, align 4
@RSVD_NULL = common dso_local global i32 0, align 4
@RTW_NET_NO_LINK = common dso_local global i32 0, align 4
@PORT_SET_NET_TYPE = common dso_local global i32 0, align 4
@PORT_SET_AID = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@PORT_SET_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @rtw_ops_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_ops_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtw_dev*, align 8
  %10 = alloca %struct.rtw_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtw_chip_info*, align 8
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %15, align 8
  store %struct.rtw_dev* %16, %struct.rtw_dev** %9, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.rtw_vif*
  store %struct.rtw_vif* %20, %struct.rtw_vif** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %22 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %30 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %29, i32 0, i32 1
  %31 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %30, align 8
  store %struct.rtw_chip_info* %31, %struct.rtw_chip_info** %12, align 8
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %28
  %37 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %38 = load i32, i32* @COEX_ASSOCIATE_FINISH, align 4
  %39 = call i32 @rtw_coex_connect_notify(%struct.rtw_dev* %37, i32 %38)
  %40 = load i32, i32* @RTW_NET_MGD_LINKED, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  %42 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (%struct.rtw_dev*)*, i32 (%struct.rtw_dev*)** %44, align 8
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %47 = call i32 %45(%struct.rtw_dev* %46)
  %48 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %49 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %52 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %54 = load i32, i32* @RSVD_PS_POLL, align 4
  %55 = call i32 @rtw_add_rsvd_page(%struct.rtw_dev* %53, i32 %54, i32 1)
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %57 = load i32, i32* @RSVD_QOS_NULL, align 4
  %58 = call i32 @rtw_add_rsvd_page(%struct.rtw_dev* %56, i32 %57, i32 1)
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %60 = load i32, i32* @RSVD_NULL, align 4
  %61 = call i32 @rtw_add_rsvd_page(%struct.rtw_dev* %59, i32 %60, i32 1)
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %64 = call i32 @rtw_fw_download_rsvd_page(%struct.rtw_dev* %62, %struct.ieee80211_vif* %63)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %66 = call i32 @rtw_send_rsvd_page_h2c(%struct.rtw_dev* %65)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %68 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %69 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @rtw_coex_media_status_notify(%struct.rtw_dev* %67, i64 %70)
  br label %78

72:                                               ; preds = %28
  %73 = load i32, i32* @RTW_NET_NO_LINK, align 4
  store i32 %73, i32* %13, align 4
  %74 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %75 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %77 = call i32 @rtw_reset_rsvd_page(%struct.rtw_dev* %76)
  br label %78

78:                                               ; preds = %72, %36
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %81 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @PORT_SET_NET_TYPE, align 4
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* @PORT_SET_AID, align 4
  %86 = load i32, i32* %11, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %78, %4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %88
  %94 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %95 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %98 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @ether_addr_copy(i32 %96, i32 %99)
  %101 = load i32, i32* @PORT_SET_BSSID, align 4
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %93, %88
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %111 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %112 = call i32 @rtw_fw_download_rsvd_page(%struct.rtw_dev* %110, %struct.ieee80211_vif* %111)
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %115 = load %struct.rtw_vif*, %struct.rtw_vif** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @rtw_vif_port_config(%struct.rtw_dev* %114, %struct.rtw_vif* %115, i32 %116)
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  %119 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_coex_connect_notify(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_add_rsvd_page(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_fw_download_rsvd_page(%struct.rtw_dev*, %struct.ieee80211_vif*) #1

declare dso_local i32 @rtw_send_rsvd_page_h2c(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_media_status_notify(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_reset_rsvd_page(%struct.rtw_dev*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rtw_vif_port_config(%struct.rtw_dev*, %struct.rtw_vif*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
