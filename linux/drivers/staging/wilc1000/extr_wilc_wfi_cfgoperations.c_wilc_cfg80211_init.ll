; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_cfg80211_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_wilc_cfg80211_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, %struct.wilc_hif_func* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.wilc_hif_func = type { i32 }
%struct.wilc_vif = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WILC_CHIP_WAKEDUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"WILC_wq\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"wlan%d\00", align 1
@WILC_STATION_MODE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_cfg80211_init(%struct.wilc** %0, %struct.device* %1, i32 %2, %struct.wilc_hif_func* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wilc**, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wilc_hif_func*, align 8
  %10 = alloca %struct.wilc*, align 8
  %11 = alloca %struct.wilc_vif*, align 8
  %12 = alloca i32, align 4
  store %struct.wilc** %0, %struct.wilc*** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wilc_hif_func* %3, %struct.wilc_hif_func** %9, align 8
  %13 = load %struct.device*, %struct.device** %7, align 8
  %14 = call %struct.wilc* @wilc_create_wiphy(%struct.device* %13)
  store %struct.wilc* %14, %struct.wilc** %10, align 8
  %15 = load %struct.wilc*, %struct.wilc** %10, align 8
  %16 = icmp ne %struct.wilc* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %88

20:                                               ; preds = %4
  %21 = load %struct.wilc*, %struct.wilc** %10, align 8
  %22 = call i32 @wilc_wlan_cfg_init(%struct.wilc* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %78

26:                                               ; preds = %20
  %27 = load %struct.wilc*, %struct.wilc** %10, align 8
  %28 = load %struct.wilc**, %struct.wilc*** %6, align 8
  store %struct.wilc* %27, %struct.wilc** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.wilc*, %struct.wilc** %10, align 8
  %31 = getelementptr inbounds %struct.wilc, %struct.wilc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.wilc_hif_func*, %struct.wilc_hif_func** %9, align 8
  %33 = load %struct.wilc*, %struct.wilc** %10, align 8
  %34 = getelementptr inbounds %struct.wilc, %struct.wilc* %33, i32 0, i32 6
  store %struct.wilc_hif_func* %32, %struct.wilc_hif_func** %34, align 8
  %35 = load i32, i32* @WILC_CHIP_WAKEDUP, align 4
  %36 = load %struct.wilc*, %struct.wilc** %10, align 8
  %37 = getelementptr inbounds %struct.wilc, %struct.wilc* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.wilc*, %struct.wilc** %10, align 8
  %39 = getelementptr inbounds %struct.wilc, %struct.wilc* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.wilc*, %struct.wilc** %10, align 8
  %43 = getelementptr inbounds %struct.wilc, %struct.wilc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.wilc*, %struct.wilc** %10, align 8
  %48 = getelementptr inbounds %struct.wilc, %struct.wilc* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wilc*, %struct.wilc** %10, align 8
  %50 = getelementptr inbounds %struct.wilc, %struct.wilc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %26
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %75

56:                                               ; preds = %26
  %57 = load %struct.wilc*, %struct.wilc** %10, align 8
  %58 = load i32, i32* @WILC_STATION_MODE, align 4
  %59 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %60 = call %struct.wilc_vif* @wilc_netdev_ifc_init(%struct.wilc* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i32 0)
  store %struct.wilc_vif* %60, %struct.wilc_vif** %11, align 8
  %61 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %62 = call i64 @IS_ERR(%struct.wilc_vif* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.wilc_vif*, %struct.wilc_vif** %11, align 8
  %66 = call i32 @PTR_ERR(%struct.wilc_vif* %65)
  store i32 %66, i32* %12, align 4
  br label %70

67:                                               ; preds = %56
  %68 = load %struct.wilc*, %struct.wilc** %10, align 8
  %69 = call i32 @wlan_init_locks(%struct.wilc* %68)
  store i32 0, i32* %5, align 4
  br label %88

70:                                               ; preds = %64
  %71 = load %struct.wilc*, %struct.wilc** %10, align 8
  %72 = getelementptr inbounds %struct.wilc, %struct.wilc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @destroy_workqueue(i32 %73)
  br label %75

75:                                               ; preds = %70, %53
  %76 = load %struct.wilc*, %struct.wilc** %10, align 8
  %77 = call i32 @wilc_wlan_cfg_deinit(%struct.wilc* %76)
  br label %78

78:                                               ; preds = %75, %25
  %79 = load %struct.wilc*, %struct.wilc** %10, align 8
  %80 = getelementptr inbounds %struct.wilc, %struct.wilc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @wiphy_unregister(i32 %81)
  %83 = load %struct.wilc*, %struct.wilc** %10, align 8
  %84 = getelementptr inbounds %struct.wilc, %struct.wilc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @wiphy_free(i32 %85)
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %78, %67, %17
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local %struct.wilc* @wilc_create_wiphy(%struct.device*) #1

declare dso_local i32 @wilc_wlan_cfg_init(%struct.wilc*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local %struct.wilc_vif* @wilc_netdev_ifc_init(%struct.wilc*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.wilc_vif*) #1

declare dso_local i32 @PTR_ERR(%struct.wilc_vif*) #1

declare dso_local i32 @wlan_init_locks(%struct.wilc*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @wilc_wlan_cfg_deinit(%struct.wilc*) #1

declare dso_local i32 @wiphy_unregister(i32) #1

declare dso_local i32 @wiphy_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
