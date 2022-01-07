; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i64, i32 }
%struct.ieee80211_channel_switch = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wl18xx_cmd_channel_switch = type { i32, i32, i32, i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cmd channel switch (count=%d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLCORE_BAND_2_4GHZ = common dso_local global i32 0, align 4
@WLCORE_BAND_5GHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"invalid channel switch band: %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CONF_TX_ENABLED_RATES = common dso_local global i32 0, align 4
@CONF_TX_MCS_RATES = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@CONF_TX_CCK_RATES = common dso_local global i32 0, align 4
@CMD_CHANNEL_SWITCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"failed to send channel switch command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_cmd_channel_switch(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.wl18xx_cmd_channel_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.wl18xx_cmd_channel_switch* @kzalloc(i32 28, i32 %15)
  store %struct.wl18xx_cmd_channel_switch* %16, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %17 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %18 = icmp ne %struct.wl18xx_cmd_channel_switch* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %123

22:                                               ; preds = %3
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %27 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %26, i32 0, i32 6
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %35 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %40 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %45 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %60 [
    i32 129, label %52
    i32 128, label %56
  ]

52:                                               ; preds = %22
  %53 = load i32, i32* @WLCORE_BAND_2_4GHZ, align 4
  %54 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %55 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %70

56:                                               ; preds = %22
  %57 = load i32, i32* @WLCORE_BAND_5GHZ, align 4
  %58 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %59 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  br label %70

60:                                               ; preds = %22
  %61 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  br label %120

70:                                               ; preds = %56, %52
  %71 = load i32, i32* @CONF_TX_ENABLED_RATES, align 4
  %72 = load i32, i32* @CONF_TX_MCS_RATES, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %8, align 4
  %74 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %75 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %81 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %82 = call i32 @wlcore_hw_sta_get_ap_rate_mask(%struct.wl1271* %80, %struct.wl12xx_vif* %81)
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %91

85:                                               ; preds = %70
  %86 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %87 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %88 = call i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271* %86, %struct.wl12xx_vif* %87)
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %93 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* @CONF_TX_CCK_RATES, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @cpu_to_le32(i32 %102)
  %104 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %105 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %107 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %110 = getelementptr inbounds %struct.wl18xx_cmd_channel_switch, %struct.wl18xx_cmd_channel_switch* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %112 = load i32, i32* @CMD_CHANNEL_SWITCH, align 4
  %113 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %114 = call i32 @wl1271_cmd_send(%struct.wl1271* %111, i32 %112, %struct.wl18xx_cmd_channel_switch* %113, i32 28, i32 0)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %101
  %118 = call i32 (i8*, ...) @wl1271_error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %120

119:                                              ; preds = %101
  br label %120

120:                                              ; preds = %119, %117, %60
  %121 = load %struct.wl18xx_cmd_channel_switch*, %struct.wl18xx_cmd_channel_switch** %7, align 8
  %122 = call i32 @kfree(%struct.wl18xx_cmd_channel_switch* %121)
  br label %123

123:                                              ; preds = %120, %19
  %124 = load i32, i32* %9, align 4
  ret i32 %124
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.wl18xx_cmd_channel_switch* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_error(i8*, ...) #1

declare dso_local i32 @wlcore_hw_sta_get_ap_rate_mask(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wlcore_hw_ap_get_mimo_wide_rate_mask(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl18xx_cmd_channel_switch*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl18xx_cmd_channel_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
