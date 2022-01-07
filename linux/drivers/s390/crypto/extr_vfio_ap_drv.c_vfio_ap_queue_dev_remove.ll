; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_drv.c_vfio_ap_queue_dev_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_drv.c_vfio_ap_queue_dev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ap_device = type { i32 }
%struct.vfio_ap_queue = type { i32 }

@matrix_dev = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ap_device*)* @vfio_ap_queue_dev_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_ap_queue_dev_remove(%struct.ap_device* %0) #0 {
  %2 = alloca %struct.ap_device*, align 8
  %3 = alloca %struct.vfio_ap_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ap_device* %0, %struct.ap_device** %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @matrix_dev, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %10 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %9, i32 0, i32 0
  %11 = call %struct.vfio_ap_queue* @dev_get_drvdata(i32* %10)
  store %struct.vfio_ap_queue* %11, %struct.vfio_ap_queue** %3, align 8
  %12 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %13 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %12, i32 0, i32 0
  %14 = call i32 @dev_set_drvdata(i32* %13, i32* null)
  %15 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %3, align 8
  %16 = getelementptr inbounds %struct.vfio_ap_queue, %struct.vfio_ap_queue* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @AP_QID_CARD(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %3, align 8
  %20 = getelementptr inbounds %struct.vfio_ap_queue, %struct.vfio_ap_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @AP_QID_QUEUE(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @vfio_ap_mdev_reset_queue(i32 %23, i32 %24, i32 1)
  %26 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %3, align 8
  %27 = call i32 @vfio_ap_irq_disable(%struct.vfio_ap_queue* %26)
  %28 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %3, align 8
  %29 = call i32 @kfree(%struct.vfio_ap_queue* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @matrix_dev, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.vfio_ap_queue* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

declare dso_local i32 @AP_QID_CARD(i32) #1

declare dso_local i32 @AP_QID_QUEUE(i32) #1

declare dso_local i32 @vfio_ap_mdev_reset_queue(i32, i32, i32) #1

declare dso_local i32 @vfio_ap_irq_disable(%struct.vfio_ap_queue*) #1

declare dso_local i32 @kfree(%struct.vfio_ap_queue*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
