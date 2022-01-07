; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_add_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_add_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i64 }
%struct.wilc_vif = type { i64, %struct.wilc_priv }
%struct.wilc_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@WILC_AP_MODE = common dso_local global i64 0, align 8
@WILC_GO_MODE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Host add station fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @add_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.station_parameters*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wilc_vif*, align 8
  %11 = alloca %struct.wilc_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %12)
  store %struct.wilc_vif* %13, %struct.wilc_vif** %10, align 8
  %14 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %15 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %14, i32 0, i32 1
  store %struct.wilc_priv* %15, %struct.wilc_priv** %11, align 8
  %16 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %17 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @WILC_AP_MODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %23 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WILC_GO_MODE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %21, %4
  %28 = load %struct.wilc_priv*, %struct.wilc_priv** %11, align 8
  %29 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.station_parameters*, %struct.station_parameters** %8, align 8
  %33 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @ETH_ALEN, align 4
  %39 = call i32 @memcpy(i32 %36, i32* %37, i32 %38)
  %40 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load %struct.station_parameters*, %struct.station_parameters** %8, align 8
  %43 = call i32 @wilc_add_station(%struct.wilc_vif* %40, i32* %41, %struct.station_parameters* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %27
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %27
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @wilc_add_station(%struct.wilc_vif*, i32*, %struct.station_parameters*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
