; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_detach_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_detach_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_domain = type { i32 }
%struct.vfio_group = type { i32, i64 }

@vfio_mdev_detach_domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfio_domain*, %struct.vfio_group*)* @vfio_iommu_detach_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_iommu_detach_group(%struct.vfio_domain* %0, %struct.vfio_group* %1) #0 {
  %3 = alloca %struct.vfio_domain*, align 8
  %4 = alloca %struct.vfio_group*, align 8
  store %struct.vfio_domain* %0, %struct.vfio_domain** %3, align 8
  store %struct.vfio_group* %1, %struct.vfio_group** %4, align 8
  %5 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %6 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %11 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.vfio_domain*, %struct.vfio_domain** %3, align 8
  %14 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @vfio_mdev_detach_domain, align 4
  %17 = call i32 @iommu_group_for_each_dev(i32 %12, i32 %15, i32 %16)
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.vfio_domain*, %struct.vfio_domain** %3, align 8
  %20 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %23 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @iommu_detach_group(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @iommu_group_for_each_dev(i32, i32, i32) #1

declare dso_local i32 @iommu_detach_group(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
