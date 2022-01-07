; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.data_queue*)* }
%struct.data_queue = type { i32, i32, i32, i32, i32, i32, i64, %struct.rt2x00_dev*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.data_queue*, i32)* @rt2x00queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_init(%struct.rt2x00_dev* %0, %struct.data_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.data_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.data_queue* %1, %struct.data_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %8 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %7, i32 0, i32 10
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %11 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %10, i32 0, i32 9
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %14 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %13, i32 0, i32 8
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %17 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %18 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %17, i32 0, i32 7
  store %struct.rt2x00_dev* %16, %struct.rt2x00_dev** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %21 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %23 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %25 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %24, i32 0, i32 1
  store i32 2, i32* %25, align 4
  %26 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %27 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %26, i32 0, i32 2
  store i32 5, i32* %27, align 8
  %28 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %29 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %28, i32 0, i32 3
  store i32 10, i32* %29, align 4
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.data_queue*)*, i32 (%struct.data_queue*)** %33, align 8
  %35 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %36 = call i32 %34(%struct.data_queue* %35)
  %37 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %38 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @DIV_ROUND_UP(i32 %39, i32 10)
  %41 = load %struct.data_queue*, %struct.data_queue** %5, align 8
  %42 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
