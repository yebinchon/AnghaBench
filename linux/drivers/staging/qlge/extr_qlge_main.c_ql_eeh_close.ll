; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_eeh_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_eeh_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ql_eeh_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_eeh_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.ql_adapter* %6, %struct.ql_adapter** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i64 @netif_carrier_ok(%struct.net_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_carrier_off(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @netif_stop_queue(%struct.net_device* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %17 = call i32 @ql_cancel_all_work_sync(%struct.ql_adapter* %16)
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %33, %15
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @netif_napi_del(i32* %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %18

36:                                               ; preds = %18
  %37 = load i32, i32* @QL_ADAPTER_UP, align 4
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 1
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %42 = call i32 @ql_tx_ring_clean(%struct.ql_adapter* %41)
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %44 = call i32 @ql_free_rx_buffers(%struct.ql_adapter* %43)
  %45 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %46 = call i32 @ql_release_adapter_resources(%struct.ql_adapter* %45)
  ret void
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @ql_cancel_all_work_sync(%struct.ql_adapter*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ql_tx_ring_clean(%struct.ql_adapter*) #1

declare dso_local i32 @ql_free_rx_buffers(%struct.ql_adapter*) #1

declare dso_local i32 @ql_release_adapter_resources(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
