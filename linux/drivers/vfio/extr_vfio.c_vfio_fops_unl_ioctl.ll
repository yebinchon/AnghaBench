; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_fops_unl_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_fops_unl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.vfio_container* }
%struct.vfio_container = type { i8*, %struct.vfio_iommu_driver* }
%struct.vfio_iommu_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i8*, i32, i64)* }

@EINVAL = common dso_local global i64 0, align 8
@VFIO_API_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @vfio_fops_unl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vfio_fops_unl_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.vfio_container*, align 8
  %9 = alloca %struct.vfio_iommu_driver*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.vfio_container*, %struct.vfio_container** %13, align 8
  store %struct.vfio_container* %14, %struct.vfio_container** %8, align 8
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %11, align 8
  %17 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %18 = icmp ne %struct.vfio_container* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %4, align 8
  br label %55

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %33 [
    i32 129, label %23
    i32 130, label %25
    i32 128, label %29
  ]

23:                                               ; preds = %21
  %24 = load i64, i64* @VFIO_API_VERSION, align 8
  store i64 %24, i64* %11, align 8
  br label %53

25:                                               ; preds = %21
  %26 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @vfio_ioctl_check_extension(%struct.vfio_container* %26, i64 %27)
  store i64 %28, i64* %11, align 8
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @vfio_ioctl_set_iommu(%struct.vfio_container* %30, i64 %31)
  store i64 %32, i64* %11, align 8
  br label %53

33:                                               ; preds = %21
  %34 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %35 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %34, i32 0, i32 1
  %36 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %35, align 8
  store %struct.vfio_iommu_driver* %36, %struct.vfio_iommu_driver** %9, align 8
  %37 = load %struct.vfio_container*, %struct.vfio_container** %8, align 8
  %38 = getelementptr inbounds %struct.vfio_container, %struct.vfio_container* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %10, align 8
  %40 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %9, align 8
  %41 = icmp ne %struct.vfio_iommu_driver* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.vfio_iommu_driver*, %struct.vfio_iommu_driver** %9, align 8
  %44 = getelementptr inbounds %struct.vfio_iommu_driver, %struct.vfio_iommu_driver* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64 (i8*, i32, i64)*, i64 (i8*, i32, i64)** %46, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i64 %47(i8* %48, i32 %49, i64 %50)
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %42, %33
  br label %53

53:                                               ; preds = %52, %29, %25, %23
  %54 = load i64, i64* %11, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %19
  %56 = load i64, i64* %4, align 8
  ret i64 %56
}

declare dso_local i64 @vfio_ioctl_check_extension(%struct.vfio_container*, i64) #1

declare dso_local i64 @vfio_ioctl_set_iommu(%struct.vfio_container*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
