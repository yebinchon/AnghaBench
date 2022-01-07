; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_nb_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_nb_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_group = type { i32, i32 }
%struct.device = type { i32 }
%struct.vfio_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Device added to live group %d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfio_group*, %struct.device*)* @vfio_group_nb_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_group_nb_add_dev(%struct.vfio_group* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfio_group*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.vfio_device*, align 8
  store %struct.vfio_group* %0, %struct.vfio_group** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = call %struct.vfio_device* @vfio_group_get_device(%struct.vfio_group* %7, %struct.device* %8)
  store %struct.vfio_device* %9, %struct.vfio_device** %6, align 8
  %10 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %11 = call i64 @WARN_ON_ONCE(%struct.vfio_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.vfio_device*, %struct.vfio_device** %6, align 8
  %15 = call i32 @vfio_device_put(%struct.vfio_device* %14)
  store i32 0, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %18 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %17, i32 0, i32 1
  %19 = call i32 @atomic_read(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.vfio_group*, %struct.vfio_group** %4, align 8
  %25 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iommu_group_id(i32 %26)
  %28 = call i32 @dev_WARN(%struct.device* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %21, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.vfio_device* @vfio_group_get_device(%struct.vfio_group*, %struct.device*) #1

declare dso_local i64 @WARN_ON_ONCE(%struct.vfio_device*) #1

declare dso_local i32 @vfio_device_put(%struct.vfio_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_WARN(%struct.device*, i8*, i32) #1

declare dso_local i32 @iommu_group_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
