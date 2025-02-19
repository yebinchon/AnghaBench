; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_init_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_ctx = type { %struct.perf_thread*, i32, i32*, i32*, i32 }
%struct.perf_thread = type { i32, i32, i32, i32, %struct.perf_ctx* }

@DEF_THREADS_CNT = common dso_local global i32 0, align 4
@MAX_THREADS_CNT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@perf_thread_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_ctx*)* @perf_init_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_init_threads(%struct.perf_ctx* %0) #0 {
  %2 = alloca %struct.perf_ctx*, align 8
  %3 = alloca %struct.perf_thread*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_ctx* %0, %struct.perf_ctx** %2, align 8
  %5 = load i32, i32* @DEF_THREADS_CNT, align 4
  %6 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %12, i32 0, i32 3
  store i32* %11, i32** %13, align 8
  %14 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %14, i32 0, i32 1
  %16 = call i32 @init_waitqueue_head(i32* %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %45, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAX_THREADS_CNT, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %22, i32 0, i32 0
  %24 = load %struct.perf_thread*, %struct.perf_thread** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %24, i64 %26
  store %struct.perf_thread* %27, %struct.perf_thread** %3, align 8
  %28 = load %struct.perf_ctx*, %struct.perf_ctx** %2, align 8
  %29 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %30 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %29, i32 0, i32 4
  store %struct.perf_ctx* %28, %struct.perf_ctx** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %33 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %37 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %39 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %38, i32 0, i32 2
  %40 = call i32 @init_waitqueue_head(i32* %39)
  %41 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %42 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %41, i32 0, i32 1
  %43 = load i32, i32* @perf_thread_work, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %17

48:                                               ; preds = %17
  ret void
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
