; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_stop_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_stop_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.qdio_q** }
%struct.qdio_q = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@QDIO_QUEUE_IRQS_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_stop_irq(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca %struct.qdio_irq*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %9 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.qdio_irq*, %struct.qdio_irq** %11, align 8
  store %struct.qdio_irq* %12, %struct.qdio_irq** %7, align 8
  %13 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %14 = icmp ne %struct.qdio_irq* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %20 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %19, i32 0, i32 0
  %21 = load %struct.qdio_q**, %struct.qdio_q*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %21, i64 %23
  %25 = load %struct.qdio_q*, %struct.qdio_q** %24, align 8
  store %struct.qdio_q* %25, %struct.qdio_q** %6, align 8
  %26 = load i32, i32* @QDIO_QUEUE_IRQS_DISABLED, align 4
  %27 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %28 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i64 @test_and_set_bit(i32 %26, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
