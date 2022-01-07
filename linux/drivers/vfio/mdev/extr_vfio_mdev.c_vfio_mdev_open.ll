; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_vfio_mdev.c_vfio_mdev_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_vfio_mdev.c_vfio_mdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { %struct.mdev_parent* }
%struct.mdev_parent = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mdev_device*)* }

@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @vfio_mdev_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_mdev_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mdev_device*, align 8
  %5 = alloca %struct.mdev_parent*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mdev_device*
  store %struct.mdev_device* %8, %struct.mdev_device** %4, align 8
  %9 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %10 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %9, i32 0, i32 0
  %11 = load %struct.mdev_parent*, %struct.mdev_parent** %10, align 8
  store %struct.mdev_parent* %11, %struct.mdev_parent** %5, align 8
  %12 = load %struct.mdev_parent*, %struct.mdev_parent** %5, align 8
  %13 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.mdev_device*)*, i32 (%struct.mdev_device*)** %15, align 8
  %17 = icmp ne i32 (%struct.mdev_device*)* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %47

25:                                               ; preds = %1
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = call i32 @try_module_get(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %25
  %33 = load %struct.mdev_parent*, %struct.mdev_parent** %5, align 8
  %34 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.mdev_device*)*, i32 (%struct.mdev_device*)** %36, align 8
  %38 = load %struct.mdev_device*, %struct.mdev_device** %4, align 8
  %39 = call i32 %37(%struct.mdev_device* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @THIS_MODULE, align 4
  %44 = call i32 @module_put(i32 %43)
  br label %45

45:                                               ; preds = %42, %32
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %29, %22
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
