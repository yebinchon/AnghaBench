; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_reset_gpd_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mtu3/extr_mtu3_qmu.c_reset_gpd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtu3_ep = type { %struct.mtu3_gpd_ring }
%struct.mtu3_gpd_ring = type { %struct.qmu_gpd* }
%struct.qmu_gpd = type { i32 }

@GPD_FLAGS_HWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtu3_ep*)* @reset_gpd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_gpd_list(%struct.mtu3_ep* %0) #0 {
  %2 = alloca %struct.mtu3_ep*, align 8
  %3 = alloca %struct.mtu3_gpd_ring*, align 8
  %4 = alloca %struct.qmu_gpd*, align 8
  store %struct.mtu3_ep* %0, %struct.mtu3_ep** %2, align 8
  %5 = load %struct.mtu3_ep*, %struct.mtu3_ep** %2, align 8
  %6 = getelementptr inbounds %struct.mtu3_ep, %struct.mtu3_ep* %5, i32 0, i32 0
  store %struct.mtu3_gpd_ring* %6, %struct.mtu3_gpd_ring** %3, align 8
  %7 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %3, align 8
  %8 = getelementptr inbounds %struct.mtu3_gpd_ring, %struct.mtu3_gpd_ring* %7, i32 0, i32 0
  %9 = load %struct.qmu_gpd*, %struct.qmu_gpd** %8, align 8
  store %struct.qmu_gpd* %9, %struct.qmu_gpd** %4, align 8
  %10 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %11 = icmp ne %struct.qmu_gpd* %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load i32, i32* @GPD_FLAGS_HWO, align 4
  %14 = xor i32 %13, -1
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %17 = getelementptr inbounds %struct.qmu_gpd, %struct.qmu_gpd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.mtu3_gpd_ring*, %struct.mtu3_gpd_ring** %3, align 8
  %21 = load %struct.qmu_gpd*, %struct.qmu_gpd** %4, align 8
  %22 = call i32 @gpd_ring_init(%struct.mtu3_gpd_ring* %20, %struct.qmu_gpd* %21)
  br label %23

23:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @gpd_ring_init(%struct.mtu3_gpd_ring*, %struct.qmu_gpd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
