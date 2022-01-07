; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_unpin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_unpin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vfio_container = type { i32, %struct.vfio_iommu_driver* }
%struct.vfio_iommu_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64*, i32)* }
%struct.vfio_group = type { %struct.vfio_container* }

@EINVAL = common dso_local global i32 0, align 4
@VFIO_PIN_PAGES_MAX_ENTRIES = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_unpin_pages(%struct.device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfio_container*, align 8
  %9 = alloca %struct.vfio_group*, align 8
  %10 = alloca %struct.vfio_iommu_driver*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i64*, i64** %6, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %14, %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @VFIO_PIN_PAGES_MAX_ENTRIES, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @E2BIG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %87

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call %struct.vfio_group* @vfio_group_get_from_dev(%struct.device* %31)
  store %struct.vfio_group* %32, %struct.vfio_group** %9, align 8
  %33 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %34 = icmp ne %struct.vfio_group* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %87

38:                                               ; preds = %30
  %39 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %40 = call i32 @vfio_group_add_container_user(%struct.vfio_group* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %83

44:                                               ; preds = %38
  %45 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %46 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %45, i32 0, i32 0
  %47 = load %struct.vfio_container*, %struct.vfio_container** %46, align 8
  store %struct.vfio_container* %47, %struct.vfio_container** %8, align 8
  %48 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %49 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %48, i32 0, i32 1
  %50 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %49, align 8
  store %struct.vfio_iommu_driver* %50, %struct.vfio_iommu_driver** %10, align 8
  %51 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %10, align 8
  %52 = icmp ne %struct.vfio_iommu_driver* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %10, align 8
  %55 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %57, align 8
  %59 = icmp ne i32 (i32, i64*, i32)* %58, null
  br label %60

60:                                               ; preds = %53, %44
  %61 = phi i1 [ false, %44 ], [ %59, %53 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @likely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %10, align 8
  %67 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %69, align 8
  %71 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %72 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i64*, i64** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 %70(i32 %73, i64* %74, i32 %75)
  store i32 %76, i32* %11, align 4
  br label %80

77:                                               ; preds = %60
  %78 = load i32, i32* @ENOTTY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %77, %65
  %81 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %82 = call i32 @vfio_group_try_dissolve_container(%struct.vfio_group* %81)
  br label %83

83:                                               ; preds = %80, %43
  %84 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %85 = call i32 @vfio_group_put(%struct.vfio_group* %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %35, %27, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.vfio_group* @vfio_group_get_from_dev(%struct.device*) #1

declare dso_local i32 @vfio_group_add_container_user(%struct.vfio_group*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vfio_group_try_dissolve_container(%struct.vfio_group*) #1

declare dso_local i32 @vfio_group_put(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
