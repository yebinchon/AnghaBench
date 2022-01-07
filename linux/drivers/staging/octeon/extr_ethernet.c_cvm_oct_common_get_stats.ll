; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet.c_cvm_oct_common_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.octeon_ethernet = type { i64 }

@CVMX_PIP_NUM_INPUT_PORTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @cvm_oct_common_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @cvm_oct_common_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.octeon_ethernet*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %6)
  store %struct.octeon_ethernet* %7, %struct.octeon_ethernet** %5, align 8
  %8 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %9 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CVMX_PIP_NUM_INPUT_PORTS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %101

13:                                               ; preds = %1
  %14 = call i64 (...) @octeon_is_simulation()
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = call i32 @memset(%struct.TYPE_6__* %3, i32 0, i32 64)
  %18 = call i32 @memset(%struct.TYPE_6__* %4, i32 0, i32 64)
  br label %28

19:                                               ; preds = %13
  %20 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %21 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @cvmx_pip_get_port_status(i64 %22, i32 1, %struct.TYPE_6__* %3)
  %24 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %5, align 8
  %25 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @cvmx_pko_get_port_status(i64 %26, i32 1, %struct.TYPE_6__* %4)
  br label %28

28:                                               ; preds = %19, %16
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %30
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %39
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %48
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %57
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %66
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %69, align 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %75
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %84
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.net_device*, %struct.net_device** %2, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %93
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %96, align 4
  br label %101

101:                                              ; preds = %28, %1
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  ret %struct.net_device_stats* %103
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @octeon_is_simulation(...) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @cvmx_pip_get_port_status(i64, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @cvmx_pko_get_port_status(i64, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
