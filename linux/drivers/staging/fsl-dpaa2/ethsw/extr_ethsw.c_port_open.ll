; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fsl-dpaa2/ethsw/extr_ethsw.c_port_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethsw_port_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"dpsw_if_enable err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"port_carrier_state_sync err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @port_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethsw_port_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ethsw_port_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ethsw_port_priv* %7, %struct.ethsw_port_priv** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %8)
  %10 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %11 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %16 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dpsw_if_enable(i32 %14, i32 0, i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %57

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @port_carrier_state_sync(%struct.net_device* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %41

40:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %57

41:                                               ; preds = %36
  %42 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %48 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ethsw_port_priv*, %struct.ethsw_port_priv** %4, align 8
  %53 = getelementptr inbounds %struct.ethsw_port_priv, %struct.ethsw_port_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dpsw_if_disable(i32 %46, i32 0, i32 %51, i32 %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %41, %40, %26
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.ethsw_port_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @dpsw_if_enable(i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @port_carrier_state_sync(%struct.net_device*) #1

declare dso_local i32 @dpsw_if_disable(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
