; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_clear_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_clear_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.queue_entry*)* }
%struct.queue_entry = type { %struct.TYPE_7__*, i64, i32* }
%struct.TYPE_7__ = type { i32 }

@Q_INDEX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.queue_entry*)* @rt2x00lib_clear_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00lib_clear_entry(%struct.rt2x00_dev* %0, %struct.queue_entry* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.queue_entry* %1, %struct.queue_entry** %4, align 8
  %5 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %6 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %5, i32 0, i32 2
  store i32* null, i32** %6, align 8
  %7 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %8 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (%struct.queue_entry*)*, i32 (%struct.queue_entry*)** %14, align 8
  %16 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %17 = call i32 %15(%struct.queue_entry* %16)
  %18 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %19 = load i32, i32* @Q_INDEX_DONE, align 4
  %20 = call i32 @rt2x00queue_index_inc(%struct.queue_entry* %18, i32 %19)
  %21 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %22 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %27 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i32 @rt2x00queue_threshold(%struct.TYPE_7__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %2
  %32 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %33 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i32 @rt2x00queue_unpause_queue(%struct.TYPE_7__* %34)
  br label %36

36:                                               ; preds = %31, %2
  %37 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %38 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  ret void
}

declare dso_local i32 @rt2x00queue_index_inc(%struct.queue_entry*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @rt2x00queue_threshold(%struct.TYPE_7__*) #1

declare dso_local i32 @rt2x00queue_unpause_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
