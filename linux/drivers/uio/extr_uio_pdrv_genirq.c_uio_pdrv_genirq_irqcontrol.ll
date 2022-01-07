; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_irqcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_pdrv_genirq.c_uio_pdrv_genirq_irqcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { i32, %struct.uio_pdrv_genirq_platdata* }
%struct.uio_pdrv_genirq_platdata = type { i32, i32 }

@UIO_IRQ_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uio_info*, i64)* @uio_pdrv_genirq_irqcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uio_pdrv_genirq_irqcontrol(%struct.uio_info* %0, i64 %1) #0 {
  %3 = alloca %struct.uio_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.uio_pdrv_genirq_platdata*, align 8
  %6 = alloca i64, align 8
  store %struct.uio_info* %0, %struct.uio_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %8 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %7, i32 0, i32 1
  %9 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %8, align 8
  store %struct.uio_pdrv_genirq_platdata* %9, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %10 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %11 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load i64, i64* %4, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* @UIO_IRQ_DISABLED, align 4
  %18 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %19 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %18, i32 0, i32 1
  %20 = call i64 @__test_and_clear_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %24 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @enable_irq(i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  br label %40

28:                                               ; preds = %2
  %29 = load i32, i32* @UIO_IRQ_DISABLED, align 4
  %30 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %31 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %30, i32 0, i32 1
  %32 = call i32 @__test_and_set_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.uio_info*, %struct.uio_info** %3, align 8
  %36 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @disable_irq_nosync(i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.uio_pdrv_genirq_platdata*, %struct.uio_pdrv_genirq_platdata** %5, align 8
  %42 = getelementptr inbounds %struct.uio_pdrv_genirq_platdata, %struct.uio_pdrv_genirq_platdata* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @__test_and_set_bit(i32, i32*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
