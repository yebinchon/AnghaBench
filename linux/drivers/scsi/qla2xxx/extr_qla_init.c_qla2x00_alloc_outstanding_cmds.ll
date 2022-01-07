; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_alloc_outstanding_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_alloc_outstanding_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64, i64 }
%struct.req_que = type { i64, i8* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@DEFAULT_OUTSTANDING_COMMANDS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@MIN_OUTSTANDING_COMMANDS = common dso_local global i64 0, align 8
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Failed to allocate memory for outstanding_cmds for req_que %p.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_alloc_outstanding_cmds(%struct.qla_hw_data* %0, %struct.req_que* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.req_que*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %4, align 8
  store %struct.req_que* %1, %struct.req_que** %5, align 8
  %6 = load %struct.req_que*, %struct.req_que** %5, align 8
  %7 = getelementptr inbounds %struct.req_que, %struct.req_que* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %11, i32* %3, align 4
  br label %78

12:                                               ; preds = %2
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %14 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @DEFAULT_OUTSTANDING_COMMANDS, align 8
  %18 = load %struct.req_que*, %struct.req_que** %5, align 8
  %19 = getelementptr inbounds %struct.req_que, %struct.req_que* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %41

20:                                               ; preds = %12
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.req_que*, %struct.req_que** %5, align 8
  %33 = getelementptr inbounds %struct.req_que, %struct.req_que* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.req_que*, %struct.req_que** %5, align 8
  %39 = getelementptr inbounds %struct.req_que, %struct.req_que* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.req_que*, %struct.req_que** %5, align 8
  %43 = getelementptr inbounds %struct.req_que, %struct.req_que* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kcalloc(i64 %44, i32 8, i32 %45)
  %47 = load %struct.req_que*, %struct.req_que** %5, align 8
  %48 = getelementptr inbounds %struct.req_que, %struct.req_que* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.req_que*, %struct.req_que** %5, align 8
  %50 = getelementptr inbounds %struct.req_que, %struct.req_que* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %41
  %54 = load i64, i64* @MIN_OUTSTANDING_COMMANDS, align 8
  %55 = load %struct.req_que*, %struct.req_que** %5, align 8
  %56 = getelementptr inbounds %struct.req_que, %struct.req_que* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.req_que*, %struct.req_que** %5, align 8
  %58 = getelementptr inbounds %struct.req_que, %struct.req_que* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kcalloc(i64 %59, i32 8, i32 %60)
  %62 = load %struct.req_que*, %struct.req_que** %5, align 8
  %63 = getelementptr inbounds %struct.req_que, %struct.req_que* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.req_que*, %struct.req_que** %5, align 8
  %65 = getelementptr inbounds %struct.req_que, %struct.req_que* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %75, label %68

68:                                               ; preds = %53
  %69 = load i32, i32* @ql_log_fatal, align 4
  %70 = load %struct.req_que*, %struct.req_que** %5, align 8
  %71 = call i32 @ql_log(i32 %69, i32* null, i32 294, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), %struct.req_que* %70)
  %72 = load %struct.req_que*, %struct.req_que** %5, align 8
  %73 = getelementptr inbounds %struct.req_que, %struct.req_que* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %74, i32* %3, align 4
  br label %78

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75, %41
  %77 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %68, %10
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*, %struct.req_que*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
