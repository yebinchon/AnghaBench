; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_mac_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_mac_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { i64, i64, %struct.wilc* }
%struct.wilc = type { i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"Mac close\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Deinitializing wilc1000\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @wilc_mac_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wilc_mac_close(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %6)
  store %struct.wilc_vif* %7, %struct.wilc_vif** %4, align 8
  %8 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %9 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %8, i32 0, i32 2
  %10 = load %struct.wilc*, %struct.wilc** %9, align 8
  store %struct.wilc* %10, %struct.wilc** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netdev_dbg(%struct.net_device* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wilc*, %struct.wilc** %5, align 8
  %14 = getelementptr inbounds %struct.wilc, %struct.wilc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.wilc*, %struct.wilc** %5, align 8
  %19 = getelementptr inbounds %struct.wilc, %struct.wilc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

23:                                               ; preds = %17
  %24 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %25 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %30 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @netif_stop_queue(i64 %31)
  %33 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %34 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @wilc_deinit_host_int(i64 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load %struct.wilc*, %struct.wilc** %5, align 8
  %39 = getelementptr inbounds %struct.wilc, %struct.wilc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = call i32 @netdev_dbg(%struct.net_device* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.wilc*, %struct.wilc** %5, align 8
  %46 = getelementptr inbounds %struct.wilc, %struct.wilc* %45, i32 0, i32 1
  store i32 1, i32* %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @wilc_wlan_deinitialize(%struct.net_device* %47)
  br label %49

49:                                               ; preds = %42, %37
  %50 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %51 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %22
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_stop_queue(i64) #1

declare dso_local i32 @wilc_deinit_host_int(i64) #1

declare dso_local i32 @wilc_wlan_deinitialize(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
