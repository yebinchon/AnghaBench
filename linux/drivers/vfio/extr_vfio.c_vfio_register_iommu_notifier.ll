; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_register_iommu_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_register_iommu_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { %struct.vfio_container* }
%struct.vfio_container = type { i32, %struct.vfio_iommu_driver* }
%struct.vfio_iommu_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64*, %struct.notifier_block*)* }
%struct.notifier_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_group*, i64*, %struct.notifier_block*)* @vfio_register_iommu_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_register_iommu_notifier(%struct.vfio_group* %0, i64* %1, %struct.notifier_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vfio_group*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.notifier_block*, align 8
  %8 = alloca %struct.vfio_container*, align 8
  %9 = alloca %struct.vfio_iommu_driver*, align 8
  %10 = alloca i32, align 4
  store %struct.vfio_group* %0, %struct.vfio_group** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.notifier_block* %2, %struct.notifier_block** %7, align 8
  %11 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %12 = call i32 @vfio_group_add_container_user(%struct.vfio_group* %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %20 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %19, i32 0, i32 0
  %21 = load %struct.vfio_container*, %struct.vfio_container** %20, align 8
  store %struct.vfio_container* %21, %struct.vfio_container** %8, align 8
  %22 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %23 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %22, i32 0, i32 1
  %24 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %23, align 8
  store %struct.vfio_iommu_driver* %24, %struct.vfio_iommu_driver** %9, align 8
  %25 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %9, align 8
  %26 = icmp ne %struct.vfio_iommu_driver* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %18
  %28 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %9, align 8
  %29 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32, i64*, %struct.notifier_block*)*, i32 (i32, i64*, %struct.notifier_block*)** %31, align 8
  %33 = icmp ne i32 (i32, i64*, %struct.notifier_block*)* %32, null
  br label %34

34:                                               ; preds = %27, %18
  %35 = phi i1 [ false, %18 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %9, align 8
  %41 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (i32, i64*, %struct.notifier_block*)*, i32 (i32, i64*, %struct.notifier_block*)** %43, align 8
  %45 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %46 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %50 = call i32 %44(i32 %47, i64* %48, %struct.notifier_block* %49)
  store i32 %50, i32* %10, align 4
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* @ENOTTY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %51, %39
  %55 = load %struct.vfio_group*, %struct.vfio_group** %5, align 8
  %56 = call i32 @vfio_group_try_dissolve_container(%struct.vfio_group* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
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
