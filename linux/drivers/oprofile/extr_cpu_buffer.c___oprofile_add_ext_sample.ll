; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c___oprofile_add_ext_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c___oprofile_add_ext_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pt_regs*, i64)* }
%struct.pt_regs = type { i32 }
%struct.task_struct = type { i32 }
%struct.oprofile_cpu_buffer = type { i32 }

@op_cpu_buffer = common dso_local global i32 0, align 4
@oprofile_backtrace_depth = common dso_local global i64 0, align 8
@oprofile_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.pt_regs*, i64, i32, %struct.task_struct*)* @__oprofile_add_ext_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__oprofile_add_ext_sample(i64 %0, %struct.pt_regs* %1, i64 %2, i32 %3, %struct.task_struct* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  %11 = alloca %struct.oprofile_cpu_buffer*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.task_struct* %4, %struct.task_struct** %10, align 8
  %13 = call %struct.oprofile_cpu_buffer* @this_cpu_ptr(i32* @op_cpu_buffer)
  store %struct.oprofile_cpu_buffer* %13, %struct.oprofile_cpu_buffer** %11, align 8
  %14 = load i64, i64* @oprofile_backtrace_depth, align 8
  store i64 %14, i64* %12, align 8
  %15 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %11, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %21 = call i32 @log_sample(%struct.oprofile_cpu_buffer* %15, i64 %16, i64 %17, i32 %18, i64 %19, %struct.task_struct* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %37

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  br label %37

28:                                               ; preds = %24
  %29 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %11, align 8
  %30 = call i32 @oprofile_begin_trace(%struct.oprofile_cpu_buffer* %29)
  %31 = load i32 (%struct.pt_regs*, i64)*, i32 (%struct.pt_regs*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oprofile_ops, i32 0, i32 0), align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 %31(%struct.pt_regs* %32, i64 %33)
  %35 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %11, align 8
  %36 = call i32 @oprofile_end_trace(%struct.oprofile_cpu_buffer* %35)
  br label %37

37:                                               ; preds = %28, %27, %23
  ret void
}

declare dso_local %struct.oprofile_cpu_buffer* @this_cpu_ptr(i32*) #1

declare dso_local i32 @log_sample(%struct.oprofile_cpu_buffer*, i64, i64, i32, i64, %struct.task_struct*) #1

declare dso_local i32 @oprofile_begin_trace(%struct.oprofile_cpu_buffer*) #1

declare dso_local i32 @oprofile_end_trace(%struct.oprofile_cpu_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
