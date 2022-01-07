; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i64, i32, i32, i32, i32, i32 }

@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@MT_MAC_BSSID_DW0 = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@MT_LEGACY_BASIC_RATE = common dso_local global i32 0, align 4
@MT_HT_FBK_CFG0 = common dso_local global i32 0, align 4
@MT_HT_FBK_CFG1 = common dso_local global i32 0, align 4
@MT_LG_FBK_CFG0 = common dso_local global i32 0, align 4
@MT_LG_FBK_CFG1 = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@MT_BKOFF_SLOT_CFG = common dso_local global i32 0, align 4
@MT_BKOFF_SLOT_CFG_SLOTTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @mt7601u_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt7601u_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %12, align 8
  store %struct.mt7601u_dev* %13, %struct.mt7601u_dev** %9, align 8
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %15 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %23 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %24 = call i32 @mt7601u_phy_con_cal_onoff(%struct.mt7601u_dev* %22, %struct.ieee80211_bss_conf* %23)
  br label %25

25:                                               ; preds = %21, %4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %32 = load i32, i32* @MT_MAC_BSSID_DW0, align 4
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @mt7601u_addr_wr(%struct.mt7601u_dev* %31, i32 %32, i32 %35)
  %37 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @is_zero_ether_addr(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %44 = call i32 @mt7601u_mac_config_tsf(%struct.mt7601u_dev* %43, i32 0, i32 0)
  br label %45

45:                                               ; preds = %42, %30
  br label %46

46:                                               ; preds = %45, %25
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %53 = load i32, i32* @MT_LEGACY_BASIC_RATE, align 4
  %54 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %52, i32 %53, i32 %56)
  %58 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %59 = load i32, i32* @MT_HT_FBK_CFG0, align 4
  %60 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %58, i32 %59, i32 1698898176)
  %61 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %62 = load i32, i32* @MT_HT_FBK_CFG1, align 4
  %63 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %61, i32 %62, i32 -305419904)
  %64 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %65 = load i32, i32* @MT_LG_FBK_CFG0, align 4
  %66 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %64, i32 %65, i32 -305419896)
  %67 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %68 = load i32, i32* @MT_LG_FBK_CFG1, align 4
  %69 = call i32 @mt7601u_wr(%struct.mt7601u_dev* %67, i32 %68, i32 8448)
  br label %70

70:                                               ; preds = %51, %46
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %77 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %78 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mt7601u_mac_config_tsf(%struct.mt7601u_dev* %76, i32 1, i32 %79)
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @BSS_CHANGED_HT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86, %81
  %92 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %93 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %94 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @mt7601u_mac_set_protection(%struct.mt7601u_dev* %92, i32 %95, i32 %98)
  br label %100

100:                                              ; preds = %91, %86
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %107 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %108 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @mt7601u_mac_set_short_preamble(%struct.mt7601u_dev* %106, i32 %109)
  br label %111

111:                                              ; preds = %105, %100
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 9, i32 20
  store i32 %122, i32* %10, align 4
  %123 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %124 = load i32, i32* @MT_BKOFF_SLOT_CFG, align 4
  %125 = load i32, i32* @MT_BKOFF_SLOT_CFG_SLOTTIME, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @mt76_rmw_field(%struct.mt7601u_dev* %123, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %116, %111
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %135 = call i32 @mt7601u_phy_recalibrate_after_assoc(%struct.mt7601u_dev* %134)
  br label %136

136:                                              ; preds = %133, %128
  %137 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %9, align 8
  %138 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %137, i32 0, i32 0
  %139 = call i32 @mutex_unlock(i32* %138)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7601u_phy_con_cal_onoff(%struct.mt7601u_dev*, %struct.ieee80211_bss_conf*) #1

declare dso_local i32 @mt7601u_addr_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @mt7601u_mac_config_tsf(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_wr(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_mac_set_protection(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @mt7601u_mac_set_short_preamble(%struct.mt7601u_dev*, i32) #1

declare dso_local i32 @mt76_rmw_field(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt7601u_phy_recalibrate_after_assoc(%struct.mt7601u_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
