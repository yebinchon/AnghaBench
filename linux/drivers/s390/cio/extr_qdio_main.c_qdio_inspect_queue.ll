; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_inspect_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_inspect_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { %struct.qdio_q**, %struct.qdio_q** }
%struct.qdio_q = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_inspect_queue(%struct.ccw_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.qdio_irq*, align 8
  %13 = alloca %struct.qdio_q*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.ccw_device*, %struct.ccw_device** %7, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.qdio_irq*, %struct.qdio_irq** %17, align 8
  store %struct.qdio_irq* %18, %struct.qdio_irq** %12, align 8
  %19 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %20 = icmp ne %struct.qdio_irq* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %56

24:                                               ; preds = %5
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %29 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %28, i32 0, i32 1
  %30 = load %struct.qdio_q**, %struct.qdio_q*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %30, i64 %32
  %34 = load %struct.qdio_q*, %struct.qdio_q** %33, align 8
  br label %43

35:                                               ; preds = %24
  %36 = load %struct.qdio_irq*, %struct.qdio_irq** %12, align 8
  %37 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %36, i32 0, i32 0
  %38 = load %struct.qdio_q**, %struct.qdio_q*** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.qdio_q*, %struct.qdio_q** %38, i64 %40
  %42 = load %struct.qdio_q*, %struct.qdio_q** %41, align 8
  br label %43

43:                                               ; preds = %35, %27
  %44 = phi %struct.qdio_q* [ %34, %27 ], [ %42, %35 ]
  store %struct.qdio_q* %44, %struct.qdio_q** %13, align 8
  %45 = load %struct.qdio_q*, %struct.qdio_q** %13, align 8
  %46 = call i64 @need_siga_sync(%struct.qdio_q* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.qdio_q*, %struct.qdio_q** %13, align 8
  %50 = call i32 @qdio_siga_sync_q(%struct.qdio_q* %49)
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.qdio_q*, %struct.qdio_q** %13, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @__qdio_inspect_queue(%struct.qdio_q* %52, i32* %53, i32* %54)
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %21
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i64 @need_siga_sync(%struct.qdio_q*) #1

declare dso_local i32 @qdio_siga_sync_q(%struct.qdio_q*) #1

declare dso_local i32 @__qdio_inspect_queue(%struct.qdio_q*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
