; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_op_create_counter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_op_create_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.perf_event = type { i64 }

@counter_config = common dso_local global %struct.TYPE_2__* null, align 8
@perf_events = common dso_local global i32 0, align 4
@op_overflow_handler = common dso_local global i32 0, align 4
@PERF_EVENT_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"oprofile: failed to enable event %d on CPU %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @op_create_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_create_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_event*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @perf_events, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.perf_event** @per_cpu(i32 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %17, i64 %19
  %21 = load %struct.perf_event*, %struct.perf_event** %20, align 8
  %22 = icmp ne %struct.perf_event* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %2
  store i32 0, i32* %3, align 4
  br label %61

24:                                               ; preds = %14
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @counter_config, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @op_overflow_handler, align 4
  %32 = call %struct.perf_event* @perf_event_create_kernel_counter(i32* %29, i32 %30, i32* null, i32 %31, i32* null)
  store %struct.perf_event* %32, %struct.perf_event** %6, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %34 = call i64 @IS_ERR(%struct.perf_event* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.perf_event* %37)
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %24
  %40 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %41 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PERF_EVENT_STATE_ACTIVE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %47 = call i32 @perf_event_release_kernel(%struct.perf_event* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @pr_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %39
  %54 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %55 = load i32, i32* @perf_events, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.perf_event** @per_cpu(i32 %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %57, i64 %59
  store %struct.perf_event* %54, %struct.perf_event** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %45, %36, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.perf_event** @per_cpu(i32, i32) #1

declare dso_local %struct.perf_event* @perf_event_create_kernel_counter(i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

declare dso_local i32 @perf_event_release_kernel(%struct.perf_event*) #1

declare dso_local i32 @pr_warning(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
