; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wlan_initialize_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_netdev.c_wlan_initialize_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.wilc_vif = type { %struct.wilc* }
%struct.wilc = type { i32, i32, i64 }

@wilc_txq_task = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"K_TXQ_TASK\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"couldn't create TXQ thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @wlan_initialize_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_initialize_threads(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca %struct.wilc*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %6)
  store %struct.wilc_vif* %7, %struct.wilc_vif** %4, align 8
  %8 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %9 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %8, i32 0, i32 0
  %10 = load %struct.wilc*, %struct.wilc** %9, align 8
  store %struct.wilc* %10, %struct.wilc** %5, align 8
  %11 = load i32, i32* @wilc_txq_task, align 4
  %12 = load %struct.wilc*, %struct.wilc** %5, align 8
  %13 = bitcast %struct.wilc* %12 to i8*
  %14 = call i32 @kthread_run(i32 %11, i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.wilc*, %struct.wilc** %5, align 8
  %16 = getelementptr inbounds %struct.wilc, %struct.wilc* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.wilc*, %struct.wilc** %5, align 8
  %18 = getelementptr inbounds %struct.wilc, %struct.wilc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @netdev_err(%struct.net_device* %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.wilc*, %struct.wilc** %5, align 8
  %26 = getelementptr inbounds %struct.wilc, %struct.wilc* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.wilc*, %struct.wilc** %5, align 8
  %28 = getelementptr inbounds %struct.wilc, %struct.wilc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @PTR_ERR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load %struct.wilc*, %struct.wilc** %5, align 8
  %33 = getelementptr inbounds %struct.wilc, %struct.wilc* %32, i32 0, i32 0
  %34 = call i32 @wait_for_completion(i32* %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %31, %22
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kthread_run(i32, i8*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
