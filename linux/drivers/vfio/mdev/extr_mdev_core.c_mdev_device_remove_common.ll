; ModuleID = '/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_core.c_mdev_device_remove_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vfio/mdev/extr_mdev_core.c_mdev_device_remove_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdev_device = type { i32, %struct.mdev_parent*, i32 }
%struct.mdev_parent = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mdev_device*)* }
%struct.mdev_type = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Remove failed: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mdev_device*)* @mdev_device_remove_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mdev_device_remove_common(%struct.mdev_device* %0) #0 {
  %2 = alloca %struct.mdev_device*, align 8
  %3 = alloca %struct.mdev_parent*, align 8
  %4 = alloca %struct.mdev_type*, align 8
  %5 = alloca i32, align 4
  store %struct.mdev_device* %0, %struct.mdev_device** %2, align 8
  %6 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %7 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.mdev_type* @to_mdev_type(i32 %8)
  store %struct.mdev_type* %9, %struct.mdev_type** %4, align 8
  %10 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %11 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %10, i32 0, i32 0
  %12 = load %struct.mdev_type*, %struct.mdev_type** %4, align 8
  %13 = call i32 @mdev_remove_sysfs_files(i32* %11, %struct.mdev_type* %12)
  %14 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %15 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %14, i32 0, i32 0
  %16 = call i32 @device_del(i32* %15)
  %17 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %18 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %17, i32 0, i32 1
  %19 = load %struct.mdev_parent*, %struct.mdev_parent** %18, align 8
  store %struct.mdev_parent* %19, %struct.mdev_parent** %3, align 8
  %20 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %21 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %20, i32 0, i32 1
  %22 = call i32 @lockdep_assert_held(i32* %21)
  %23 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %24 = getelementptr inbounds %struct.mdev_parent, %struct.mdev_parent* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mdev_device*)*, i32 (%struct.mdev_device*)** %26, align 8
  %28 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %29 = call i32 %27(%struct.mdev_device* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %34 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %33, i32 0, i32 0
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.mdev_device*, %struct.mdev_device** %2, align 8
  %39 = getelementptr inbounds %struct.mdev_device, %struct.mdev_device* %38, i32 0, i32 0
  %40 = call i32 @put_device(i32* %39)
  %41 = load %struct.mdev_parent*, %struct.mdev_parent** %3, align 8
  %42 = call i32 @mdev_put_parent(%struct.mdev_parent* %41)
  ret void
}

declare dso_local %struct.mdev_type* @to_mdev_type(i32) #1

declare dso_local i32 @mdev_remove_sysfs_files(i32*, %struct.mdev_type*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @mdev_put_parent(%struct.mdev_parent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
