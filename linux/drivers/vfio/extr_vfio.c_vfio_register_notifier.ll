; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.vfio_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_register_notifier(%struct.device* %0, i32 %1, i64* %2, %struct.notifier_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.notifier_block*, align 8
  %10 = alloca %struct.vfio_group*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store %struct.notifier_block* %3, %struct.notifier_block** %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %4
  %15 = load %struct.notifier_block*, %struct.notifier_block** %9, align 8
  %16 = icmp ne %struct.notifier_block* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i64*, i64** %8, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64*, i64** %8, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %17, %14, %4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %54

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = call %struct.vfio_group* @vfio_group_get_from_dev(%struct.device* %28)
  store %struct.vfio_group* %29, %struct.vfio_group** %10, align 8
  %30 = load %struct.vfio_group*, %struct.vfio_group** %10, align 8
  %31 = icmp ne %struct.vfio_group* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %54

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %47 [
    i32 128, label %37
    i32 129, label %42
  ]

37:                                               ; preds = %35
  %38 = load %struct.vfio_group*, %struct.vfio_group** %10, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load %struct.notifier_block*, %struct.notifier_block** %9, align 8
  %41 = call i32 @vfio_register_iommu_notifier(%struct.vfio_group* %38, i64* %39, %struct.notifier_block* %40)
  store i32 %41, i32* %11, align 4
  br label %50

42:                                               ; preds = %35
  %43 = load %struct.vfio_group*, %struct.vfio_group** %10, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = load %struct.notifier_block*, %struct.notifier_block** %9, align 8
  %46 = call i32 @vfio_register_group_notifier(%struct.vfio_group* %43, i64* %44, %struct.notifier_block* %45)
  store i32 %46, i32* %11, align 4
  br label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %47, %42, %37
  %51 = load %struct.vfio_group*, %struct.vfio_group** %10, align 8
  %52 = call i32 @vfio_group_put(%struct.vfio_group* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %32, %24
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.vfio_group* @vfio_group_get_from_dev(%struct.device*) #1

declare dso_local i32 @vfio_register_iommu_notifier(%struct.vfio_group*, i64*, %struct.notifier_block*) #1

declare dso_local i32 @vfio_register_group_notifier(%struct.vfio_group*, i64*, %struct.notifier_block*) #1

declare dso_local i32 @vfio_group_put(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
