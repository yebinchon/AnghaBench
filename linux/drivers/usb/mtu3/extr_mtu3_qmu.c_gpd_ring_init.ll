; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_gpd_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_gpd_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3_gpd_ring = type { %struct.qmu_gpd*, %struct.qmu_gpd*, %struct.qmu_gpd*, %struct.qmu_gpd* }
%struct.qmu_gpd = type { i32 }

@MAX_GPD_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3_gpd_ring*, %struct.qmu_gpd*)* @gpd_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpd_ring_init(%struct.mtu3_gpd_ring* %0, %struct.qmu_gpd* %1) #0 {
  %3 = alloca %struct.mtu3_gpd_ring*, align 8
  %4 = alloca %struct.qmu_gpd*, align 8
  store %struct.mtu3_gpd_ring* %0, %struct.mtu3_gpd_ring** %3, align 8
  store %struct.qmu_gpd* %1, %struct.qmu_gpd** %4, align 8
  %5 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %6 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %3, align 8
  %7 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %6, i32 0, i32 3
  store %struct.qmu_gpd* %5, %struct.qmu_gpd** %7, align 8
  %8 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %9 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %3, align 8
  %10 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %9, i32 0, i32 2
  store %struct.qmu_gpd* %8, %struct.qmu_gpd** %10, align 8
  %11 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %12 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %3, align 8
  %13 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %12, i32 0, i32 1
  store %struct.qmu_gpd* %11, %struct.qmu_gpd** %13, align 8
  %14 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %15 = load i32, i32* @MAX_GPD_NUM, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %14, i64 %16
  %18 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %17, i64 -1
  %19 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %3, align 8
  %20 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %19, i32 0, i32 0
  store %struct.qmu_gpd* %18, %struct.qmu_gpd** %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
