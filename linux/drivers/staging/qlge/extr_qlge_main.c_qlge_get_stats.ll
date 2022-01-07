; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.ql_adapter = type { i32, i32, %struct.tx_ring*, %struct.rx_ring* }
%struct.tx_ring = type { i64, i64, i64 }
%struct.rx_ring = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @qlge_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @qlge_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca %struct.rx_ring*, align 8
  %5 = alloca %struct.tx_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ql_adapter* %13, %struct.ql_adapter** %3, align 8
  %14 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %14, i32 0, i32 3
  %16 = load %struct.rx_ring*, %struct.rx_ring** %15, align 8
  %17 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %16, i64 0
  store %struct.rx_ring* %17, %struct.rx_ring** %4, align 8
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 2
  %20 = load %struct.tx_ring*, %struct.tx_ring** %19, align 8
  %21 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %20, i64 0
  store %struct.tx_ring* %21, %struct.tx_ring** %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %54, %1
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %45 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  %49 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %50 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %58 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %57, i32 1
  store %struct.rx_ring* %58, %struct.rx_ring** %4, align 8
  br label %22

59:                                               ; preds = %22
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %66, i32 0, i32 1
  store i64 %64, i64* %67, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 2
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 3
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 4
  store i64 %76, i64* %79, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %102, %59
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %107

86:                                               ; preds = %80
  %87 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %88 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %6, align 8
  %92 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %93 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %10, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %10, align 8
  %97 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %98 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %102

102:                                              ; preds = %86
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %11, align 4
  %105 = load %struct.tx_ring*, %struct.tx_ring** %5, align 8
  %106 = getelementptr inbounds %struct.tx_ring, %struct.tx_ring* %105, i32 1
  store %struct.tx_ring* %106, %struct.tx_ring** %5, align 8
  br label %80

107:                                              ; preds = %80
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.net_device*, %struct.net_device** %2, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %110, i32 0, i32 5
  store i64 %108, i64* %111, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 6
  store i64 %112, i64* %115, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %118, i32 0, i32 7
  store i64 %116, i64* %119, align 8
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  ret %struct.net_device_stats* %121
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
