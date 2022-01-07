; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_init_mlme_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_init_mlme_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_6__, i32*, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i64, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wlan_network = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@Ndis802_11AutoUnknown = common dso_local global i32 0, align 4
@SCAN_ACTIVE = common dso_local global i32 0, align 4
@MAX_BSS_CNT = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_init_mlme_priv(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wlan_network*, align 8
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  store %struct.mlme_priv* %9, %struct.mlme_priv** %6, align 8
  %10 = load i32, i32* @_SUCCESS, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = bitcast %struct.adapter* %11 to i32*
  %13 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %14 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %13, i32 0, i32 9
  store i32* %12, i32** %14, align 8
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 8
  store i32* null, i32** %16, align 8
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 7
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @Ndis802_11AutoUnknown, align 4
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load i32, i32* @SCAN_ACTIVE, align 4
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 4
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 0
  %32 = call i32 @_rtw_init_queue(%struct.TYPE_6__* %31)
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %34 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %33, i32 0, i32 3
  %35 = call i32 @_rtw_init_queue(%struct.TYPE_6__* %34)
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %36, i32 0, i32 2
  %38 = call i32 @memset(i32* %37, i32 0, i32 4)
  %39 = load i32, i32* @MAX_BSS_CNT, align 4
  %40 = call i32 @array_size(i32 %39, i32 4)
  %41 = call i32* @vzalloc(i32 %40)
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %1
  %45 = load i32, i32* @_FAIL, align 4
  store i32 %45, i32* %7, align 4
  br label %76

46:                                               ; preds = %1
  %47 = load i32*, i32** %4, align 8
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %49 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = load i32*, i32** %4, align 8
  %51 = bitcast i32* %50 to %struct.wlan_network*
  store %struct.wlan_network* %51, %struct.wlan_network** %5, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %68, %46
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @MAX_BSS_CNT, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %58 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %57, i32 0, i32 0
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %61 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %60, i32 0, i32 0
  %62 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %63 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = call i32 @list_add_tail(i32* %61, i32* %64)
  %66 = load %struct.wlan_network*, %struct.wlan_network** %5, align 8
  %67 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %66, i32 1
  store %struct.wlan_network* %67, %struct.wlan_network** %5, align 8
  br label %68

68:                                               ; preds = %56
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %52

71:                                               ; preds = %52
  %72 = load %struct.adapter*, %struct.adapter** %2, align 8
  %73 = call i32 @rtw_clear_scan_deny(%struct.adapter* %72)
  %74 = load %struct.adapter*, %struct.adapter** %2, align 8
  %75 = call i32 @rtw_init_mlme_timer(%struct.adapter* %74)
  br label %76

76:                                               ; preds = %71, %44
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @_rtw_init_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rtw_clear_scan_deny(%struct.adapter*) #1

declare dso_local i32 @rtw_init_mlme_timer(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
