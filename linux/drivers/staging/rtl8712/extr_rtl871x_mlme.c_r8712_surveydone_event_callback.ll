; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_surveydone_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_surveydone_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, i32* }
%struct.mlme_priv = type { i32, i32, i32, i32, i32, i32 }

@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MAX_JOIN_TIMEOUT = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_surveydone_event_callback(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.wlan_bssid_ex*, align 8
  %8 = alloca i32*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 1
  store %struct.mlme_priv* %10, %struct.mlme_priv** %6, align 8
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %16 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %17 = call i64 @check_fwstate(%struct.mlme_priv* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 5
  %22 = call i32 @del_timer(i32* %21)
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %24 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %25 = call i32 @_clr_fwstate_(%struct.mlme_priv* %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %109

31:                                               ; preds = %26
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %33 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %34 = call i64 @check_fwstate(%struct.mlme_priv* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %31
  %37 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %38 = load i32, i32* @_FW_LINKED, align 4
  %39 = call i64 @check_fwstate(%struct.mlme_priv* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %85, label %41

41:                                               ; preds = %36
  %42 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %43 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %44 = call i32 @set_fwstate(%struct.mlme_priv* %42, i32 %43)
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %46 = call i32 @r8712_select_and_join_from_scan(%struct.mlme_priv* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %50 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %49, i32 0, i32 2
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i32, i32* @MAX_JOIN_TIMEOUT, align 4
  %53 = call i64 @msecs_to_jiffies(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = call i32 @mod_timer(i32* %50, i64 %54)
  br label %84

56:                                               ; preds = %41
  %57 = load %struct._adapter*, %struct._adapter** %3, align 8
  %58 = getelementptr inbounds %struct._adapter, %struct._adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.wlan_bssid_ex* %59, %struct.wlan_bssid_ex** %7, align 8
  %60 = load %struct._adapter*, %struct._adapter** %3, align 8
  %61 = getelementptr inbounds %struct._adapter, %struct._adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %8, align 8
  %65 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %66 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %67 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %71 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %70, i32 0, i32 0
  %72 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %73 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %72, i32 0, i32 4
  %74 = call i32 @memcpy(i32* %71, i32* %73, i32 4)
  %75 = load %struct._adapter*, %struct._adapter** %3, align 8
  %76 = call i32 @r8712_update_registrypriv_dev_network(%struct._adapter* %75)
  %77 = load i32*, i32** %8, align 8
  %78 = call i32 @r8712_generate_random_ibss(i32* %77)
  %79 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %80 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %81 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %83 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %82, i32 0, i32 0
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %56, %48
  br label %85

85:                                               ; preds = %84, %36
  br label %108

86:                                               ; preds = %31
  %87 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %88 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  %89 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %90 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %91 = call i32 @set_fwstate(%struct.mlme_priv* %89, i32 %90)
  %92 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %93 = call i32 @r8712_select_and_join_from_scan(%struct.mlme_priv* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %86
  %96 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %97 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %96, i32 0, i32 2
  %98 = load i64, i64* @jiffies, align 8
  %99 = load i32, i32* @MAX_JOIN_TIMEOUT, align 4
  %100 = call i64 @msecs_to_jiffies(i32 %99)
  %101 = add nsw i64 %98, %100
  %102 = call i32 @mod_timer(i32* %97, i64 %101)
  br label %107

103:                                              ; preds = %86
  %104 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %105 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %106 = call i32 @_clr_fwstate_(%struct.mlme_priv* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %95
  br label %108

108:                                              ; preds = %107, %85
  br label %109

109:                                              ; preds = %108, %26
  %110 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %111 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %110, i32 0, i32 1
  %112 = load i64, i64* %5, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_select_and_join_from_scan(%struct.mlme_priv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @r8712_update_registrypriv_dev_network(%struct._adapter*) #1

declare dso_local i32 @r8712_generate_random_ibss(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
