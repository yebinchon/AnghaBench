; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.wilc_vif = type { i32, i64, %struct.wilc*, %struct.wilc_priv }
%struct.wilc = type { i32, i64 }
%struct.wilc_priv = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WILC_CLIENT_MODE = common dso_local global i64 0, align 8
@WILC_INVALID_CHANNEL = common dso_local global i32 0, align 4
@WILC_STATION_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error in disconnecting\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32)* @disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect(%struct.wiphy* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wilc_vif*, align 8
  %9 = alloca %struct.wilc_priv*, align 8
  %10 = alloca %struct.wilc*, align 8
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %12)
  store %struct.wilc_vif* %13, %struct.wilc_vif** %8, align 8
  %14 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %15 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %14, i32 0, i32 3
  store %struct.wilc_priv* %15, %struct.wilc_priv** %9, align 8
  %16 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %17 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %16, i32 0, i32 2
  %18 = load %struct.wilc*, %struct.wilc** %17, align 8
  store %struct.wilc* %18, %struct.wilc** %10, align 8
  %19 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %20 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.wilc*, %struct.wilc** %10, align 8
  %22 = icmp ne %struct.wilc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %77

26:                                               ; preds = %3
  %27 = load %struct.wilc*, %struct.wilc** %10, align 8
  %28 = getelementptr inbounds %struct.wilc, %struct.wilc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @cfg80211_disconnected(%struct.net_device* %32, i32 0, i32* null, i32 0, i32 1, i32 %33)
  store i32 0, i32* %4, align 4
  br label %77

35:                                               ; preds = %26
  %36 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %37 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WILC_CLIENT_MODE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @WILC_INVALID_CHANNEL, align 4
  %43 = load %struct.wilc*, %struct.wilc** %10, align 8
  %44 = getelementptr inbounds %struct.wilc, %struct.wilc* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.wilc_priv*, %struct.wilc_priv** %9, align 8
  %47 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @WILC_STATION_MODE, align 4
  %50 = call i32 @wilc_wlan_set_bssid(i32 %48, i32* null, i32 %49)
  %51 = load %struct.wilc_priv*, %struct.wilc_priv** %9, align 8
  %52 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.wilc_priv*, %struct.wilc_priv** %9, align 8
  %55 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = load %struct.wilc_priv*, %struct.wilc_priv** %9, align 8
  %58 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  %60 = load %struct.wilc_priv*, %struct.wilc_priv** %9, align 8
  %61 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.wilc_vif*, %struct.wilc_vif** %8, align 8
  %65 = call i32 @wilc_disconnect(%struct.wilc_vif* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %45
  %69 = load %struct.wilc_priv*, %struct.wilc_priv** %9, align 8
  %70 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @netdev_err(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %68, %45
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %31, %23
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cfg80211_disconnected(%struct.net_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wilc_wlan_set_bssid(i32, i32*, i32) #1

declare dso_local i32 @wilc_disconnect(%struct.wilc_vif*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
