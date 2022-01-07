; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_drv.c_vfio_ap_queue_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_drv.c_vfio_ap_queue_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32 }
%struct.vfio_ap_queue = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VFIO_AP_ISC_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_device*)* @vfio_ap_queue_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfio_ap_queue_dev_probe(%struct.ap_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ap_device*, align 8
  %4 = alloca %struct.vfio_ap_queue*, align 8
  store %struct.ap_device* %0, %struct.ap_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.vfio_ap_queue* @kzalloc(i32 8, i32 %5)
  store %struct.vfio_ap_queue* %6, %struct.vfio_ap_queue** %4, align 8
  %7 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %4, align 8
  %8 = icmp ne %struct.vfio_ap_queue* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %14 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %13, i32 0, i32 0
  %15 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %4, align 8
  %16 = call i32 @dev_set_drvdata(i32* %14, %struct.vfio_ap_queue* %15)
  %17 = load %struct.ap_device*, %struct.ap_device** %3, align 8
  %18 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %17, i32 0, i32 0
  %19 = call %struct.TYPE_2__* @to_ap_queue(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %4, align 8
  %23 = getelementptr inbounds %struct.vfio_ap_queue, %struct.vfio_ap_queue* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @VFIO_AP_ISC_INVALID, align 4
  %25 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %4, align 8
  %26 = getelementptr inbounds %struct.vfio_ap_queue, %struct.vfio_ap_queue* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.vfio_ap_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.vfio_ap_queue*) #1

declare dso_local %struct.TYPE_2__* @to_ap_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
