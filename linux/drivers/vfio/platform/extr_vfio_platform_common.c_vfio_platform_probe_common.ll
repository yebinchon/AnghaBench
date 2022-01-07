; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_probe_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/platform/extr_vfio_platform_common.c_vfio_platform_probe_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_platform_device = type { %struct.device*, i32, i32, i64 }
%struct.device = type { i32 }
%struct.iommu_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"No reset function found for device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"No IOMMU group for device %s\0A\00", align 1
@vfio_platform_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_platform_probe_common(%struct.vfio_platform_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_platform_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.iommu_group*, align 8
  %7 = alloca i32, align 4
  store %struct.vfio_platform_device* %0, %struct.vfio_platform_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %9 = icmp ne %struct.vfio_platform_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %84

13:                                               ; preds = %2
  %14 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call i32 @vfio_platform_acpi_probe(%struct.vfio_platform_device* %14, %struct.device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = call i32 @vfio_platform_of_probe(%struct.vfio_platform_device* %20, %struct.device* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %13
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %84

28:                                               ; preds = %23
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %31 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %30, i32 0, i32 0
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %33 = call i32 @vfio_platform_get_reset(%struct.vfio_platform_device* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %44 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %84

48:                                               ; preds = %36, %28
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call %struct.iommu_group* @vfio_iommu_group_get(%struct.device* %49)
  store %struct.iommu_group* %50, %struct.iommu_group** %6, align 8
  %51 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %52 = icmp ne %struct.iommu_group* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %56 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dev_err(%struct.device* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %80

61:                                               ; preds = %48
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %64 = call i32 @vfio_add_group_dev(%struct.device* %62, i32* @vfio_platform_ops, %struct.vfio_platform_device* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %76

68:                                               ; preds = %61
  %69 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %70 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %69, i32 0, i32 1
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %73 = getelementptr inbounds %struct.vfio_platform_device, %struct.vfio_platform_device* %72, i32 0, i32 0
  %74 = load %struct.device*, %struct.device** %73, align 8
  %75 = call i32 @pm_runtime_enable(%struct.device* %74)
  store i32 0, i32* %3, align 4
  br label %84

76:                                               ; preds = %67
  %77 = load %struct.iommu_group*, %struct.iommu_group** %6, align 8
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = call i32 @vfio_iommu_group_put(%struct.iommu_group* %77, %struct.device* %78)
  br label %80

80:                                               ; preds = %76, %53
  %81 = load %struct.vfio_platform_device*, %struct.vfio_platform_device** %4, align 8
  %82 = call i32 @vfio_platform_put_reset(%struct.vfio_platform_device* %81)
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %68, %41, %26, %10
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @vfio_platform_acpi_probe(%struct.vfio_platform_device*, %struct.device*) #1

declare dso_local i32 @vfio_platform_of_probe(%struct.vfio_platform_device*, %struct.device*) #1

declare dso_local i32 @vfio_platform_get_reset(%struct.vfio_platform_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.iommu_group* @vfio_iommu_group_get(%struct.device*) #1

declare dso_local i32 @vfio_add_group_dev(%struct.device*, i32*, %struct.vfio_platform_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @vfio_iommu_group_put(%struct.iommu_group*, %struct.device*) #1

declare dso_local i32 @vfio_platform_put_reset(%struct.vfio_platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
