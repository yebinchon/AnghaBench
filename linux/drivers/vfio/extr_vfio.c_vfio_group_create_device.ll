; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/extr_vfio.c_vfio_group_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfio_device = type { i32, i8*, %struct.vfio_device_ops*, %struct.vfio_group*, %struct.device*, i32 }
%struct.vfio_group = type { i32, i32 }
%struct.device = type { i32 }
%struct.vfio_device_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfio_device* (%struct.vfio_group*, %struct.device*, %struct.vfio_device_ops*, i8*)* @vfio_group_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfio_device* @vfio_group_create_device(%struct.vfio_group* %0, %struct.device* %1, %struct.vfio_device_ops* %2, i8* %3) #0 {
  %5 = alloca %struct.vfio_device*, align 8
  %6 = alloca %struct.vfio_group*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.vfio_device_ops*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.vfio_device*, align 8
  store %struct.vfio_group* %0, %struct.vfio_group** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store %struct.vfio_device_ops* %2, %struct.vfio_device_ops** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.vfio_device* @kzalloc(i32 48, i32 %11)
  store %struct.vfio_device* %12, %struct.vfio_device** %10, align 8
  %13 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %14 = icmp ne %struct.vfio_device* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.vfio_device* @ERR_PTR(i32 %17)
  store %struct.vfio_device* %18, %struct.vfio_device** %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %21 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %20, i32 0, i32 5
  %22 = call i32 @kref_init(i32* %21)
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %25 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %24, i32 0, i32 4
  store %struct.device* %23, %struct.device** %25, align 8
  %26 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %27 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %28 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %27, i32 0, i32 3
  store %struct.vfio_group* %26, %struct.vfio_group** %28, align 8
  %29 = load %struct.vfio_device_ops*, %struct.vfio_device_ops** %8, align 8
  %30 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %31 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %30, i32 0, i32 2
  store %struct.vfio_device_ops* %29, %struct.vfio_device_ops** %31, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %34 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %37 = call i32 @dev_set_drvdata(%struct.device* %35, %struct.vfio_device* %36)
  %38 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %39 = call i32 @vfio_group_get(%struct.vfio_group* %38)
  %40 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %41 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  %44 = getelementptr inbounds %struct.vfio_device, %struct.vfio_device* %43, i32 0, i32 0
  %45 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %46 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %45, i32 0, i32 1
  %47 = call i32 @list_add(i32* %44, i32* %46)
  %48 = load %struct.vfio_group*, %struct.vfio_group** %6, align 8
  %49 = getelementptr inbounds %struct.vfio_group, %struct.vfio_group* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.vfio_device*, %struct.vfio_device** %10, align 8
  store %struct.vfio_device* %51, %struct.vfio_device** %5, align 8
  br label %52

52:                                               ; preds = %19, %15
  %53 = load %struct.vfio_device*, %struct.vfio_device** %5, align 8
  ret %struct.vfio_device* %53
}

declare dso_local %struct.vfio_device* @kzalloc(i32, i32) #1

declare dso_local %struct.vfio_device* @ERR_PTR(i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.vfio_device*) #1

declare dso_local i32 @vfio_group_get(%struct.vfio_group*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
