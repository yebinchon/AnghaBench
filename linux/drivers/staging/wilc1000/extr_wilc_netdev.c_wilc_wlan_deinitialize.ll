; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wlan_deinitialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wilc_wlan_deinitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.wilc*)* }

@.str = private unnamed_addr constant [12 x i8] c"wl is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Deinitializing wilc1000...\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"wilc1000 deinitialization Done\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"wilc1000 is not initialized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @wilc_wlan_deinitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wilc_wlan_deinitialize(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %5)
  store %struct.wilc_vif* %6, %struct.wilc_vif** %3, align 8
  %7 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %8 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %7, i32 0, i32 0
  %9 = load %struct.wilc*, %struct.wilc** %8, align 8
  store %struct.wilc* %9, %struct.wilc** %4, align 8
  %10 = load %struct.wilc*, %struct.wilc** %4, align 8
  %11 = icmp ne %struct.wilc* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %70

15:                                               ; preds = %1
  %16 = load %struct.wilc*, %struct.wilc** %4, align 8
  %17 = getelementptr inbounds %struct.wilc, %struct.wilc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @netdev_info(%struct.net_device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.wilc*, %struct.wilc** %4, align 8
  %24 = getelementptr inbounds %struct.wilc, %struct.wilc* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %20
  %28 = load %struct.wilc*, %struct.wilc** %4, align 8
  %29 = getelementptr inbounds %struct.wilc, %struct.wilc* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.wilc*)*, i32 (%struct.wilc*)** %31, align 8
  %33 = icmp ne i32 (%struct.wilc*)* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %27
  %35 = load %struct.wilc*, %struct.wilc** %4, align 8
  %36 = getelementptr inbounds %struct.wilc, %struct.wilc* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.wilc*, %struct.wilc** %4, align 8
  %39 = getelementptr inbounds %struct.wilc, %struct.wilc* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.wilc*)*, i32 (%struct.wilc*)** %41, align 8
  %43 = load %struct.wilc*, %struct.wilc** %4, align 8
  %44 = call i32 %42(%struct.wilc* %43)
  %45 = load %struct.wilc*, %struct.wilc** %4, align 8
  %46 = getelementptr inbounds %struct.wilc, %struct.wilc* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %34, %27, %20
  %49 = load %struct.wilc*, %struct.wilc** %4, align 8
  %50 = getelementptr inbounds %struct.wilc, %struct.wilc* %49, i32 0, i32 1
  %51 = call i32 @complete(i32* %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @wlan_deinitialize_threads(%struct.net_device* %52)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @deinit_irq(%struct.net_device* %54)
  %56 = load %struct.wilc*, %struct.wilc** %4, align 8
  %57 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %58 = call i32 @wilc_wlan_stop(%struct.wilc* %56, %struct.wilc_vif* %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = call i32 @wilc_wlan_cleanup(%struct.net_device* %59)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @wlan_deinit_locks(%struct.net_device* %61)
  %63 = load %struct.wilc*, %struct.wilc** %4, align 8
  %64 = getelementptr inbounds %struct.wilc, %struct.wilc* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = call i32 @netdev_dbg(%struct.net_device* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %70

67:                                               ; preds = %15
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = call i32 @netdev_dbg(%struct.net_device* %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %12, %67, %48
  ret void
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @wlan_deinitialize_threads(%struct.net_device*) #1

declare dso_local i32 @deinit_irq(%struct.net_device*) #1

declare dso_local i32 @wilc_wlan_stop(%struct.wilc*, %struct.wilc_vif*) #1

declare dso_local i32 @wilc_wlan_cleanup(%struct.net_device*) #1

declare dso_local i32 @wlan_deinit_locks(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
