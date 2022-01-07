; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_attach_group.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio_iommu_type1.c_vfio_iommu_attach_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_domain = type { i32 }
%struct.vfio_group = type { i32, i64 }

@vfio_mdev_attach_domain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_domain*, %struct.vfio_group*)* @vfio_iommu_attach_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_iommu_attach_group(%struct.vfio_domain* %0, %struct.vfio_group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_domain*, align 8
  %5 = alloca %struct.vfio_group*, align 8
  store %struct.vfio_domain* %0, %struct.vfio_domain** %4, align 8
  store %struct.vfio_group* %1, %struct.vfio_group** %5, align 8
  %6 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %7 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %12 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vfio_domain*, %struct.vfio_domain** %4, align 8
  %15 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @vfio_mdev_attach_domain, align 4
  %18 = call i32 @iommu_group_for_each_dev(i32 %13, i32 %16, i32 %17)
  store i32 %18, i32* %3, align 4
  br label %27

19:                                               ; preds = %2
  %20 = load %struct.vfio_domain*, %struct.vfio_domain** %4, align 8
  %21 = getelementptr inbounds %struct.vfio_domain, %struct.vfio_domain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %24 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iommu_attach_group(i32 %22, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %19, %10
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @iommu_group_for_each_dev(i32, i32, i32) #1

declare dso_local i32 @iommu_attach_group(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
