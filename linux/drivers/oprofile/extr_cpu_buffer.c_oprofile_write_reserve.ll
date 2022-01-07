; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c_oprofile_write_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_cpu_buffer.c_oprofile_write_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op_entry = type { i32* }
%struct.pt_regs = type { i32 }
%struct.op_sample = type { i64, i32 }
%struct.oprofile_cpu_buffer = type { i32, i32 }

@op_cpu_buffer = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@ESCAPE_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @oprofile_write_reserve(%struct.op_entry* %0, %struct.pt_regs* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.op_entry*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.op_sample*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.oprofile_cpu_buffer*, align 8
  store %struct.op_entry* %0, %struct.op_entry** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %15 = call i32 @user_mode(%struct.pt_regs* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %12, align 4
  %19 = call %struct.oprofile_cpu_buffer* @this_cpu_ptr(i32* @op_cpu_buffer)
  store %struct.oprofile_cpu_buffer* %19, %struct.oprofile_cpu_buffer** %13, align 8
  %20 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %13, align 8
  %21 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %13, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @current, align 4
  %27 = call i64 @op_add_code(%struct.oprofile_cpu_buffer* %24, i32 0, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %5
  br label %51

30:                                               ; preds = %5
  %31 = load %struct.op_entry*, %struct.op_entry** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 2
  %34 = call %struct.op_sample* @op_cpu_buffer_write_reserve(%struct.op_entry* %31, i32 %33)
  store %struct.op_sample* %34, %struct.op_sample** %11, align 8
  %35 = load %struct.op_sample*, %struct.op_sample** %11, align 8
  %36 = icmp ne %struct.op_sample* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %51

38:                                               ; preds = %30
  %39 = load i32, i32* @ESCAPE_CODE, align 4
  %40 = load %struct.op_sample*, %struct.op_sample** %11, align 8
  %41 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.op_sample*, %struct.op_sample** %11, align 8
  %43 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.op_entry*, %struct.op_entry** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @op_cpu_buffer_add_data(%struct.op_entry* %44, i64 %46)
  %48 = load %struct.op_entry*, %struct.op_entry** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @op_cpu_buffer_add_data(%struct.op_entry* %48, i64 %49)
  br label %58

51:                                               ; preds = %37, %29
  %52 = load %struct.op_entry*, %struct.op_entry** %6, align 8
  %53 = getelementptr inbounds %struct.op_entry, %struct.op_entry* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  %54 = load %struct.oprofile_cpu_buffer*, %struct.oprofile_cpu_buffer** %13, align 8
  %55 = getelementptr inbounds %struct.oprofile_cpu_buffer, %struct.oprofile_cpu_buffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %38
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local %struct.oprofile_cpu_buffer* @this_cpu_ptr(i32*) #1

declare dso_local i64 @op_add_code(%struct.oprofile_cpu_buffer*, i32, i32, i32) #1

declare dso_local %struct.op_sample* @op_cpu_buffer_write_reserve(%struct.op_entry*, i32) #1

declare dso_local i32 @op_cpu_buffer_add_data(%struct.op_entry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
