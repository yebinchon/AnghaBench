; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_infrastructure_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_set.c_r8712_set_802_11_infrastructure_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32, %struct.wlan_network }
%struct.wlan_network = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_set_802_11_infrastructure_mode(%struct._adapter* %0, i32 %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.wlan_network*, align 8
  %8 = alloca i32*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct._adapter*, %struct._adapter** %3, align 8
  %10 = getelementptr inbounds %struct._adapter, %struct._adapter* %9, i32 0, i32 0
  store %struct.mlme_priv* %10, %struct.mlme_priv** %6, align 8
  %11 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %11, i32 0, i32 1
  store %struct.wlan_network* %12, %struct.wlan_network** %7, align 8
  %13 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %14 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* %15, i32** %8, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %93

20:                                               ; preds = %2
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %26 = load i32, i32* @_FW_LINKED, align 4
  %27 = call i64 @check_fwstate(%struct.mlme_priv* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %20
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 130
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %20
  %34 = load %struct._adapter*, %struct._adapter** %3, align 8
  %35 = call i32 @r8712_disassoc_cmd(%struct._adapter* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %38 = load i32, i32* @_FW_LINKED, align 4
  %39 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @check_fwstate(%struct.mlme_priv* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct._adapter*, %struct._adapter** %3, align 8
  %45 = call i32 @r8712_free_assoc_resources(%struct._adapter* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %48 = load i32, i32* @_FW_LINKED, align 4
  %49 = call i64 @check_fwstate(%struct.mlme_priv* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 129
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %51, %46
  %60 = load %struct._adapter*, %struct._adapter** %3, align 8
  %61 = call i32 @r8712_ind_disconnect(%struct._adapter* %60)
  br label %62

62:                                               ; preds = %59, %55
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %8, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %66 = load i32, i32* @WIFI_STATION_STATE, align 4
  %67 = load i32, i32* @WIFI_AP_STATE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @_clr_fwstate_(%struct.mlme_priv* %65, i32 %72)
  %74 = load i32, i32* %4, align 4
  switch i32 %74, label %88 [
    i32 130, label %75
    i32 129, label %79
    i32 132, label %83
    i32 131, label %87
    i32 128, label %87
  ]

75:                                               ; preds = %62
  %76 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %77 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %78 = call i32 @set_fwstate(%struct.mlme_priv* %76, i32 %77)
  br label %88

79:                                               ; preds = %62
  %80 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %81 = load i32, i32* @WIFI_STATION_STATE, align 4
  %82 = call i32 @set_fwstate(%struct.mlme_priv* %80, i32 %81)
  br label %88

83:                                               ; preds = %62
  %84 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %85 = load i32, i32* @WIFI_AP_STATE, align 4
  %86 = call i32 @set_fwstate(%struct.mlme_priv* %84, i32 %85)
  br label %88

87:                                               ; preds = %62, %62
  br label %88

88:                                               ; preds = %62, %87, %83, %79, %75
  %89 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %90 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %5, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %2
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_disassoc_cmd(%struct._adapter*) #1

declare dso_local i32 @r8712_free_assoc_resources(%struct._adapter*) #1

declare dso_local i32 @r8712_ind_disconnect(%struct._adapter*) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
