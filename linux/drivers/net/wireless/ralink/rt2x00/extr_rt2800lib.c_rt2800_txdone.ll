; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_txdone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_txdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.data_queue = type { i32 }
%struct.queue_entry = type { i32, i32 }

@TX_STA_FIFO_PID_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Got TX status for an empty queue %u, dropping\0A\00", align 1
@Q_INDEX_DONE = common dso_local global i32 0, align 4
@ENTRY_OWNER_DEVICE_DATA = common dso_local global i32 0, align 4
@ENTRY_DATA_STATUS_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Data pending for entry %u in queue %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800_txdone(%struct.rt2x00_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.data_queue*, align 8
  %6 = alloca %struct.queue_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %10

10:                                               ; preds = %64, %2
  %11 = load i32, i32* %4, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ugt i32 %11, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = call i64 @kfifo_get(i32* %16, i32* %7)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i1 [ false, %10 ], [ %18, %14 ]
  br i1 %20, label %21, label %74

21:                                               ; preds = %19
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @TX_STA_FIFO_PID_QUEUE, align 4
  %24 = call i32 @rt2x00_get_field32(i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev* %25, i32 %26)
  store %struct.data_queue* %27, %struct.data_queue** %5, align 8
  %28 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %29 = call i32 @rt2x00queue_empty(%struct.data_queue* %28)
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @rt2x00_dbg(%struct.rt2x00_dev* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %74

36:                                               ; preds = %21
  %37 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %38 = load i32, i32* @Q_INDEX_DONE, align 4
  %39 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %37, i32 %38)
  store %struct.queue_entry* %39, %struct.queue_entry** %6, align 8
  %40 = load i32, i32* @ENTRY_OWNER_DEVICE_DATA, align 4
  %41 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %42 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %41, i32 0, i32 1
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @ENTRY_DATA_STATUS_PENDING, align 4
  %47 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %48 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %45, %36
  %53 = phi i1 [ true, %36 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %60 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  br label %74

64:                                               ; preds = %52
  %65 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @rt2800_txdone_entry_check(%struct.queue_entry* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.queue_entry*, %struct.queue_entry** %6, align 8
  %71 = call i32 @rt2800_drv_get_txwi(%struct.queue_entry* %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @rt2800_txdone_entry(%struct.queue_entry* %68, i32 %69, i32 %71, i32 %72)
  br label %10

74:                                               ; preds = %57, %32, %19
  ret void
}

declare dso_local i64 @kfifo_get(i32*, i32*) #1

declare dso_local i32 @rt2x00_get_field32(i32, i32) #1

declare dso_local %struct.data_queue* @rt2x00queue_get_tx_queue(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i32 @rt2x00_dbg(%struct.rt2x00_dev*, i8*, i32) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, i32, i32) #1

declare dso_local i32 @rt2800_txdone_entry_check(%struct.queue_entry*, i32) #1

declare dso_local i32 @rt2800_txdone_entry(%struct.queue_entry*, i32, i32, i32) #1

declare dso_local i32 @rt2800_drv_get_txwi(%struct.queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
