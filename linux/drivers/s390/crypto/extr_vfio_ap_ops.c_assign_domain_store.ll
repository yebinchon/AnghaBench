; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_assign_domain_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_assign_domain_store.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @assign_domain_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_domain_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.mdev_device*, align 8
  %13 = alloca %struct.ap_matrix_mdev*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.mdev_device* @mdev_from_dev(%struct.device* %15)
  store %struct.mdev_device* %16, %struct.mdev_device** %12, align 8
  %17 = load %struct.mdev_device*, %struct.mdev_device** %12, align 8
  %18 = call %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device* %17)
  store %struct.ap_matrix_mdev* %18, %struct.ap_matrix_mdev** %13, align 8
  %19 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %20 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %14, align 8
  %23 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %24 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %81

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @kstrtoul(i8* %31, i32 0, i64* %11)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %81

37:                                               ; preds = %30
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %81

44:                                               ; preds = %37
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @vfio_ap_mdev_verify_queues_reserved_for_apqi(%struct.ap_matrix_mdev* %48, i64 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %76

54:                                               ; preds = %44
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %57 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @set_bit_inv(i64 %55, i32 %59)
  %61 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %62 = call i32 @vfio_ap_mdev_verify_no_sharing(%struct.ap_matrix_mdev* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %69

66:                                               ; preds = %54
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  br label %76

69:                                               ; preds = %65
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %13, align 8
  %72 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @clear_bit_inv(i64 %70, i32 %74)
  br label %76

76:                                               ; preds = %69, %66, %53
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %41, %35, %27
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.mdev_device* @mdev_from_dev(%struct.device*) #1

declare dso_local %struct.ap_matrix_mdev* @mdev_get_drvdata(%struct.mdev_device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfio_ap_mdev_verify_queues_reserved_for_apqi(%struct.ap_matrix_mdev*, i64) #1

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
