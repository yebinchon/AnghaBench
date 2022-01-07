; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.vfio_group = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfio_unregister_notifier(%struct.device* %0, i32 %1, %struct.notifier_block* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.notifier_block*, align 8
  %8 = alloca %struct.vfio_group*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.notifier_block* %2, %struct.notifier_block** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = icmp ne %struct.device* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %14 = icmp ne %struct.notifier_block* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %12
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call %struct.vfio_group* @vfio_group_get_from_dev(%struct.device* %19)
  store %struct.vfio_group* %20, %struct.vfio_group** %8, align 8
  %21 = load %struct.vfio_group*, %struct.vfio_group** %8, align 8
  %22 = icmp ne %struct.vfio_group* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  switch i32 %27, label %36 [
    i32 128, label %28
    i32 129, label %32
  ]

28:                                               ; preds = %26
  %29 = load %struct.vfio_group*, %struct.vfio_group** %8, align 8
  %30 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %31 = call i32 @vfio_unregister_iommu_notifier(%struct.vfio_group* %29, %struct.notifier_block* %30)
  store i32 %31, i32* %9, align 4
  br label %39

32:                                               ; preds = %26
  %33 = load %struct.vfio_group*, %struct.vfio_group** %8, align 8
  %34 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %35 = call i32 @vfio_unregister_group_notifier(%struct.vfio_group* %33, %struct.notifier_block* %34)
  store i32 %35, i32* %9, align 4
  br label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %32, %28
  %40 = load %struct.vfio_group*, %struct.vfio_group** %8, align 8
  %41 = call i32 @vfio_group_put(%struct.vfio_group* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %23, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.vfio_group* @vfio_group_get_from_dev(%struct.device*) #1

declare dso_local i32 @vfio_unregister_iommu_notifier(%struct.vfio_group*, %struct.notifier_block*) #1

declare dso_local i32 @vfio_unregister_group_notifier(%struct.vfio_group*, %struct.notifier_block*) #1

declare dso_local i32 @vfio_group_put(%struct.vfio_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
