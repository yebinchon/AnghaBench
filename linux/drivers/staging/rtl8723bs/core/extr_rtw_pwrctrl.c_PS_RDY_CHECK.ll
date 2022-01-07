; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_PS_RDY_CHECK.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_pwrctrl.c_PS_RDY_CHECK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mlme_priv = type { i32 }
%struct.pwrctrl_priv = type { i64, i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@LPS_DELAY_TIME = common dso_local global i64 0, align 8
@WIFI_SITE_MONITOR = common dso_local global i32 0, align 4
@WIFI_UNDER_LINKING = common dso_local global i32 0, align 4
@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@dot11AuthAlgrthm_8021X = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Group handshake still in progress !!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @PS_RDY_CHECK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PS_RDY_CHECK(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pwrctrl_priv*, align 8
  %7 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = call %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter* %8)
  store %struct.pwrctrl_priv* %9, %struct.pwrctrl_priv** %6, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.mlme_priv* %11, %struct.mlme_priv** %7, align 8
  %12 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %13 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

17:                                               ; preds = %1
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.pwrctrl_priv*, %struct.pwrctrl_priv** %6, align 8
  %21 = getelementptr inbounds %struct.pwrctrl_priv, %struct.pwrctrl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @LPS_DELAY_TIME, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %78

28:                                               ; preds = %17
  %29 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %30 = load i32, i32* @WIFI_SITE_MONITOR, align 4
  %31 = call i64 @check_fwstate(%struct.mlme_priv* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %28
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %35 = load i32, i32* @WIFI_UNDER_LINKING, align 4
  %36 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @check_fwstate(%struct.mlme_priv* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %33
  %41 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %42 = load i32, i32* @WIFI_AP_STATE, align 4
  %43 = call i64 @check_fwstate(%struct.mlme_priv* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %40
  %46 = load %struct.mlme_priv*, %struct.mlme_priv** %7, align 8
  %47 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %48 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %49 = or i32 %47, %48
  %50 = call i64 @check_fwstate(%struct.mlme_priv* %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load %struct.adapter*, %struct.adapter** %3, align 8
  %54 = call i64 @rtw_is_scan_deny(%struct.adapter* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %45, %40, %33, %28
  store i32 0, i32* %2, align 4
  br label %78

57:                                               ; preds = %52
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @dot11AuthAlgrthm_8021X, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %57
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %64
  %71 = call i32 @DBG_871X(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %78

72:                                               ; preds = %64, %57
  %73 = load %struct.adapter*, %struct.adapter** %3, align 8
  %74 = call i32 @rtw_cfg80211_pwr_mgmt(%struct.adapter* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %78

77:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %76, %70, %56, %27, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.pwrctrl_priv* @adapter_to_pwrctl(%struct.adapter*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @rtw_is_scan_deny(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @rtw_cfg80211_pwr_mgmt(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
