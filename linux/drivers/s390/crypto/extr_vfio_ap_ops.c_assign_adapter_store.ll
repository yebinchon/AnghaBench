; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_assign_adapter_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_assign_adapter_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mdev_device = type { i32 }
%struct.ap_matrix_mdev = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@matrix_dev = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @assign_adapter_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_adapter_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mdev_device*, align 8
  %13 = alloca %struct.ap_matrix_mdev*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.mdev_device* @mdev_from_dev(%struct.device* %14)
  store %struct.mdev_device* %15, %struct.mdev_device** %12, align 8
  %16 = load %struct.mdev_device*, %struct.mdev_device** %12, align 8
  %17 = call %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device* %16)
  store %struct.ap_matrix_mdev* %17, %struct.ap_matrix_mdev** %13, align 8
  %18 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %19 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %79

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @kstrtoul(i8* %26, i32 0, i64* %11)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %5, align 4
  br label %79

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %35 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %33, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %79

42:                                               ; preds = %32
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @vfio_ap_mdev_verify_queues_reserved_for_apid(%struct.ap_matrix_mdev* %46, i64 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %74

52:                                               ; preds = %42
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %55 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @set_bit_inv(i64 %53, i32 %57)
  %59 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %60 = call i32 @vfio_ap_mdev_verify_no_sharing(%struct.ap_matrix_mdev* %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %67

64:                                               ; preds = %52
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %10, align 4
  br label %74

67:                                               ; preds = %63
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %70 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @clear_bit_inv(i64 %68, i32 %72)
  br label %74

74:                                               ; preds = %67, %64, %51
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %74, %39, %30, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.mdev_device* @mdev_from_dev(%struct.device*) #1

declare dso_local %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfio_ap_mdev_verify_queues_reserved_for_apid(%struct.ap_matrix_mdev*, i64) #1

declare dso_local i32 @set_bit_inv(i64, i32) #1

declare dso_local i32 @vfio_ap_mdev_verify_no_sharing(%struct.ap_matrix_mdev*) #1

declare dso_local i32 @clear_bit_inv(i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
