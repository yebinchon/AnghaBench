; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_netdev_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_core.c_qtnf_netdev_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qtnf_vif = type { i64, i32, i32, %struct.qtnf_wmac* }
%struct.qtnf_wmac = type { i32, %struct.qtnf_bus* }
%struct.qtnf_bus = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"VIF%u.%u: Tx timeout- %lu\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@QTNF_TX_TIMEOUT_TRSHLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Tx timeout threshold exceeded !\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"schedule interface %s reset !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @qtnf_netdev_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtnf_netdev_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qtnf_vif*, align 8
  %4 = alloca %struct.qtnf_wmac*, align 8
  %5 = alloca %struct.qtnf_bus*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %6)
  store %struct.qtnf_vif* %7, %struct.qtnf_vif** %3, align 8
  %8 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %9 = icmp ne %struct.qtnf_vif* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %12 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %11, i32 0, i32 3
  %13 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %12, align 8
  %14 = icmp ne %struct.qtnf_wmac* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %17 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %16, i32 0, i32 3
  %18 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %17, align 8
  %19 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %18, i32 0, i32 1
  %20 = load %struct.qtnf_bus*, %struct.qtnf_bus** %19, align 8
  %21 = icmp ne %struct.qtnf_bus* %20, null
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %15, %10, %1
  %24 = phi i1 [ true, %10 ], [ true, %1 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %69

29:                                               ; preds = %23
  %30 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %31 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %30, i32 0, i32 3
  %32 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %31, align 8
  store %struct.qtnf_wmac* %32, %struct.qtnf_wmac** %4, align 8
  %33 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %34 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %33, i32 0, i32 1
  %35 = load %struct.qtnf_bus*, %struct.qtnf_bus** %34, align 8
  store %struct.qtnf_bus* %35, %struct.qtnf_bus** %5, align 8
  %36 = load %struct.qtnf_wmac*, %struct.qtnf_wmac** %4, align 8
  %37 = getelementptr inbounds %struct.qtnf_wmac, %struct.qtnf_wmac* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %40 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @jiffies, align 4
  %43 = call i32 @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %42)
  %44 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @qtnf_bus_data_tx_timeout(%struct.qtnf_bus* %44, %struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %53 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load i64, i64* @QTNF_TX_TIMEOUT_TRSHLD, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %29
  %59 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 @netdev_name(%struct.net_device* %60)
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load %struct.qtnf_bus*, %struct.qtnf_bus** %5, align 8
  %64 = getelementptr inbounds %struct.qtnf_bus, %struct.qtnf_bus* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %67 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %66, i32 0, i32 1
  %68 = call i32 @queue_work(i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %28, %58, %29
  ret void
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @qtnf_bus_data_tx_timeout(%struct.qtnf_bus*, %struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @netdev_name(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
