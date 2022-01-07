; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_rtw_pwr_unassociated_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_pwrctrl.c_rtw_pwr_unassociated_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_priv = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@WIFI_ASOC_STATE = common dso_local global i32 0, align 4
@WIFI_SITE_MONITOR = common dso_local global i32 0, align 4
@WIFI_UNDER_LINKING = common dso_local global i32 0, align 4
@WIFI_UNDER_WPS = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*)* @rtw_pwr_unassociated_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pwr_unassociated_idle(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  store %struct.mlme_priv* %6, %struct.mlme_priv** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.adapter*, %struct.adapter** %2, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @jiffies, align 4
  %12 = call i64 @time_after_eq(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %17 = load i32, i32* @WIFI_ASOC_STATE, align 4
  %18 = load i32, i32* @WIFI_SITE_MONITOR, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @check_fwstate(%struct.mlme_priv* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %15
  %23 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %24 = load i32, i32* @WIFI_UNDER_LINKING, align 4
  %25 = load i32, i32* @WIFI_UNDER_WPS, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @check_fwstate(%struct.mlme_priv* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %22
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %31 = load i32, i32* @WIFI_AP_STATE, align 4
  %32 = call i64 @check_fwstate(%struct.mlme_priv* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %36 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %37 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @check_fwstate(%struct.mlme_priv* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %29, %22, %15
  br label %43

42:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %14
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
