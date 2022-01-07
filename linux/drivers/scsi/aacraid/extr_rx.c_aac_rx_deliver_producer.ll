; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rx.c_aac_rx_deliver_producer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rx.c_aac_rx_deliver_producer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.fib = type { i32, %struct.aac_dev* }
%struct.aac_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.aac_queue* }
%struct.aac_queue = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@AdapNormCmdQueue = common dso_local global i64 0, align 8
@aac_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_rx_deliver_producer(%struct.fib* %0) #0 {
  %2 = alloca %struct.fib*, align 8
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.aac_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fib* %0, %struct.fib** %2, align 8
  %7 = load %struct.fib*, %struct.fib** %2, align 8
  %8 = getelementptr inbounds %struct.fib, %struct.fib* %7, i32 0, i32 1
  %9 = load %struct.aac_dev*, %struct.aac_dev** %8, align 8
  store %struct.aac_dev* %9, %struct.aac_dev** %3, align 8
  %10 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %11 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.aac_queue*, %struct.aac_queue** %13, align 8
  %15 = load i64, i64* @AdapNormCmdQueue, align 8
  %16 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %14, i64 %15
  store %struct.aac_queue* %16, %struct.aac_queue** %4, align 8
  store i64 0, i64* %6, align 8
  %17 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %18 = load i64, i64* @AdapNormCmdQueue, align 8
  %19 = load %struct.fib*, %struct.fib** %2, align 8
  %20 = getelementptr inbounds %struct.fib, %struct.fib* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fib*, %struct.fib** %2, align 8
  %23 = call i32 @aac_queue_get(%struct.aac_dev* %17, i64* %5, i64 %18, i32 %21, i32 1, %struct.fib* %22, i64* %6)
  %24 = load %struct.aac_queue*, %struct.aac_queue** %4, align 8
  %25 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %24, i32 0, i32 1
  %26 = call i32 @atomic_inc(i32* %25)
  %27 = load i64, i64* %5, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @cpu_to_le32(i64 %28)
  %30 = load %struct.aac_queue*, %struct.aac_queue** %4, align 8
  %31 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32 %29, i32* %33, align 4
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @aac_config, i32 0, i32 0), align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %1
  %39 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %40 = load i64, i64* @AdapNormCmdQueue, align 8
  %41 = call i32 @aac_adapter_notify(%struct.aac_dev* %39, i64 %40)
  br label %42

42:                                               ; preds = %38, %1
  ret i32 0
}

declare dso_local i32 @aac_queue_get(%struct.aac_dev*, i64*, i64, i32, i32, %struct.fib*, i64*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @aac_adapter_notify(%struct.aac_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
