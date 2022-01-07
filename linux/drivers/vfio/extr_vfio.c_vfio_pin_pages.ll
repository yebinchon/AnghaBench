; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_pin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vfio_container = type { i32, %struct.vfio_iommu_driver* }
%struct.vfio_iommu_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i64*, i32, i32, i64*)* }
%struct.vfio_group = type { %struct.vfio_container* }

@EINVAL = common dso_local global i32 0, align 4
@VFIO_PIN_PAGES_MAX_ENTRIES = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_pin_pages(%struct.device* %0, i64* %1, i32 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.vfio_container*, align 8
  %13 = alloca %struct.vfio_group*, align 8
  %14 = alloca %struct.vfio_iommu_driver*, align 8
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = icmp ne %struct.device* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i64*, i64** %8, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64*, i64** %11, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %21, %18, %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %96

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @VFIO_PIN_PAGES_MAX_ENTRIES, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @E2BIG, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %96

37:                                               ; preds = %30
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call %struct.vfio_group* @vfio_group_get_from_dev(%struct.device* %38)
  store %struct.vfio_group* %39, %struct.vfio_group** %13, align 8
  %40 = load %struct.vfio_group*, %struct.vfio_group** %13, align 8
  %41 = icmp ne %struct.vfio_group* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %96

45:                                               ; preds = %37
  %46 = load %struct.vfio_group*, %struct.vfio_group** %13, align 8
  %47 = call i32 @vfio_group_add_container_user(%struct.vfio_group* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %92

51:                                               ; preds = %45
  %52 = load %struct.vfio_group*, %struct.vfio_group** %13, align 8
  %53 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %52, i32 0, i32 0
  %54 = load %struct.vfio_container*, %struct.vfio_container** %53, align 8
  store %struct.vfio_container* %54, %struct.vfio_container** %12, align 8
  %55 = load %struct.vfio_container*, %struct.vfio_container** %12, align 8
  %56 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %55, i32 0, i32 1
  %57 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %56, align 8
  store %struct.vfio_iommu_driver* %57, %struct.vfio_iommu_driver** %14, align 8
  %58 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %14, align 8
  %59 = icmp ne %struct.vfio_iommu_driver* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %51
  %61 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %14, align 8
  %62 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (i32, i64*, i32, i32, i64*)*, i32 (i32, i64*, i32, i32, i64*)** %64, align 8
  %66 = icmp ne i32 (i32, i64*, i32, i32, i64*)* %65, null
  br label %67

67:                                               ; preds = %60, %51
  %68 = phi i1 [ false, %51 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i64 @likely(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %14, align 8
  %74 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32 (i32, i64*, i32, i32, i64*)*, i32 (i32, i64*, i32, i32, i64*)** %76, align 8
  %78 = load %struct.vfio_container*, %struct.vfio_container** %12, align 8
  %79 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i64*, i64** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i64*, i64** %11, align 8
  %85 = call i32 %77(i32 %80, i64* %81, i32 %82, i32 %83, i64* %84)
  store i32 %85, i32* %15, align 4
  br label %89

86:                                               ; preds = %67
  %87 = load i32, i32* @ENOTTY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %86, %72
  %90 = load %struct.vfio_group*, %struct.vfio_group** %13, align 8
  %91 = call i32 @vfio_group_try_dissolve_container(%struct.vfio_group* %90)
  br label %92

92:                                               ; preds = %89, %50
  %93 = load %struct.vfio_group*, %struct.vfio_group** %13, align 8
  %94 = call i32 @vfio_group_put(%struct.vfio_group* %93)
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %92, %42, %34, %27
  %97 = load i32, i32* %6, align 4
  ret i32 %97
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
