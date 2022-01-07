; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wlan_get_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wlan_get_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { %struct.firmware*, i32 }
%struct.firmware = type { i32 }

@FIRMWARE_1002 = common dso_local global i8* null, align 8
@FIRMWARE_1003 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"loading firmware %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"%s - firmware not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @wilc_wlan_get_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_wlan_get_firmware(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca %struct.wilc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %9)
  store %struct.wilc_vif* %10, %struct.wilc_vif** %3, align 8
  %11 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %12 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %11, i32 0, i32 0
  %13 = load %struct.wilc*, %struct.wilc** %12, align 8
  store %struct.wilc* %13, %struct.wilc** %4, align 8
  store i32 0, i32* %6, align 4
  %14 = load %struct.wilc*, %struct.wilc** %4, align 8
  %15 = call i32 @wilc_get_chipid(%struct.wilc* %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 1049504
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i8*, i8** @FIRMWARE_1002, align 8
  store i8* %19, i8** %8, align 8
  br label %22

20:                                               ; preds = %1
  %21 = load i8*, i8** @FIRMWARE_1003, align 8
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @netdev_info(%struct.net_device* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %24)
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.wilc*, %struct.wilc** %4, align 8
  %28 = getelementptr inbounds %struct.wilc, %struct.wilc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @request_firmware(%struct.firmware** %7, i8* %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %6, align 4
  br label %40

36:                                               ; preds = %22
  %37 = load %struct.firmware*, %struct.firmware** %7, align 8
  %38 = load %struct.wilc*, %struct.wilc** %4, align 8
  %39 = getelementptr inbounds %struct.wilc, %struct.wilc* %38, i32 0, i32 0
  store %struct.firmware* %37, %struct.firmware** %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wilc_get_chipid(%struct.wilc*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
