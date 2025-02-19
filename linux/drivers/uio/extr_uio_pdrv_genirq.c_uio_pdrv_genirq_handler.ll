; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { %struct.uio_pdrv_genirq_platdata* }
%struct.uio_pdrv_genirq_platdata = type { i32, i32 }

@UIO_IRQ_DISABLED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uio_info*)* @uio_pdrv_genirq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_pdrv_genirq_handler(i32 %0, %struct.uio_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uio_info*, align 8
  %5 = alloca %struct.uio_pdrv_genirq_platdata*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.uio_info* %1, %struct.uio_info** %4, align 8
  %6 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %7 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %6, i32 0, i32 0
  %8 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %7, align 8
  store %struct.uio_pdrv_genirq_platdata* %8, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %9 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %10 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load i32, i32* @UIO_IRQ_DISABLED, align 4
  %13 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %14 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %13, i32 0, i32 1
  %15 = call i32 @__test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @disable_irq_nosync(i32 %18)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %22 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %24
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__test_and_set_bit(i32, i32*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
