; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_start_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_start_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.qdio_q** }
%struct.qdio_q = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@QDIO_QUEUE_IRQS_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_start_irq(%struct.ccw_device* %0, i32 %1) #0 {
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
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %20 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %19, i32 0, i32 0
  %21 = load %struct.qdio_q**, %struct.qdio_q*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %21, i64 %23
  %25 = load %struct.qdio_q*, %struct.qdio_q** %24, align 8
  store %struct.qdio_q* %25, %struct.qdio_q** %6, align 8
  %26 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %27 = call i32 @clear_nonshared_ind(%struct.qdio_irq* %26)
  %28 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %29 = call i32 @qdio_stop_polling(%struct.qdio_q* %28)
  %30 = load i32, i32* @QDIO_QUEUE_IRQS_DISABLED, align 4
  %31 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %32 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @clear_bit(i32 %30, i32* %34)
  %36 = load %struct.qdio_irq*, %struct.qdio_irq** %7, align 8
  %37 = call i64 @test_nonshared_ind(%struct.qdio_irq* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  br label %49

40:                                               ; preds = %18
  %41 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %42 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %43 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qdio_inbound_q_done(%struct.qdio_q* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %59

49:                                               ; preds = %47, %39
  %50 = load i32, i32* @QDIO_QUEUE_IRQS_DISABLED, align 4
  %51 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %52 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i64 @test_and_set_bit(i32 %50, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %48, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @clear_nonshared_ind(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_stop_polling(%struct.qdio_q*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_nonshared_ind(%struct.qdio_irq*) #1

declare dso_local i32 @qdio_inbound_q_done(%struct.qdio_q*, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
