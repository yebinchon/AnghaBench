; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_unregister_iommu_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_unregister_iommu_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { %struct.vfio_container* }
%struct.vfio_container = type { i32, %struct.vfio_iommu_driver* }
%struct.vfio_iommu_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.notifier_block*)* }
%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_group*, %struct.notifier_block*)* @vfio_unregister_iommu_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_unregister_iommu_notifier(%struct.vfio_group* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_group*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca %struct.vfio_container*, align 8
  %7 = alloca %struct.vfio_iommu_driver*, align 8
  %8 = alloca i32, align 4
  store %struct.vfio_group* %0, %struct.vfio_group** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  %9 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %10 = call i32 @vfio_group_add_container_user(%struct.vfio_group* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %18 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %17, i32 0, i32 0
  %19 = load %struct.vfio_container*, %struct.vfio_container** %18, align 8
  store %struct.vfio_container* %19, %struct.vfio_container** %6, align 8
  %20 = load %struct.vfio_container*, %struct.vfio_container** %6, align 8
  %21 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %20, i32 0, i32 1
  %22 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %21, align 8
  store %struct.vfio_iommu_driver* %22, %struct.vfio_iommu_driver** %7, align 8
  %23 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %7, align 8
  %24 = icmp ne %struct.vfio_iommu_driver* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %7, align 8
  %27 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (i32, %struct.notifier_block*)*, i32 (i32, %struct.notifier_block*)** %29, align 8
  %31 = icmp ne i32 (i32, %struct.notifier_block*)* %30, null
  br label %32

32:                                               ; preds = %25, %16
  %33 = phi i1 [ false, %16 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %7, align 8
  %39 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32, %struct.notifier_block*)*, i32 (i32, %struct.notifier_block*)** %41, align 8
  %43 = load %struct.vfio_container*, %struct.vfio_container** %6, align 8
  %44 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %47 = call i32 %42(i32 %45, %struct.notifier_block* %46)
  store i32 %47, i32* %8, align 4
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* @ENOTTY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %37
  %52 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %53 = call i32 @vfio_group_try_dissolve_container(%struct.vfio_group* %52)
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @vfio_group_add_container_user(%struct.vfio_group*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vfio_group_try_dissolve_container(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
