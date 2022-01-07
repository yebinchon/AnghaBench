; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_mp_stop_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mp_ioctl.c_mp_stop_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.mlme_priv, %struct.mp_priv }
%struct.mlme_priv = type { i32, i32, %struct.wlan_network }
%struct.wlan_network = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mp_priv = type { i32 }
%struct.sta_info = type { i32 }

@WIFI_MP_STATE = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*)* @mp_stop_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_stop_test(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca %struct.mp_priv*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i64, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %8 = load %struct._adapter*, %struct._adapter** %2, align 8
  %9 = getelementptr inbounds %struct._adapter, %struct._adapter* %8, i32 0, i32 2
  store %struct.mp_priv* %9, %struct.mp_priv** %3, align 8
  %10 = load %struct._adapter*, %struct._adapter** %2, align 8
  %11 = getelementptr inbounds %struct._adapter, %struct._adapter* %10, i32 0, i32 1
  store %struct.mlme_priv* %11, %struct.mlme_priv** %4, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %12, i32 0, i32 2
  store %struct.wlan_network* %13, %struct.wlan_network** %5, align 8
  %14 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %19 = load i32, i32* @WIFI_MP_STATE, align 4
  %20 = call i32 @check_fwstate(%struct.mlme_priv* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %47

23:                                               ; preds = %1
  %24 = load %struct._adapter*, %struct._adapter** %2, align 8
  %25 = call i32 @r8712_os_indicate_disconnect(%struct._adapter* %24)
  %26 = load %struct._adapter*, %struct._adapter** %2, align 8
  %27 = getelementptr inbounds %struct._adapter, %struct._adapter* %26, i32 0, i32 0
  %28 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %29 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.sta_info* @r8712_get_stainfo(i32* %27, i32 %31)
  store %struct.sta_info* %32, %struct.sta_info** %6, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %34 = icmp ne %struct.sta_info* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %23
  %36 = load %struct._adapter*, %struct._adapter** %2, align 8
  %37 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %38 = call i32 @r8712_free_stainfo(%struct._adapter* %36, %struct.sta_info* %37)
  br label %39

39:                                               ; preds = %35, %23
  %40 = load %struct.mp_priv*, %struct.mp_priv** %3, align 8
  %41 = getelementptr inbounds %struct.mp_priv, %struct.mp_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %44 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %46 = call i32 @memset(%struct.wlan_network* %45, i32 0, i32 4)
  br label %47

47:                                               ; preds = %39, %22
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %49 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i32, i32* @_SUCCESS, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_os_indicate_disconnect(%struct._adapter*) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32) #1

declare dso_local i32 @r8712_free_stainfo(%struct._adapter*, %struct.sta_info*) #1

declare dso_local i32 @memset(%struct.wlan_network*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
