; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_qdio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qdio_irq* }
%struct.qdio_irq = type { i32, i32* }
%struct.subchannel_id = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"qfree:%4x\00", align 1
@DBF_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"dbf abandoned\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdio_free(%struct.ccw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca %struct.qdio_irq*, align 8
  %5 = alloca %struct.subchannel_id, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  %6 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %7 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.qdio_irq*, %struct.qdio_irq** %9, align 8
  store %struct.qdio_irq* %10, %struct.qdio_irq** %4, align 8
  %11 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %12 = icmp ne %struct.qdio_irq* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %18 = call i32 @ccw_device_get_schid(%struct.ccw_device* %17, %struct.subchannel_id* %5)
  %19 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DBF_EVENT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @DBF_ERR, align 4
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %24 = call i32 @DBF_DEV_EVENT(i32 %22, %struct.qdio_irq* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %26 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %29 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  %30 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %31 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.qdio_irq* null, %struct.qdio_irq** %33, align 8
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %35 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.qdio_irq*, %struct.qdio_irq** %4, align 8
  %38 = call i32 @qdio_release_memory(%struct.qdio_irq* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %16, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @ccw_device_get_schid(%struct.ccw_device*, %struct.subchannel_id*) #1

declare dso_local i32 @DBF_EVENT(i8*, i32) #1

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.qdio_irq*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qdio_release_memory(%struct.qdio_irq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
