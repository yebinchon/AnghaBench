; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i64, i32 }
%struct.rt2x00_intf = type { i32, i32 }

@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@BSS_CHANGED_BASIC_RATES = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_INT = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00mac_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00_dev*, align 8
  %10 = alloca %struct.rt2x00_intf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %12, align 8
  store %struct.rt2x00_dev* %13, %struct.rt2x00_dev** %9, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif* %14)
  store %struct.rt2x00_intf* %15, %struct.rt2x00_intf** %10, align 8
  %16 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %18 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %17, i32 0, i32 4
  %19 = call i32 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %169

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %29 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %30 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %34 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rt2x00lib_config_intf(%struct.rt2x00_dev* %28, %struct.rt2x00_intf* %29, i32 %32, i32* null, i32 %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %115

42:                                               ; preds = %37
  %43 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %44 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %42
  %51 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %52 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %57 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %61 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %60, i32 0, i32 0
  store i32 0, i32* %61, align 4
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %55
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %68 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @rt2x00queue_stop_queue(i32 %69)
  br label %71

71:                                               ; preds = %66, %55
  %72 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %74 = call i32 @rt2x00queue_clear_beacon(%struct.rt2x00_dev* %72, %struct.ieee80211_vif* %73)
  br label %111

75:                                               ; preds = %50, %42
  %76 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %75
  %81 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %82 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %80
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %87 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %91 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %93 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %98 = call i32 @rt2x00queue_update_beacon(%struct.rt2x00_dev* %96, %struct.ieee80211_vif* %97)
  br label %99

99:                                               ; preds = %95, %85
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %101 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %106 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @rt2x00queue_start_queue(i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %80, %75
  br label %111

111:                                              ; preds = %110, %71
  %112 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %113 = getelementptr inbounds %struct.rt2x00_intf, %struct.rt2x00_intf* %112, i32 0, i32 1
  %114 = call i32 @mutex_unlock(i32* %113)
  br label %115

115:                                              ; preds = %111, %37
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %148

120:                                              ; preds = %115
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %122 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %125 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %130 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %138

133:                                              ; preds = %120
  %134 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %135 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %140 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %141 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @rt2x00leds_led_assoc(%struct.rt2x00_dev* %139, i32 %146)
  br label %148

148:                                              ; preds = %138, %115
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %151 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @BSS_CHANGED_BASIC_RATES, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @BSS_CHANGED_BEACON_INT, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @BSS_CHANGED_HT, align 4
  %160 = or i32 %158, %159
  %161 = and i32 %149, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %148
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  %165 = load %struct.rt2x00_intf*, %struct.rt2x00_intf** %10, align 8
  %166 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @rt2x00lib_config_erp(%struct.rt2x00_dev* %164, %struct.rt2x00_intf* %165, %struct.ieee80211_bss_conf* %166, i32 %167)
  br label %169

169:                                              ; preds = %21, %163, %148
  ret void
}

declare dso_local %struct.rt2x00_intf* @vif_to_intf(%struct.ieee80211_vif*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00lib_config_intf(%struct.rt2x00_dev*, %struct.rt2x00_intf*, i32, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rt2x00queue_stop_queue(i32) #1

declare dso_local i32 @rt2x00queue_clear_beacon(%struct.rt2x00_dev*, %struct.ieee80211_vif*) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00queue_update_beacon(%struct.rt2x00_dev*, %struct.ieee80211_vif*) #1

declare dso_local i32 @rt2x00queue_start_queue(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rt2x00leds_led_assoc(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00lib_config_erp(%struct.rt2x00_dev*, %struct.rt2x00_intf*, %struct.ieee80211_bss_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
