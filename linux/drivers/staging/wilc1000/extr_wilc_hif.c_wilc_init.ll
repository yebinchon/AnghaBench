; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.host_if_drv = type { i64, i32, i32, i32, i32 }
%struct.wilc_vif = type { i32, %struct.host_if_drv*, %struct.wilc* }
%struct.wilc = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@get_periodic_rssi = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@timer_scan_cb = common dso_local global i32 0, align 4
@timer_connect_cb = common dso_local global i32 0, align 4
@listen_timer_cb = common dso_local global i32 0, align 4
@HOST_IF_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_init(%struct.net_device* %0, %struct.host_if_drv** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.host_if_drv**, align 8
  %6 = alloca %struct.host_if_drv*, align 8
  %7 = alloca %struct.wilc_vif*, align 8
  %8 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.host_if_drv** %1, %struct.host_if_drv*** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %9)
  store %struct.wilc_vif* %10, %struct.wilc_vif** %7, align 8
  %11 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %12 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %11, i32 0, i32 2
  %13 = load %struct.wilc*, %struct.wilc** %12, align 8
  store %struct.wilc* %13, %struct.wilc** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.host_if_drv* @kzalloc(i32 24, i32 %14)
  store %struct.host_if_drv* %15, %struct.host_if_drv** %6, align 8
  %16 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %17 = icmp ne %struct.host_if_drv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %23 = load %struct.host_if_drv**, %struct.host_if_drv*** %5, align 8
  store %struct.host_if_drv* %22, %struct.host_if_drv** %23, align 8
  %24 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %25 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %26 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %25, i32 0, i32 1
  store %struct.host_if_drv* %24, %struct.host_if_drv** %26, align 8
  %27 = load %struct.wilc*, %struct.wilc** %8, align 8
  %28 = getelementptr inbounds %struct.wilc, %struct.wilc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %21
  %32 = load %struct.wilc*, %struct.wilc** %8, align 8
  %33 = getelementptr inbounds %struct.wilc, %struct.wilc* %32, i32 0, i32 1
  %34 = call i32 @mutex_init(i32* %33)
  br label %35

35:                                               ; preds = %31, %21
  %36 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %37 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %36, i32 0, i32 0
  %38 = load i32, i32* @get_periodic_rssi, align 4
  %39 = call i32 @timer_setup(i32* %37, i32 %38, i32 0)
  %40 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %41 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %40, i32 0, i32 0
  %42 = load i64, i64* @jiffies, align 8
  %43 = call i64 @msecs_to_jiffies(i32 5000)
  %44 = add nsw i64 %42, %43
  %45 = call i32 @mod_timer(i32* %41, i64 %44)
  %46 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %47 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %46, i32 0, i32 4
  %48 = load i32, i32* @timer_scan_cb, align 4
  %49 = call i32 @timer_setup(i32* %47, i32 %48, i32 0)
  %50 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %51 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %50, i32 0, i32 3
  %52 = load i32, i32* @timer_connect_cb, align 4
  %53 = call i32 @timer_setup(i32* %51, i32 %52, i32 0)
  %54 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %55 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %54, i32 0, i32 2
  %56 = load i32, i32* @listen_timer_cb, align 4
  %57 = call i32 @timer_setup(i32* %55, i32 %56, i32 0)
  %58 = load i32, i32* @HOST_IF_IDLE, align 4
  %59 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %60 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.host_if_drv*, %struct.host_if_drv** %6, align 8
  %62 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.wilc*, %struct.wilc** %8, align 8
  %64 = getelementptr inbounds %struct.wilc, %struct.wilc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %35, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.host_if_drv* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
