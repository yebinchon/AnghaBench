; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_entry_txstatus_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_entry_txstatus_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.queue_entry = type { %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@ENTRY_DATA_STATUS_PENDING = common dso_local global i32 0, align 4
@DEVICE_STATE_FLUSHING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TX status timeout for entry %d in queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.queue_entry*)* @rt2800_entry_txstatus_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2800_entry_txstatus_timeout(%struct.rt2x00_dev* %0, %struct.queue_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.queue_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.queue_entry* %1, %struct.queue_entry** %5, align 8
  %8 = load i32, i32* @ENTRY_DATA_STATUS_PENDING, align 4
  %9 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %10 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %9, i32 0, i32 3
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load i32, i32* @DEVICE_STATE_FLUSHING, align 4
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i64 @msecs_to_jiffies(i32 50)
  store i64 %21, i64* %7, align 8
  br label %24

22:                                               ; preds = %14
  %23 = call i64 @msecs_to_jiffies(i32 2000)
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %27 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @time_after(i32 %25, i64 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %24
  %36 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %37 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %42 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.queue_entry*, %struct.queue_entry** %5, align 8
  %45 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rt2x00_dbg(i32 %40, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %48)
  br label %50

50:                                               ; preds = %35, %24
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rt2x00_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
