; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue = type { i64, i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cw1200_queue_deinit(%struct.cw1200_queue* %0) #0 {
  %2 = alloca %struct.cw1200_queue*, align 8
  store %struct.cw1200_queue* %0, %struct.cw1200_queue** %2, align 8
  %3 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %4 = call i32 @cw1200_queue_clear(%struct.cw1200_queue* %3)
  %5 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %6 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %5, i32 0, i32 4
  %7 = call i32 @del_timer_sync(i32* %6)
  %8 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %9 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %8, i32 0, i32 3
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %12 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @kfree(i32* %13)
  %15 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %16 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @kfree(i32* %17)
  %19 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %20 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %22 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.cw1200_queue*, %struct.cw1200_queue** %2, align 8
  %24 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  ret void
}

declare dso_local i32 @cw1200_queue_clear(%struct.cw1200_queue*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
