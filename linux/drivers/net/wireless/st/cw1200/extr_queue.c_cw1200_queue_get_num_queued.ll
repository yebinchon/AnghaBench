; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_get_num_queued.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_queue.c_cw1200_queue_get_num_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_queue = type { i64, i64, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cw1200_queue_get_num_queued(%struct.cw1200_queue* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cw1200_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.cw1200_queue* %0, %struct.cw1200_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cw1200_queue*, %struct.cw1200_queue** %4, align 8
  %11 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %10, i32 0, i32 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %65

18:                                               ; preds = %2
  %19 = load %struct.cw1200_queue*, %struct.cw1200_queue** %4, align 8
  %20 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.cw1200_queue*, %struct.cw1200_queue** %4, align 8
  %26 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cw1200_queue*, %struct.cw1200_queue** %4, align 8
  %29 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  store i64 %31, i64* %6, align 8
  br label %60

32:                                               ; preds = %18
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %33

33:                                               ; preds = %54, %32
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.cw1200_queue*, %struct.cw1200_queue** %4, align 8
  %45 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %44, i32 0, i32 3
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %43, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = shl i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %33

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %24
  %61 = load %struct.cw1200_queue*, %struct.cw1200_queue** %4, align 8
  %62 = getelementptr inbounds %struct.cw1200_queue, %struct.cw1200_queue* %61, i32 0, i32 2
  %63 = call i32 @spin_unlock_bh(i32* %62)
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %60, %17
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
