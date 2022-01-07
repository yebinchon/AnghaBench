; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_thread_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/test/extr_ntb_perf.c_perf_thread_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.perf_thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @perf_thread_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_thread_work(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.perf_thread*, align 8
  %4 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %5 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %6 = call %struct.perf_thread* @to_thread_work(%struct.work_struct* %5)
  store %struct.perf_thread* %6, %struct.perf_thread** %3, align 8
  %7 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %8 = call i32 @perf_init_test(%struct.perf_thread* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %14 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %32

15:                                               ; preds = %1
  %16 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %17 = call i32 @perf_run_test(%struct.perf_thread* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %23 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %29

24:                                               ; preds = %15
  %25 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %26 = call i32 @perf_sync_test(%struct.perf_thread* %25)
  %27 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %28 = getelementptr inbounds %struct.perf_thread, %struct.perf_thread* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load %struct.perf_thread*, %struct.perf_thread** %3, align 8
  %31 = call i32 @perf_clear_test(%struct.perf_thread* %30)
  br label %32

32:                                               ; preds = %29, %11
  ret void
}

declare dso_local %struct.perf_thread* @to_thread_work(%struct.work_struct*) #1

declare dso_local i32 @perf_init_test(%struct.perf_thread*) #1

declare dso_local i32 @perf_run_test(%struct.perf_thread*) #1

declare dso_local i32 @perf_sync_test(%struct.perf_thread*) #1

declare dso_local i32 @perf_clear_test(%struct.perf_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
