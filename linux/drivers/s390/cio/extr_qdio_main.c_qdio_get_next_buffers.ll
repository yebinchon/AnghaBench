; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_get_next_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_get_next_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.qdio_q** }
%struct.qdio_q = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@QDIO_IRQ_STATE_ACTIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_get_next_buffers(%struct.ccw_device* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.qdio_q*, align 8
  %11 = alloca %struct.qdio_irq*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.qdio_irq*, %struct.qdio_irq** %15, align 8
  store %struct.qdio_irq* %16, %struct.qdio_irq** %11, align 8
  %17 = load %struct.qdio_irq*, %struct.qdio_irq** %11, align 8
  %18 = icmp ne %struct.qdio_irq* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %57

22:                                               ; preds = %4
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %11, align 8
  %24 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %23, i32 0, i32 0
  %25 = load %struct.qdio_q**, %struct.qdio_q*** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %25, i64 %27
  %29 = load %struct.qdio_q*, %struct.qdio_q** %28, align 8
  store %struct.qdio_q* %29, %struct.qdio_q** %10, align 8
  %30 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %31 = call i64 @need_siga_sync(%struct.qdio_q* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %35 = call i32 @qdio_sync_queues(%struct.qdio_q* %34)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load %struct.qdio_irq*, %struct.qdio_irq** %11, align 8
  %38 = call i32 @qdio_check_outbound_pci_queues(%struct.qdio_irq* %37)
  %39 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %40 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QDIO_IRQ_STATE_ACTIVE, align 8
  %45 = icmp ne i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %57

52:                                               ; preds = %36
  %53 = load %struct.qdio_q*, %struct.qdio_q** %10, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @__qdio_inspect_queue(%struct.qdio_q* %53, i32* %54, i32* %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %49, %19
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i32 @qdio_sync_queues(%struct.qdio_q*) #1

declare dso_local i32 @qdio_check_outbound_pci_queues(%struct.qdio_irq*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__qdio_inspect_queue(%struct.qdio_q*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
