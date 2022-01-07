; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_sync_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_sync_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_thread = type { i32, i32, i32, i32, i32, %struct.perf_ctx* }
%struct.perf_ctx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@use_dma = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%d: copied %llu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%d: lasted %llu usecs\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%d: %llu MBytes/s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_thread*)* @perf_sync_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sync_test(%struct.perf_thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_thread*, align 8
  %4 = alloca %struct.perf_ctx*, align 8
  store %struct.perf_thread* %0, %struct.perf_thread** %3, align 8
  %5 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %6 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %5, i32 0, i32 5
  %7 = load %struct.perf_ctx*, %struct.perf_ctx** %6, align 8
  store %struct.perf_ctx* %7, %struct.perf_ctx** %4, align 8
  %8 = load i32, i32* @use_dma, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %36

11:                                               ; preds = %1
  %12 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %13 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %16 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %15, i32 0, i32 3
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %11
  %20 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %20, i32 0, i32 1
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp slt i64 %22, 0
  br label %24

24:                                               ; preds = %19, %11
  %25 = phi i1 [ true, %11 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event(i32 %14, i32 %26)
  %28 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %28, i32 0, i32 1
  %30 = call i64 @atomic_read(i32* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EINTR, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %83

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %10
  %37 = call i32 (...) @ktime_get()
  %38 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %39 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ktime_sub(i32 %37, i32 %40)
  %42 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %43 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %49 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %52 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %60 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %63 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ktime_to_us(i32 %64)
  %66 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %65)
  %67 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %72 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %75 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %78 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ktime_to_us(i32 %79)
  %81 = call i32 @div64_u64(i32 %76, i32 %80)
  %82 = call i32 @dev_dbg(i32* %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %36, %32
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @div64_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
