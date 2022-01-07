; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c_oprofile_add_trace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c_oprofile_add_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oprofile_cpu_buffer = type { i32, i64 }

@op_cpu_buffer = common dso_local global i32 0, align 4
@ESCAPE_CODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oprofile_add_trace(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.oprofile_cpu_buffer*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call %struct.oprofile_cpu_buffer* @this_cpu_ptr(i32* @op_cpu_buffer)
  store %struct.oprofile_cpu_buffer* %4, %struct.oprofile_cpu_buffer** %3, align 8
  %5 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = load i64, i64* @ESCAPE_CODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %22

15:                                               ; preds = %10
  %16 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %3, align 8
  %17 = load i64, i64* %2, align 8
  %18 = call i64 @op_add_sample(%struct.oprofile_cpu_buffer* %16, i64 %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %22

21:                                               ; preds = %15
  br label %29

22:                                               ; preds = %20, %14
  %23 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %22, %21, %9
  ret void
}

declare dso_local %struct.oprofile_cpu_buffer* @this_cpu_ptr(i32*) #1

declare dso_local i64 @op_add_sample(%struct.oprofile_cpu_buffer*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
