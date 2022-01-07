; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_find_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_find_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_3__, %struct.mlme_priv }
%struct.TYPE_3__ = type { i32 }
%struct.mlme_priv = type { i32, %struct.wlan_network }
%struct.wlan_network = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"rtw_free_assoc_resources : pwlan == NULL\0A\0A\00", align 1
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @find_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_network(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.wlan_network*, align 8
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  store %struct.mlme_priv* %7, %struct.mlme_priv** %4, align 8
  %8 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %8, i32 0, i32 1
  store %struct.wlan_network* %9, %struct.wlan_network** %5, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 0
  %12 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %13 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.wlan_network* @rtw_find_network(i32* %11, i32 %15)
  store %struct.wlan_network* %16, %struct.wlan_network** %3, align 8
  %17 = load %struct.wlan_network*, %struct.wlan_network** %3, align 8
  %18 = icmp ne %struct.wlan_network* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.wlan_network*, %struct.wlan_network** %3, align 8
  %21 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %24 = load i32, i32* @_drv_err_, align 4
  %25 = call i32 @RT_TRACE(i32 %23, i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %22, %19
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %28 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %29 = call i64 @check_fwstate(%struct.mlme_priv* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = load %struct.wlan_network*, %struct.wlan_network** %3, align 8
  %40 = call i32 @rtw_free_network_nolock(%struct.adapter* %38, %struct.wlan_network* %39)
  br label %41

41:                                               ; preds = %37, %31, %26
  ret void
}

declare dso_local %struct.wlan_network* @rtw_find_network(i32*, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_free_network_nolock(%struct.adapter*, %struct.wlan_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
