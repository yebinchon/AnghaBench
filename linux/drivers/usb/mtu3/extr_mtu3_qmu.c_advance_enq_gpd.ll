; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_advance_enq_gpd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_advance_enq_gpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmu_gpd = type { i32 }
%struct.mtu3_gpd_ring = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qmu_gpd* (%struct.mtu3_gpd_ring*)* @advance_enq_gpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qmu_gpd* @advance_enq_gpd(%struct.mtu3_gpd_ring* %0) #0 {
  %2 = alloca %struct.mtu3_gpd_ring*, align 8
  store %struct.mtu3_gpd_ring* %0, %struct.mtu3_gpd_ring** %2, align 8
  %3 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %4 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %7 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %12 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %17 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %20 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %23 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.qmu_gpd*
  ret %struct.qmu_gpd* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
