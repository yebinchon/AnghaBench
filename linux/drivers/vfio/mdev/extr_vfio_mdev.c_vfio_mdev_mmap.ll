; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_vfio_mdev.c_vfio_mdev_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_vfio_mdev.c_vfio_mdev_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.mdev_device = type { %struct.mdev_parent* }
%struct.mdev_parent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mdev_device*, %struct.vm_area_struct*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vm_area_struct*)* @vfio_mdev_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_mdev_mmap(i8* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.mdev_device*, align 8
  %7 = alloca %struct.mdev_parent*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.mdev_device*
  store %struct.mdev_device* %9, %struct.mdev_device** %6, align 8
  %10 = load %struct.mdev_device*, %struct.mdev_device** %6, align 8
  %11 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %10, i32 0, i32 0
  %12 = load %struct.mdev_parent*, %struct.mdev_parent** %11, align 8
  store %struct.mdev_parent* %12, %struct.mdev_parent** %7, align 8
  %13 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %14 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.mdev_device*, %struct.vm_area_struct*)*, i32 (%struct.mdev_device*, %struct.vm_area_struct*)** %16, align 8
  %18 = icmp ne i32 (%struct.mdev_device*, %struct.vm_area_struct*)* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %2
  %27 = load %struct.mdev_parent*, %struct.mdev_parent** %7, align 8
  %28 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.mdev_device*, %struct.vm_area_struct*)*, i32 (%struct.mdev_device*, %struct.vm_area_struct*)** %30, align 8
  %32 = load %struct.mdev_device*, %struct.mdev_device** %6, align 8
  %33 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %34 = call i32 %31(%struct.mdev_device* %32, %struct.vm_area_struct* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
