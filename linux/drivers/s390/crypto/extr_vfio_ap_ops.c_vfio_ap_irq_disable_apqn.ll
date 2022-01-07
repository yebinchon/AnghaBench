; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_irq_disable_apqn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_vfio_ap_ops.c_vfio_ap_irq_disable_apqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { i32 }
%struct.vfio_ap_queue = type { i32 }

@matrix_dev = common dso_local global %struct.TYPE_4__* null, align 8
@match_apqn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vfio_ap_irq_disable_apqn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfio_ap_irq_disable_apqn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.vfio_ap_queue*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @matrix_dev, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* @match_apqn, align 4
  %10 = call %struct.device* @driver_find_device(i32* %8, i32* null, i32* %2, i32 %9)
  store %struct.device* %10, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.vfio_ap_queue* @dev_get_drvdata(%struct.device* %14)
  store %struct.vfio_ap_queue* %15, %struct.vfio_ap_queue** %4, align 8
  %16 = load %struct.vfio_ap_queue*, %struct.vfio_ap_queue** %4, align 8
  %17 = call i32 @vfio_ap_irq_disable(%struct.vfio_ap_queue* %16)
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @put_device(%struct.device* %18)
  br label %20

20:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.device* @driver_find_device(i32*, i32*, i32*, i32) #1

declare dso_local %struct.vfio_ap_queue* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @vfio_ap_irq_disable(%struct.vfio_ap_queue*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
