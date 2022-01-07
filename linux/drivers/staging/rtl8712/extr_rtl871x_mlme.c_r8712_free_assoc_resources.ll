; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_free_assoc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_free_assoc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.sta_priv, %struct.mlme_priv }
%struct.sta_priv = type { i32, i32 }
%struct.mlme_priv = type { i32, %struct.wlan_network }
%struct.wlan_network = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sta_info = type { i32 }

@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_assoc_resources(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.wlan_network*, align 8
  %5 = alloca %struct.mlme_priv*, align 8
  %6 = alloca %struct.sta_priv*, align 8
  %7 = alloca %struct.wlan_network*, align 8
  %8 = alloca %struct.sta_info*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %4, align 8
  %9 = load %struct._adapter*, %struct._adapter** %2, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 1
  store %struct.mlme_priv* %10, %struct.mlme_priv** %5, align 8
  %11 = load %struct._adapter*, %struct._adapter** %2, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  store %struct.sta_priv* %12, %struct.sta_priv** %6, align 8
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 1
  store %struct.wlan_network* %14, %struct.wlan_network** %7, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 0
  %17 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %18 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.wlan_network* @r8712_find_network(i32* %16, i32 %20)
  store %struct.wlan_network* %21, %struct.wlan_network** %4, align 8
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %23 = load i32, i32* @WIFI_STATION_STATE, align 4
  %24 = load i32, i32* @WIFI_AP_STATE, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @check_fwstate(%struct.mlme_priv* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %1
  %29 = load %struct._adapter*, %struct._adapter** %2, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 0
  %31 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %32 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %30, i32 %34)
  store %struct.sta_info* %35, %struct.sta_info** %8, align 8
  %36 = load %struct.sta_priv*, %struct.sta_priv** %6, align 8
  %37 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %36, i32 0, i32 1
  %38 = load i64, i64* %3, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct._adapter*, %struct._adapter** %2, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %42 = call i32 @r8712_free_stainfo(%struct._adapter* %40, %struct.sta_info* %41)
  %43 = load %struct.sta_priv*, %struct.sta_priv** %6, align 8
  %44 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %43, i32 0, i32 1
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %28, %1
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %49 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %50 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @WIFI_AP_STATE, align 4
  %53 = or i32 %51, %52
  %54 = call i64 @check_fwstate(%struct.mlme_priv* %48, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct._adapter*, %struct._adapter** %2, align 8
  %58 = call i32 @r8712_free_all_stainfo(%struct._adapter* %57)
  br label %59

59:                                               ; preds = %56, %47
  %60 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %61 = icmp ne %struct.wlan_network* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %64 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %67 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %68 = call i64 @check_fwstate(%struct.mlme_priv* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct._adapter*, %struct._adapter** %2, align 8
  %72 = getelementptr inbounds %struct._adapter, %struct._adapter* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load %struct.mlme_priv*, %struct.mlme_priv** %5, align 8
  %78 = load %struct.wlan_network*, %struct.wlan_network** %4, align 8
  %79 = call i32 @free_network_nolock(%struct.mlme_priv* %77, %struct.wlan_network* %78)
  br label %80

80:                                               ; preds = %76, %70, %65
  ret void
}

declare dso_local %struct.wlan_network* @r8712_find_network(i32*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @r8712_free_stainfo(%struct._adapter*, %struct.sta_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @r8712_free_all_stainfo(%struct._adapter*) #1

declare dso_local i32 @free_network_nolock(%struct.mlme_priv*, %struct.wlan_network*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
