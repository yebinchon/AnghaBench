; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_change_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_change_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.station_parameters = type { i32 }
%struct.wilc_vif = type { i64 }

@WILC_AP_MODE = common dso_local global i64 0, align 8
@WILC_GO_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Host edit station fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, %struct.station_parameters*)* @change_station to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @change_station(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, %struct.station_parameters* %3) #0 {
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.station_parameters*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wilc_vif*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.station_parameters* %3, %struct.station_parameters** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %11)
  store %struct.wilc_vif* %12, %struct.wilc_vif** %10, align 8
  %13 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %14 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WILC_AP_MODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %20 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WILC_GO_MODE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18, %4
  %25 = load %struct.wilc_vif*, %struct.wilc_vif** %10, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load %struct.station_parameters*, %struct.station_parameters** %8, align 8
  %28 = call i32 @wilc_edit_station(%struct.wilc_vif* %25, i32* %26, %struct.station_parameters* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %24
  br label %35

35:                                               ; preds = %34, %18
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wilc_edit_station(%struct.wilc_vif*, i32*, %struct.station_parameters*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
