; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_mon_mgmt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_mon.c_mon_mgmt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tx_complete_mon_data = type { i64, i32 }

@EFAULT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mgmt_tx_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64)* @mon_mgmt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_mgmt_tx(%struct.net_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tx_complete_mon_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.tx_complete_mon_data* null, %struct.tx_complete_mon_data** %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = icmp ne %struct.net_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EFAULT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %56

14:                                               ; preds = %3
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netif_stop_queue(%struct.net_device* %15)
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.tx_complete_mon_data* @kmalloc(i32 16, i32 %17)
  store %struct.tx_complete_mon_data* %18, %struct.tx_complete_mon_data** %8, align 8
  %19 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %20 = icmp ne %struct.tx_complete_mon_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %56

24:                                               ; preds = %14
  %25 = load i32*, i32** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call i32 @kmemdup(i32* %25, i64 %26, i32 %27)
  %29 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %30 = getelementptr inbounds %struct.tx_complete_mon_data, %struct.tx_complete_mon_data* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %32 = getelementptr inbounds %struct.tx_complete_mon_data, %struct.tx_complete_mon_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %37 = call i32 @kfree(%struct.tx_complete_mon_data* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %56

40:                                               ; preds = %24
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %43 = getelementptr inbounds %struct.tx_complete_mon_data, %struct.tx_complete_mon_data* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %46 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %47 = getelementptr inbounds %struct.tx_complete_mon_data, %struct.tx_complete_mon_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.tx_complete_mon_data*, %struct.tx_complete_mon_data** %8, align 8
  %50 = getelementptr inbounds %struct.tx_complete_mon_data, %struct.tx_complete_mon_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @mgmt_tx_complete, align 4
  %53 = call i32 @wilc_wlan_txq_add_mgmt_pkt(%struct.net_device* %44, %struct.tx_complete_mon_data* %45, i32 %48, i64 %51, i32 %52)
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call i32 @netif_wake_queue(%struct.net_device* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %40, %35, %21, %11
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local %struct.tx_complete_mon_data* @kmalloc(i32, i32) #1

declare dso_local i32 @kmemdup(i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.tx_complete_mon_data*) #1

declare dso_local i32 @wilc_wlan_txq_add_mgmt_pkt(%struct.net_device*, %struct.tx_complete_mon_data*, i32, i64, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
