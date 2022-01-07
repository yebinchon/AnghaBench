; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_del_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_del_parameters = type { i32* }
%struct.wilc_vif = type { i64, %struct.wilc_priv }
%struct.wilc_priv = type { %struct.sta_info }
%struct.sta_info = type { i32 }

@WILC_AP_MODE = common dso_local global i64 0, align 8
@WILC_GO_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Host delete station fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.station_del_parameters*)* @del_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_station(%struct.wiphy* %0, %struct.net_device* %1, %struct.station_del_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.station_del_parameters*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wilc_vif*, align 8
  %11 = alloca %struct.wilc_priv*, align 8
  %12 = alloca %struct.sta_info*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.station_del_parameters* %2, %struct.station_del_parameters** %7, align 8
  %13 = load %struct.station_del_parameters*, %struct.station_del_parameters** %7, align 8
  %14 = getelementptr inbounds %struct.station_del_parameters, %struct.station_del_parameters* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %16)
  store %struct.wilc_vif* %17, %struct.wilc_vif** %10, align 8
  %18 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %19 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %18, i32 0, i32 1
  store %struct.wilc_priv* %19, %struct.wilc_priv** %11, align 8
  %20 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %21 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WILC_AP_MODE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %3
  %26 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %27 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WILC_GO_MODE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %55

33:                                               ; preds = %25, %3
  %34 = load %struct.wilc_priv*, %struct.wilc_priv** %11, align 8
  %35 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %34, i32 0, i32 0
  store %struct.sta_info* %35, %struct.sta_info** %12, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %33
  %39 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @wilc_del_allstation(%struct.wilc_vif* %39, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @wilc_del_station(%struct.wilc_vif* %45, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = call i32 @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %50, %44
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %31
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wilc_del_allstation(%struct.wilc_vif*, i32) #1

declare dso_local i32 @wilc_del_station(%struct.wilc_vif*, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
