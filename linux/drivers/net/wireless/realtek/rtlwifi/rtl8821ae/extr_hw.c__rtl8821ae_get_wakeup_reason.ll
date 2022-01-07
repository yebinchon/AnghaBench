; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_get_wakeup_reason.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c__rtl8821ae_get_wakeup_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@REG_MCUTST_WOWLAN = common dso_local global i32 0, align 4
@COMP_POWER = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WOL Read 0x1c7 = %02X\0A\00", align 1
@WOL_REASON_PTK_UPDATE = common dso_local global i64 0, align 8
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"It's a WOL PTK Key update event!\0A\00", align 1
@WOL_REASON_GTK_UPDATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"It's a WOL GTK Key update event!\0A\00", align 1
@WOL_REASON_DISASSOC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"It's a disassociation event!\0A\00", align 1
@WOL_REASON_DEAUTH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"It's a deauth event!\0A\00", align 1
@WOL_REASON_AP_LOST = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"It's a Fw disconnect decision (AP lost) event!\0A\00", align 1
@WOL_REASON_MAGIC_PKT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"It's a magic packet event!\0A\00", align 1
@WOL_REASON_UNICAST_PKT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"It's an unicast packet event!\0A\00", align 1
@WOL_REASON_PATTERN_PKT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"It's a pattern match event!\0A\00", align 1
@WOL_REASON_RTD3_SSID_MATCH = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"It's an RTD3 Ssid match event!\0A\00", align 1
@WOL_REASON_REALWOW_V2_WAKEUPPKT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"It's an RealWoW wake packet event!\0A\00", align 1
@WOL_REASON_REALWOW_V2_ACKLOST = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"It's an RealWoW ack lost event!\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"WOL Read 0x1c7 = %02X, Unknown reason!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8821ae_get_wakeup_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_get_wakeup_reason(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_hal*, align 8
  %5 = alloca %struct.rtl_ps_ctl*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %10)
  store %struct.rtl_hal* %11, %struct.rtl_hal** %4, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %12)
  store %struct.rtl_ps_ctl* %13, %struct.rtl_ps_ctl** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = load i32, i32* @REG_MCUTST_WOWLAN, align 4
  %16 = call i32 @rtl_read_byte(%struct.rtl_priv* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %18 = load i32, i32* @COMP_POWER, align 4
  %19 = load i32, i32* @DBG_LOUD, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %23 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = call i32 (...) @ktime_get_real_seconds()
  %25 = load %struct.rtl_hal*, %struct.rtl_hal** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %116 [
    i32 132, label %28
    i32 135, label %36
    i32 137, label %44
    i32 138, label %52
    i32 136, label %60
    i32 134, label %68
    i32 128, label %76
    i32 133, label %84
    i32 129, label %92
    i32 130, label %100
    i32 131, label %108
  ]

28:                                               ; preds = %1
  %29 = load i64, i64* @WOL_REASON_PTK_UPDATE, align 8
  %30 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %31 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %33 = load i32, i32* @COMP_POWER, align 4
  %34 = load i32, i32* @DBG_DMESG, align 4
  %35 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %32, i32 %33, i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %122

36:                                               ; preds = %1
  %37 = load i64, i64* @WOL_REASON_GTK_UPDATE, align 8
  %38 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %39 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %41 = load i32, i32* @COMP_POWER, align 4
  %42 = load i32, i32* @DBG_DMESG, align 4
  %43 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %122

44:                                               ; preds = %1
  %45 = load i64, i64* @WOL_REASON_DISASSOC, align 8
  %46 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %47 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = load i32, i32* @COMP_POWER, align 4
  %50 = load i32, i32* @DBG_DMESG, align 4
  %51 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %122

52:                                               ; preds = %1
  %53 = load i64, i64* @WOL_REASON_DEAUTH, align 8
  %54 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %57 = load i32, i32* @COMP_POWER, align 4
  %58 = load i32, i32* @DBG_DMESG, align 4
  %59 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %122

60:                                               ; preds = %1
  %61 = load i64, i64* @WOL_REASON_AP_LOST, align 8
  %62 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %63 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %65 = load i32, i32* @COMP_POWER, align 4
  %66 = load i32, i32* @DBG_DMESG, align 4
  %67 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %64, i32 %65, i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %122

68:                                               ; preds = %1
  %69 = load i64, i64* @WOL_REASON_MAGIC_PKT, align 8
  %70 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %71 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %73 = load i32, i32* @COMP_POWER, align 4
  %74 = load i32, i32* @DBG_DMESG, align 4
  %75 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %122

76:                                               ; preds = %1
  %77 = load i64, i64* @WOL_REASON_UNICAST_PKT, align 8
  %78 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %79 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i32, i32* @COMP_POWER, align 4
  %82 = load i32, i32* @DBG_DMESG, align 4
  %83 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %122

84:                                               ; preds = %1
  %85 = load i64, i64* @WOL_REASON_PATTERN_PKT, align 8
  %86 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %87 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %89 = load i32, i32* @COMP_POWER, align 4
  %90 = load i32, i32* @DBG_DMESG, align 4
  %91 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %122

92:                                               ; preds = %1
  %93 = load i64, i64* @WOL_REASON_RTD3_SSID_MATCH, align 8
  %94 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %95 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i32, i32* @COMP_POWER, align 4
  %98 = load i32, i32* @DBG_DMESG, align 4
  %99 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %96, i32 %97, i32 %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %122

100:                                              ; preds = %1
  %101 = load i64, i64* @WOL_REASON_REALWOW_V2_WAKEUPPKT, align 8
  %102 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %105 = load i32, i32* @COMP_POWER, align 4
  %106 = load i32, i32* @DBG_DMESG, align 4
  %107 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %122

108:                                              ; preds = %1
  %109 = load i64, i64* @WOL_REASON_REALWOW_V2_ACKLOST, align 8
  %110 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %5, align 8
  %111 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %113 = load i32, i32* @COMP_POWER, align 4
  %114 = load i32, i32* @DBG_DMESG, align 4
  %115 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %112, i32 %113, i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %122

116:                                              ; preds = %1
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %118 = load i32, i32* @COMP_POWER, align 4
  %119 = load i32, i32* @DBG_DMESG, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %116, %108, %100, %92, %84, %76, %68, %60, %52, %44, %36, %28
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_read_byte(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
