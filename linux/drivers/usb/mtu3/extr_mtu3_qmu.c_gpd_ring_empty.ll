; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_gpd_ring_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_gpd_ring_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3_gpd_ring = type { %struct.qmu_gpd*, %struct.qmu_gpd*, %struct.qmu_gpd*, %struct.qmu_gpd* }
%struct.qmu_gpd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtu3_gpd_ring*)* @gpd_ring_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpd_ring_empty(%struct.mtu3_gpd_ring* %0) #0 {
  %2 = alloca %struct.mtu3_gpd_ring*, align 8
  %3 = alloca %struct.qmu_gpd*, align 8
  %4 = alloca %struct.qmu_gpd*, align 8
  store %struct.mtu3_gpd_ring* %0, %struct.mtu3_gpd_ring** %2, align 8
  %5 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %6 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %5, i32 0, i32 3
  %7 = load %struct.qmu_gpd*, %struct.qmu_gpd** %6, align 8
  store %struct.qmu_gpd* %7, %struct.qmu_gpd** %3, align 8
  %8 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %9 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %8, i32 0, i32 3
  %10 = load %struct.qmu_gpd*, %struct.qmu_gpd** %9, align 8
  %11 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %12 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %11, i32 0, i32 2
  %13 = load %struct.qmu_gpd*, %struct.qmu_gpd** %12, align 8
  %14 = icmp ult %struct.qmu_gpd* %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.qmu_gpd*, %struct.qmu_gpd** %3, align 8
  %17 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %16, i64 1
  store %struct.qmu_gpd* %17, %struct.qmu_gpd** %4, align 8
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %20 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %19, i32 0, i32 1
  %21 = load %struct.qmu_gpd*, %struct.qmu_gpd** %20, align 8
  store %struct.qmu_gpd* %21, %struct.qmu_gpd** %4, align 8
  br label %22

22:                                               ; preds = %18, %15
  %23 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %24 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %2, align 8
  %25 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %24, i32 0, i32 0
  %26 = load %struct.qmu_gpd*, %struct.qmu_gpd** %25, align 8
  %27 = icmp eq %struct.qmu_gpd* %23, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
