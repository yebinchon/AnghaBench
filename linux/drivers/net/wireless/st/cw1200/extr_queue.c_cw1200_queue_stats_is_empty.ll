; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_stats_is_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_stats_is_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue_stats = type { i64, i32, i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_queue_stats_is_empty(%struct.cw1200_queue_stats* %0, i32 %1) #0 {
  %3 = alloca %struct.cw1200_queue_stats*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cw1200_queue_stats* %0, %struct.cw1200_queue_stats** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %7 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %3, align 8
  %8 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %7, i32 0, i32 2
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %3, align 8
  %14 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %5, align 4
  br label %47

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %43, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %3, align 8
  %22 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @BIT(i32 %27)
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %46

41:                                               ; preds = %31
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %19

46:                                               ; preds = %40, %19
  br label %47

47:                                               ; preds = %46, %12
  %48 = load %struct.cw1200_queue_stats*, %struct.cw1200_queue_stats** %3, align 8
  %49 = getelementptr inbounds %struct.cw1200_queue_stats, %struct.cw1200_queue_stats* %48, i32 0, i32 2
  %50 = call i32 @spin_unlock_bh(i32* %49)
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
