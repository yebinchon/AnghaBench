; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_submit_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_submit_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_peer = type { i32, %struct.perf_ctx* }
%struct.perf_ctx = type { i32, i32, i32, i32, %struct.perf_thread*, %struct.perf_peer* }
%struct.perf_thread = type { i32, i32, i64, i32 }

@PERF_STS_DONE = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MAX_THREADS_CNT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@perf_wq = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_peer*)* @perf_submit_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_submit_test(%struct.perf_peer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_peer*, align 8
  %4 = alloca %struct.perf_ctx*, align 8
  %5 = alloca %struct.perf_thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_peer* %0, %struct.perf_peer** %3, align 8
  %8 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %9 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %8, i32 0, i32 1
  %10 = load %struct.perf_ctx*, %struct.perf_ctx** %9, align 8
  store %struct.perf_ctx* %10, %struct.perf_ctx** %4, align 8
  %11 = load i32, i32* @PERF_STS_DONE, align 4
  %12 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %13 = getelementptr inbounds %struct.perf_peer, %struct.perf_peer* %12, i32 0, i32 0
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOLINK, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %95

19:                                               ; preds = %1
  %20 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %20, i32 0, i32 1
  %22 = call i64 @test_and_set_bit_lock(i32 0, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %95

27:                                               ; preds = %19
  %28 = load %struct.perf_peer*, %struct.perf_peer** %3, align 8
  %29 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %29, i32 0, i32 5
  store %struct.perf_peer* %28, %struct.perf_peer** %30, align 8
  %31 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %31, i32 0, i32 2
  %33 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @atomic_set(i32* %32, i32 %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %68, %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MAX_THREADS_CNT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %42, i32 0, i32 4
  %44 = load %struct.perf_thread*, %struct.perf_thread** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %44, i64 %46
  store %struct.perf_thread* %47, %struct.perf_thread** %5, align 8
  %48 = load i32, i32* @ENODATA, align 4
  %49 = sub nsw i32 0, %48
  %50 = load %struct.perf_thread*, %struct.perf_thread** %5, align 8
  %51 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.perf_thread*, %struct.perf_thread** %5, align 8
  %53 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = call i32 @ktime_set(i32 0, i32 0)
  %55 = load %struct.perf_thread*, %struct.perf_thread** %5, align 8
  %56 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %41
  %63 = load i32, i32* @perf_wq, align 4
  %64 = load %struct.perf_thread*, %struct.perf_thread** %5, align 8
  %65 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %64, i32 0, i32 0
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %62, %41
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %37

71:                                               ; preds = %37
  %72 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %76 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %75, i32 0, i32 2
  %77 = call i64 @atomic_read(i32* %76)
  %78 = icmp sle i64 %77, 0
  %79 = zext i1 %78 to i32
  %80 = call i32 @wait_event_interruptible(i32 %74, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @ERESTARTSYS, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %71
  %86 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %87 = call i32 @perf_terminate_test(%struct.perf_ctx* %86)
  %88 = load i32, i32* @EINTR, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %85, %71
  %91 = load %struct.perf_ctx*, %struct.perf_ctx** %4, align 8
  %92 = getelementptr inbounds %struct.perf_ctx, %struct.perf_ctx* %91, i32 0, i32 1
  %93 = call i32 @clear_bit_unlock(i32 0, i32* %92)
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %24, %16
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @perf_terminate_test(%struct.perf_ctx*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
