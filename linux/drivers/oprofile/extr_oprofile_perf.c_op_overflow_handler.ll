; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_op_overflow_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofile_perf.c_op_overflow_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }

@num_counters = common dso_local global i32 0, align 4
@perf_events = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"oprofile: ignoring spurious overflow on cpu %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)* @op_overflow_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op_overflow_handler(%struct.perf_event* %0, %struct.perf_sample_data* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %26, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @num_counters, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load i32, i32* @perf_events, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.perf_event** @per_cpu(i32 %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %17, i64 %19
  %21 = load %struct.perf_event*, %struct.perf_event** %20, align 8
  %22 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %23 = icmp eq %struct.perf_event* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %10

29:                                               ; preds = %24, %10
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @num_counters, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @oprofile_add_sample(%struct.pt_regs* %34, i32 %35)
  br label %40

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pr_warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %33
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.perf_event** @per_cpu(i32, i32) #1

declare dso_local i32 @oprofile_add_sample(%struct.pt_regs*, i32) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
