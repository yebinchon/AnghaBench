; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800mmio_flush_queue(%struct.data_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.data_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %9 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %8, i32 0, i32 1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %9, align 8
  store %struct.rt2x00_dev* %10, %struct.rt2x00_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %12 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %16 [
    i32 129, label %14
    i32 130, label %14
    i32 132, label %14
    i32 131, label %14
    i32 128, label %15
  ]

14:                                               ; preds = %2, %2, %2, %2
  store i32 1, i32* %6, align 4
  br label %17

15:                                               ; preds = %2
  br label %17

16:                                               ; preds = %2
  br label %41

17:                                               ; preds = %15, %14
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %19, 5
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.data_queue*, %struct.data_queue** %3, align 8
  %23 = call i64 @rt2x00queue_empty(%struct.data_queue* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %41

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 0
  %35 = call i32 @queue_work(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %29, %26
  %37 = call i32 @msleep(i32 50)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %18

41:                                               ; preds = %16, %25, %18
  ret void
}

declare dso_local i64 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
