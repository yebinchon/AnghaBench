; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_stats_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_stats_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue_stats = type { i64, i32, i32, i32, %struct.cw1200_common*, i32 }
%struct.cw1200_common = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_queue_stats_init(%struct.cw1200_queue_stats* %0, i64 %1, i32 %2, %struct.cw1200_common* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cw1200_queue_stats*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cw1200_common*, align 8
  store %struct.cw1200_queue_stats* %0, %struct.cw1200_queue_stats** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.cw1200_common* %3, %struct.cw1200_common** %9, align 8
  %10 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %11 = call i32 @memset(%struct.cw1200_queue_stats* %10, i32 0, i32 40)
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %14 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %17 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 8
  %18 = load %struct.cw1200_common*, %struct.cw1200_common** %9, align 8
  %19 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %20 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %19, i32 0, i32 4
  store %struct.cw1200_common* %18, %struct.cw1200_common** %20, align 8
  %21 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %22 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %21, i32 0, i32 3
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %25 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %24, i32 0, i32 2
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kcalloc(i64 %27, i32 4, i32 %28)
  %30 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %31 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %6, align 8
  %33 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.cw1200_queue_stats*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kcalloc(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
