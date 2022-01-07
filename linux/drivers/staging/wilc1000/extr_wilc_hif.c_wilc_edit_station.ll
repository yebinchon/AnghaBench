; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_edit_station.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_edit_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.station_parameters = type { i64 }
%struct.wid = type { i32*, i64, i32, i32 }

@WID_EDIT_STA = common dso_local global i32 0, align 4
@WID_BIN = common dso_local global i32 0, align 4
@WILC_ADD_STA_LENGTH = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to send edit station\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_edit_station(%struct.wilc_vif* %0, i32* %1, %struct.station_parameters* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wilc_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.station_parameters*, align 8
  %8 = alloca %struct.wid, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.station_parameters* %2, %struct.station_parameters** %7, align 8
  %11 = load i32, i32* @WID_EDIT_STA, align 4
  %12 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @WID_BIN, align 4
  %14 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i64, i64* @WILC_ADD_STA_LENGTH, align 8
  %16 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %17 = getelementptr inbounds %struct.station_parameters, %struct.station_parameters* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc(i64 %22, i32 %23)
  %25 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  store i32* %24, i32** %25, align 8
  %26 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %54

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.station_parameters*, %struct.station_parameters** %7, align 8
  %38 = call i32 @wilc_hif_pack_sta_param(i32* %35, i32* %36, %struct.station_parameters* %37)
  %39 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %40 = load i32, i32* @WILC_SET_CFG, align 4
  %41 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %39, i32 %40, %struct.wid* %8, i32 1)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.wilc_vif*, %struct.wilc_vif** %5, align 8
  %46 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netdev_err(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %44, %32
  %50 = getelementptr inbounds %struct.wid, %struct.wid* %8, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @kfree(i32* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %49, %29
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @wilc_hif_pack_sta_param(i32*, i32*, %struct.station_parameters*) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
