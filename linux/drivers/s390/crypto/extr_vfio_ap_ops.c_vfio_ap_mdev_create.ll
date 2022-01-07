; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_mdev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.kobject = type { i32 }
%struct.mdev_device = type { i32 }
%struct.ap_matrix_mdev = type { i32, %struct.TYPE_3__, i32, %struct.mdev_device* }
%struct.TYPE_3__ = type { i32, i32 }

@matrix_dev = common dso_local global %struct.TYPE_4__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@handle_pqap = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.mdev_device*)* @vfio_ap_mdev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ap_mdev_create(%struct.kobject* %0, %struct.mdev_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.mdev_device*, align 8
  %6 = alloca %struct.ap_matrix_mdev*, align 8
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.mdev_device* %1, %struct.mdev_device** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %9 = call i64 @atomic_dec_if_positive(i32* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %56

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.ap_matrix_mdev* @kzalloc(i32 24, i32 %15)
  store %struct.ap_matrix_mdev* %16, %struct.ap_matrix_mdev** %6, align 8
  %17 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %6, align 8
  %18 = icmp ne %struct.ap_matrix_mdev* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %14
  %26 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %27 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %6, align 8
  %28 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %27, i32 0, i32 3
  store %struct.mdev_device* %26, %struct.mdev_device** %28, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %6, align 8
  %32 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %31, i32 0, i32 2
  %33 = call i32 @vfio_ap_matrix_init(i32* %30, i32* %32)
  %34 = load %struct.mdev_device*, %struct.mdev_device** %5, align 8
  %35 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %6, align 8
  %36 = call i32 @mdev_set_drvdata(%struct.mdev_device* %34, %struct.ap_matrix_mdev* %35)
  %37 = load i32, i32* @handle_pqap, align 4
  %38 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %6, align 8
  %39 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %6, align 8
  %43 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %6, align 8
  %49 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32 @list_add(i32* %49, i32* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %25, %19, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @atomic_dec_if_positive(i32*) #1

declare dso_local %struct.ap_matrix_mdev* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @vfio_ap_matrix_init(i32*, i32*) #1

declare dso_local i32 @mdev_set_drvdata(%struct.mdev_device*, %struct.ap_matrix_mdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
