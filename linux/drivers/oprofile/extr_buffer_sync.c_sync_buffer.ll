; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_sync_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_buffer_sync.c_sync_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }
%struct.op_entry = type { i32 }
%struct.op_sample = type { i64, i32 }

@sb_buffer_start = common dso_local global i64 0, align 8
@buffer_mutex = common dso_local global i32 0, align 4
@TRACE_BEGIN = common dso_local global i64 0, align 8
@sb_bt_start = common dso_local global i64 0, align 8
@KERNEL_CTX_SWITCH = common dso_local global i64 0, align 8
@IS_KERNEL = common dso_local global i64 0, align 8
@sb_sample_start = common dso_local global i64 0, align 8
@USER_CTX_SWITCH = common dso_local global i64 0, align 8
@sb_bt_ignore = common dso_local global i64 0, align 8
@oprofile_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.op_entry, align 4
  %14 = alloca %struct.op_sample*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.mm_struct* null, %struct.mm_struct** %3, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %15 = load i64, i64* @sb_buffer_start, align 8
  store i64 %15, i64* %9, align 8
  %16 = call i32 @mutex_lock(i32* @buffer_mutex)
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @add_cpu_switch(i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @op_cpu_buffer_reset(i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @op_cpu_buffer_entries(i32 %21)
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %124, %1
  %24 = load i32, i32* %10, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %127

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = call %struct.op_sample* @op_cpu_buffer_read_entry(%struct.op_entry* %13, i32 %29)
  store %struct.op_sample* %30, %struct.op_sample** %14, align 8
  %31 = load %struct.op_sample*, %struct.op_sample** %14, align 8
  %32 = icmp ne %struct.op_sample* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %127

34:                                               ; preds = %28
  %35 = load %struct.op_sample*, %struct.op_sample** %14, align 8
  %36 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @is_code(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %104

40:                                               ; preds = %34
  %41 = load %struct.op_sample*, %struct.op_sample** %14, align 8
  %42 = getelementptr inbounds %struct.op_sample, %struct.op_sample* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @TRACE_BEGIN, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* @sb_bt_start, align 8
  store i64 %49, i64* %9, align 8
  %50 = call i32 (...) @add_trace_begin()
  br label %51

51:                                               ; preds = %48, %40
  %52 = load i64, i64* %12, align 8
  %53 = load i64, i64* @KERNEL_CTX_SWITCH, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* @IS_KERNEL, align 8
  %59 = and i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %8, align 4
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @sb_buffer_start, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @sb_sample_start, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @IS_KERNEL, align 8
  %69 = and i64 %67, %68
  %70 = call i32 @add_kernel_ctx_switch(i64 %69)
  br label %71

71:                                               ; preds = %66, %51
  %72 = load i64, i64* %12, align 8
  %73 = load i64, i64* @USER_CTX_SWITCH, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = call i64 @op_cpu_buffer_get_data(%struct.op_entry* %13, i64* %5)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i64, i64* %5, align 8
  %81 = inttoptr i64 %80 to %struct.task_struct*
  store %struct.task_struct* %81, %struct.task_struct** %6, align 8
  %82 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  store %struct.mm_struct* %82, %struct.mm_struct** %4, align 8
  %83 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %84 = call i32 @release_mm(%struct.mm_struct* %83)
  %85 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %86 = call %struct.mm_struct* @get_task_mm(%struct.task_struct* %85)
  store %struct.mm_struct* %86, %struct.mm_struct** %3, align 8
  %87 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %88 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %89 = icmp ne %struct.mm_struct* %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %92 = call i64 @get_exec_dcookie(%struct.mm_struct* %91)
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %90, %79
  %94 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %95 = load i64, i64* %7, align 8
  %96 = call i32 @add_user_ctx_switch(%struct.task_struct* %94, i64 %95)
  br label %97

97:                                               ; preds = %93, %76, %71
  %98 = call i64 @op_cpu_buffer_get_size(%struct.op_entry* %13)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %102 = call i32 @add_data(%struct.op_entry* %13, %struct.mm_struct* %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %124

104:                                              ; preds = %34
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* @sb_bt_start, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %124

109:                                              ; preds = %104
  %110 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %111 = load %struct.op_sample*, %struct.op_sample** %14, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i64 @add_sample(%struct.mm_struct* %110, %struct.op_sample* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %124

116:                                              ; preds = %109
  %117 = load i64, i64* %9, align 8
  %118 = load i64, i64* @sb_bt_start, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i64, i64* @sb_bt_ignore, align 8
  store i64 %121, i64* %9, align 8
  %122 = call i32 @atomic_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @oprofile_stats, i32 0, i32 0))
  br label %123

123:                                              ; preds = %120, %116
  br label %124

124:                                              ; preds = %123, %115, %108, %103
  %125 = load i32, i32* %10, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %23

127:                                              ; preds = %33, %23
  %128 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %129 = call i32 @release_mm(%struct.mm_struct* %128)
  %130 = load i32, i32* %2, align 4
  %131 = call i32 @mark_done(i32 %130)
  %132 = call i32 @mutex_unlock(i32* @buffer_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @add_cpu_switch(i32) #1

declare dso_local i32 @op_cpu_buffer_reset(i32) #1

declare dso_local i64 @op_cpu_buffer_entries(i32) #1

declare dso_local %struct.op_sample* @op_cpu_buffer_read_entry(%struct.op_entry*, i32) #1

declare dso_local i64 @is_code(i32) #1

declare dso_local i32 @add_trace_begin(...) #1

declare dso_local i32 @add_kernel_ctx_switch(i64) #1

declare dso_local i64 @op_cpu_buffer_get_data(%struct.op_entry*, i64*) #1

declare dso_local i32 @release_mm(%struct.mm_struct*) #1

declare dso_local %struct.mm_struct* @get_task_mm(%struct.task_struct*) #1

declare dso_local i64 @get_exec_dcookie(%struct.mm_struct*) #1

declare dso_local i32 @add_user_ctx_switch(%struct.task_struct*, i64) #1

declare dso_local i64 @op_cpu_buffer_get_size(%struct.op_entry*) #1

declare dso_local i32 @add_data(%struct.op_entry*, %struct.mm_struct*) #1

declare dso_local i64 @add_sample(%struct.mm_struct*, %struct.op_sample*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mark_done(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
