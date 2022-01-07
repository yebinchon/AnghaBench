; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_op_perf_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_op_perf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32 }

@num_counters = common dso_local global i32 0, align 4
@counter_config = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_TYPE_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @op_perf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_perf_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event_attr*, align 8
  store i32 20, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %41, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @num_counters, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %44

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store %struct.perf_event_attr* %13, %struct.perf_event_attr** %3, align 8
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @memset(%struct.perf_event_attr* %14, i32 0, i32 %15)
  %17 = load i32, i32* @PERF_TYPE_RAW, align 4
  %18 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.perf_event_attr*, %struct.perf_event_attr** %3, align 8
  %40 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %8
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %4

44:                                               ; preds = %4
  ret void
}

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
