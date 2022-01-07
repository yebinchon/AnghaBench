; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_add_group_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_add_group_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vfio_device_ops = type { i32 }
%struct.iommu_group = type { i32 }
%struct.vfio_group = type { i32 }
%struct.vfio_device = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Device already exists on group %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_add_group_dev(%struct.device* %0, %struct.vfio_device_ops* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.vfio_device_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iommu_group*, align 8
  %9 = alloca %struct.vfio_group*, align 8
  %10 = alloca %struct.vfio_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.vfio_device_ops* %1, %struct.vfio_device_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.iommu_group* @iommu_group_get(%struct.device* %11)
  store %struct.iommu_group* %12, %struct.iommu_group** %8, align 8
  %13 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %14 = icmp ne %struct.iommu_group* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %77

18:                                               ; preds = %3
  %19 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %20 = call %struct.vfio_group* @vfio_group_get_from_iommu(%struct.iommu_group* %19)
  store %struct.vfio_group* %20, %struct.vfio_group** %9, align 8
  %21 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %22 = icmp ne %struct.vfio_group* %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %18
  %24 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %25 = call %struct.vfio_group* @vfio_create_group(%struct.iommu_group* %24)
  store %struct.vfio_group* %25, %struct.vfio_group** %9, align 8
  %26 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %27 = call i64 @IS_ERR(%struct.vfio_group* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %31 = call i32 @iommu_group_put(%struct.iommu_group* %30)
  %32 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %33 = call i32 @PTR_ERR(%struct.vfio_group* %32)
  store i32 %33, i32* %4, align 4
  br label %77

34:                                               ; preds = %23
  br label %38

35:                                               ; preds = %18
  %36 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %37 = call i32 @iommu_group_put(%struct.iommu_group* %36)
  br label %38

38:                                               ; preds = %35, %34
  %39 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = call %struct.vfio_group* @vfio_group_get_device(%struct.vfio_group* %39, %struct.device* %40)
  %42 = bitcast %struct.vfio_group* %41 to %struct.vfio_device*
  store %struct.vfio_device* %42, %struct.vfio_device** %10, align 8
  %43 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %44 = icmp ne %struct.vfio_device* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.device*, %struct.device** %5, align 8
  %47 = load %struct.iommu_group*, %struct.iommu_group** %8, align 8
  %48 = call i32 @iommu_group_id(%struct.iommu_group* %47)
  %49 = call i32 @dev_WARN(%struct.device* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %51 = bitcast %struct.vfio_device* %50 to %struct.vfio_group*
  %52 = call i32 @vfio_device_put(%struct.vfio_group* %51)
  %53 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %54 = call i32 @vfio_group_put(%struct.vfio_group* %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %77

57:                                               ; preds = %38
  %58 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %59 = load %struct.device*, %struct.device** %5, align 8
  %60 = load %struct.vfio_device_ops*, %struct.vfio_device_ops** %6, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call %struct.vfio_group* @vfio_group_create_device(%struct.vfio_group* %58, %struct.device* %59, %struct.vfio_device_ops* %60, i8* %61)
  %63 = bitcast %struct.vfio_group* %62 to %struct.vfio_device*
  store %struct.vfio_device* %63, %struct.vfio_device** %10, align 8
  %64 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %65 = bitcast %struct.vfio_device* %64 to %struct.vfio_group*
  %66 = call i64 @IS_ERR(%struct.vfio_group* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %70 = call i32 @vfio_group_put(%struct.vfio_group* %69)
  %71 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %72 = bitcast %struct.vfio_device* %71 to %struct.vfio_group*
  %73 = call i32 @PTR_ERR(%struct.vfio_group* %72)
  store i32 %73, i32* %4, align 4
  br label %77

74:                                               ; preds = %57
  %75 = load %struct.vfio_group*, %struct.vfio_group** %9, align 8
  %76 = call i32 @vfio_group_put(%struct.vfio_group* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %68, %45, %29, %15
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local %struct.vfio_group* @vfio_group_get_from_iommu(%struct.iommu_group*) #1

declare dso_local %struct.vfio_group* @vfio_create_group(%struct.iommu_group*) #1

declare dso_local i64 @IS_ERR(%struct.vfio_group*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

declare dso_local i32 @PTR_ERR(%struct.vfio_group*) #1

declare dso_local %struct.vfio_group* @vfio_group_get_device(%struct.vfio_group*, %struct.device*) #1

declare dso_local i32 @dev_WARN(%struct.device*, i8*, i32) #1

declare dso_local i32 @iommu_group_id(%struct.iommu_group*) #1

declare dso_local i32 @vfio_device_put(%struct.vfio_group*) #1

declare dso_local i32 @vfio_group_put(%struct.vfio_group*) #1

declare dso_local %struct.vfio_group* @vfio_group_create_device(%struct.vfio_group*, %struct.device*, %struct.vfio_device_ops*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
