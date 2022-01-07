; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_driver.c_mdev_attach_iommu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_driver.c_mdev_attach_iommu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32 }
%struct.iommu_group = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"MDEV: group_id = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdev_device*)* @mdev_attach_iommu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdev_attach_iommu(%struct.mdev_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdev_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iommu_group*, align 8
  store %struct.mdev_device* %0, %struct.mdev_device** %3, align 8
  %6 = call %struct.iommu_group* (...) @iommu_group_alloc()
  store %struct.iommu_group* %6, %struct.iommu_group** %5, align 8
  %7 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %8 = call i64 @IS_ERR(%struct.iommu_group* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %12 = call i32 @PTR_ERR(%struct.iommu_group* %11)
  store i32 %12, i32* %2, align 4
  br label %30

13:                                               ; preds = %1
  %14 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %15 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %16 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %15, i32 0, i32 0
  %17 = call i32 @iommu_group_add_device(%struct.iommu_group* %14, i32* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %13
  %21 = load %struct.mdev_device*, %struct.mdev_device** %3, align 8
  %22 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %21, i32 0, i32 0
  %23 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %24 = call i32 @iommu_group_id(%struct.iommu_group* %23)
  %25 = call i32 @dev_info(i32* %22, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %20, %13
  %27 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %28 = call i32 @iommu_group_put(%struct.iommu_group* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.iommu_group* @iommu_group_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_add_device(%struct.iommu_group*, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @iommu_group_id(%struct.iommu_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
