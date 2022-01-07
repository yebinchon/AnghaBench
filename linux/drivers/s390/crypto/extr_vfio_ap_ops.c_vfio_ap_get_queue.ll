; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_get_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_get_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.vfio_ap_queue = type { %struct.ap_matrix_mdev* }
%struct.ap_matrix_mdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.device = type { i32 }

@matrix_dev = common dso_local global %struct.TYPE_6__* null, align 8
@match_apqn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfio_ap_queue* (%struct.ap_matrix_mdev*, i32)* @vfio_ap_get_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfio_ap_queue* @vfio_ap_get_queue(%struct.ap_matrix_mdev* %0, i32 %1) #0 {
  %3 = alloca %struct.vfio_ap_queue*, align 8
  %4 = alloca %struct.ap_matrix_mdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfio_ap_queue*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.ap_matrix_mdev* %0, %struct.ap_matrix_mdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @AP_QID_CARD(i32 %8)
  %10 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %11 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @test_bit_inv(i32 %9, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.vfio_ap_queue* null, %struct.vfio_ap_queue** %3, align 8
  br label %46

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @AP_QID_QUEUE(i32 %18)
  %20 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %21 = getelementptr inbounds %struct.ap_matrix_mdev, %struct.ap_matrix_mdev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @test_bit_inv(i32 %19, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store %struct.vfio_ap_queue* null, %struct.vfio_ap_queue** %3, align 8
  br label %46

27:                                               ; preds = %17
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @matrix_dev, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* @match_apqn, align 4
  %33 = call %struct.device* @driver_find_device(i32* %31, i32* null, i32* %5, i32 %32)
  store %struct.device* %33, %struct.device** %7, align 8
  %34 = load %struct.device*, %struct.device** %7, align 8
  %35 = icmp ne %struct.device* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  store %struct.vfio_ap_queue* null, %struct.vfio_ap_queue** %3, align 8
  br label %46

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = call %struct.vfio_ap_queue* @dev_get_drvdata(%struct.device* %38)
  store %struct.vfio_ap_queue* %39, %struct.vfio_ap_queue** %6, align 8
  %40 = load %struct.ap_matrix_mdev*, %struct.ap_matrix_mdev** %4, align 8
  %41 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %6, align 8
  %42 = getelementptr inbounds %struct.vfio_ap_queue, %struct.vfio_ap_queue* %41, i32 0, i32 0
  store %struct.ap_matrix_mdev* %40, %struct.ap_matrix_mdev** %42, align 8
  %43 = load %struct.device*, %struct.device** %7, align 8
  %44 = call i32 @put_device(%struct.device* %43)
  %45 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %6, align 8
  store %struct.vfio_ap_queue* %45, %struct.vfio_ap_queue** %3, align 8
  br label %46

46:                                               ; preds = %37, %36, %26, %16
  %47 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %3, align 8
  ret %struct.vfio_ap_queue* %47
}

declare dso_local i32 @test_bit_inv(i32, i32) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local %struct.device* @driver_find_device(i32*, i32*, i32*, i32) #1

declare dso_local %struct.vfio_ap_queue* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
