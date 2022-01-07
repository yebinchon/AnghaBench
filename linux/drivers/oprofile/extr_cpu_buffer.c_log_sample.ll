; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c_log_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c_log_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.oprofile_cpu_buffer = type { i32, i32, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@ESCAPE_CODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oprofile_cpu_buffer*, i64, i64, i32, i64, %struct.task_struct*)* @log_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_sample(%struct.oprofile_cpu_buffer* %0, i64 %1, i64 %2, i32 %3, i64 %4, %struct.task_struct* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.oprofile_cpu_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.task_struct*, align 8
  %14 = alloca %struct.task_struct*, align 8
  store %struct.oprofile_cpu_buffer* %0, %struct.oprofile_cpu_buffer** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.task_struct* %5, %struct.task_struct** %13, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load %struct.task_struct*, %struct.task_struct** %13, align 8
  br label %21

19:                                               ; preds = %6
  %20 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi %struct.task_struct* [ %18, %17 ], [ %20, %19 ]
  store %struct.task_struct* %22, %struct.task_struct** %14, align 8
  %23 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %8, align 8
  %24 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @ESCAPE_CODE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %8, align 8
  %32 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  store i32 0, i32* %7, align 4
  br label %56

35:                                               ; preds = %21
  %36 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %8, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.task_struct*, %struct.task_struct** %14, align 8
  %40 = call i64 @op_add_code(%struct.oprofile_cpu_buffer* %36, i64 %37, i32 %38, %struct.task_struct* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %51

43:                                               ; preds = %35
  %44 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = call i64 @op_add_sample(%struct.oprofile_cpu_buffer* %44, i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %51

50:                                               ; preds = %43
  store i32 1, i32* %7, align 4
  br label %56

51:                                               ; preds = %49, %42
  %52 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %8, align 8
  %53 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %50, %30
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i64 @op_add_code(%struct.oprofile_cpu_buffer*, i64, i32, %struct.task_struct*) #1

declare dso_local i64 @op_add_sample(%struct.oprofile_cpu_buffer*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
