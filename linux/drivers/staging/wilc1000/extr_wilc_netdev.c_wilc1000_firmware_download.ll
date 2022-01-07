; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc1000_firmware_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc1000_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Firmware buffer is NULL\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Download Succeeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @wilc1000_firmware_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc1000_firmware_download(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca %struct.wilc*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %7)
  store %struct.wilc_vif* %8, %struct.wilc_vif** %4, align 8
  %9 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %10 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %9, i32 0, i32 0
  %11 = load %struct.wilc*, %struct.wilc** %10, align 8
  store %struct.wilc* %11, %struct.wilc** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.wilc*, %struct.wilc** %5, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOBUFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.wilc*, %struct.wilc** %5, align 8
  %23 = load %struct.wilc*, %struct.wilc** %5, align 8
  %24 = getelementptr inbounds %struct.wilc, %struct.wilc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.wilc*, %struct.wilc** %5, align 8
  %29 = getelementptr inbounds %struct.wilc, %struct.wilc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wilc_wlan_firmware_download(%struct.wilc* %22, i32 %27, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %47

38:                                               ; preds = %21
  %39 = load %struct.wilc*, %struct.wilc** %5, align 8
  %40 = getelementptr inbounds %struct.wilc, %struct.wilc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @release_firmware(%struct.TYPE_2__* %41)
  %43 = load %struct.wilc*, %struct.wilc** %5, align 8
  %44 = getelementptr inbounds %struct.wilc, %struct.wilc* %43, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %44, align 8
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @netdev_dbg(%struct.net_device* %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %38, %36, %16
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @wilc_wlan_firmware_download(%struct.wilc*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_2__*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
