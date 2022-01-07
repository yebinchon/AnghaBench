; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.octeon_ethernet = type { i32 }

@cvm_oct_poll_queue_stopping = common dso_local global i32 0, align 4
@cvm_oct_rx_refill_work = common dso_local global i32 0, align 4
@TOTAL_NUMBER_OF_PORTS = common dso_local global i32 0, align 4
@cvm_oct_device = common dso_local global %struct.net_device** null, align 8
@CVMX_FPA_PACKET_POOL = common dso_local global i64 0, align 8
@CVMX_FPA_PACKET_POOL_SIZE = common dso_local global i32 0, align 4
@num_packet_buffers = common dso_local global i32 0, align 4
@CVMX_FPA_WQE_POOL = common dso_local global i64 0, align 8
@CVMX_FPA_WQE_POOL_SIZE = common dso_local global i32 0, align 4
@CVMX_FPA_OUTPUT_BUFFER_POOL = common dso_local global i64 0, align 8
@CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cvm_oct_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cvm_oct_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.octeon_ethernet*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = call i32 (...) @cvmx_ipd_disable()
  %7 = call i32 @atomic_inc_return(i32* @cvm_oct_poll_queue_stopping)
  %8 = call i32 @cancel_delayed_work_sync(i32* @cvm_oct_rx_refill_work)
  %9 = call i32 (...) @cvm_oct_rx_shutdown()
  %10 = call i32 (...) @cvm_oct_tx_shutdown()
  %11 = call i32 (...) @cvmx_pko_disable()
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %45, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @TOTAL_NUMBER_OF_PORTS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load %struct.net_device**, %struct.net_device*** @cvm_oct_device, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.net_device*, %struct.net_device** %17, i64 %19
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.net_device**, %struct.net_device*** @cvm_oct_device, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.net_device*, %struct.net_device** %24, i64 %26
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %4, align 8
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %29)
  store %struct.octeon_ethernet* %30, %struct.octeon_ethernet** %5, align 8
  %31 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %32 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %31, i32 0, i32 0
  %33 = call i32 @cancel_delayed_work_sync(i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = call i32 @cvm_oct_tx_shutdown_dev(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @unregister_netdev(%struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @free_netdev(%struct.net_device* %38)
  %40 = load %struct.net_device**, %struct.net_device*** @cvm_oct_device, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.net_device*, %struct.net_device** %40, i64 %42
  store %struct.net_device* null, %struct.net_device** %43, align 8
  br label %44

44:                                               ; preds = %23, %16
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %12

48:                                               ; preds = %12
  %49 = call i32 (...) @cvmx_pko_shutdown()
  %50 = call i32 (...) @cvmx_ipd_free_ptr()
  %51 = load i64, i64* @CVMX_FPA_PACKET_POOL, align 8
  %52 = load i32, i32* @CVMX_FPA_PACKET_POOL_SIZE, align 4
  %53 = load i32, i32* @num_packet_buffers, align 4
  %54 = call i32 @cvm_oct_mem_empty_fpa(i64 %51, i32 %52, i32 %53)
  %55 = load i64, i64* @CVMX_FPA_WQE_POOL, align 8
  %56 = load i32, i32* @CVMX_FPA_WQE_POOL_SIZE, align 4
  %57 = load i32, i32* @num_packet_buffers, align 4
  %58 = call i32 @cvm_oct_mem_empty_fpa(i64 %55, i32 %56, i32 %57)
  %59 = load i64, i64* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 8
  %60 = load i64, i64* @CVMX_FPA_PACKET_POOL, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i64, i64* @CVMX_FPA_OUTPUT_BUFFER_POOL, align 8
  %64 = load i32, i32* @CVMX_FPA_OUTPUT_BUFFER_POOL_SIZE, align 4
  %65 = call i32 @cvm_oct_mem_empty_fpa(i64 %63, i32 %64, i32 128)
  br label %66

66:                                               ; preds = %62, %48
  ret i32 0
}

declare dso_local i32 @cvmx_ipd_disable(...) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @cvm_oct_rx_shutdown(...) #1

declare dso_local i32 @cvm_oct_tx_shutdown(...) #1

declare dso_local i32 @cvmx_pko_disable(...) #1

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cvm_oct_tx_shutdown_dev(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @cvmx_pko_shutdown(...) #1

declare dso_local i32 @cvmx_ipd_free_ptr(...) #1

declare dso_local i32 @cvm_oct_mem_empty_fpa(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
