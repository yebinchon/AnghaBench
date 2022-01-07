; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_set_rw_exp_data_acked_and_cont_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_set_rw_exp_data_acked_and_cont_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e4_iscsi_task_context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.iscsi_conn_params = type { i64, i64, i32, i32 }

@USTORM_ISCSI_TASK_ST_CTX_AHS_EXIST = common dso_local global i32 0, align 4
@ISCSI_AHS_CNTL_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e4_iscsi_task_context*, %struct.iscsi_conn_params*, i32, i64, i64, i64)* @set_rw_exp_data_acked_and_cont_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rw_exp_data_acked_and_cont_len(%struct.e4_iscsi_task_context* %0, %struct.iscsi_conn_params* %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.e4_iscsi_task_context*, align 8
  %8 = alloca %struct.iscsi_conn_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e4_iscsi_task_context* %0, %struct.e4_iscsi_task_context** %7, align 8
  store %struct.iscsi_conn_params* %1, %struct.iscsi_conn_params** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %15 = load i64, i64* %12, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %6
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 130
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 131
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %17
  %24 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %25 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @USTORM_ISCSI_TASK_ST_CTX_AHS_EXIST, align 4
  %29 = call i32 @SET_FIELD(i32 %27, i32 %28, i32 1)
  br label %30

30:                                               ; preds = %23, %20, %6
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %103 [
    i32 130, label %32
    i32 129, label %72
    i32 131, label %81
    i32 128, label %95
  ]

32:                                               ; preds = %30
  %33 = load %struct.iscsi_conn_params*, %struct.iscsi_conn_params** %8, align 8
  %34 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load %struct.iscsi_conn_params*, %struct.iscsi_conn_params** %8, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  br label %55

41:                                               ; preds = %32
  %42 = load %struct.iscsi_conn_params*, %struct.iscsi_conn_params** %8, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.iscsi_conn_params*, %struct.iscsi_conn_params** %8, align 8
  %48 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iscsi_conn_params*, %struct.iscsi_conn_params** %8, align 8
  %51 = getelementptr inbounds %struct.iscsi_conn_params, %struct.iscsi_conn_params* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @min(i64 %49, i64 %52)
  store i64 %53, i64* %13, align 8
  br label %54

54:                                               ; preds = %46, %41
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i64, i64* %12, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i64 @min(i64 %59, i64 %60)
  br label %66

62:                                               ; preds = %55
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* @ISCSI_AHS_CNTL_SIZE, align 8
  %65 = add nsw i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i64 [ %61, %58 ], [ %65, %62 ]
  %68 = call i8* @cpu_to_le32(i64 %67)
  %69 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %70 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  br label %104

72:                                               ; preds = %30
  %73 = load i64, i64* %11, align 8
  %74 = call i8* @cpu_to_le32(i64 %73)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %79 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  br label %104

81:                                               ; preds = %30
  %82 = load i64, i64* %12, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %89

85:                                               ; preds = %81
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @ISCSI_AHS_CNTL_SIZE, align 8
  %88 = add nsw i64 %86, %87
  br label %89

89:                                               ; preds = %85, %84
  %90 = phi i64 [ 0, %84 ], [ %88, %85 ]
  %91 = call i8* @cpu_to_le32(i64 %90)
  %92 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %93 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  br label %104

95:                                               ; preds = %30
  %96 = load i64, i64* %10, align 8
  %97 = call i8* @cpu_to_le32(i64 %96)
  %98 = ptrtoint i8* %97 to i64
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.e4_iscsi_task_context*, %struct.e4_iscsi_task_context** %7, align 8
  %101 = getelementptr inbounds %struct.e4_iscsi_task_context, %struct.e4_iscsi_task_context* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  br label %104

103:                                              ; preds = %30
  br label %104

104:                                              ; preds = %103, %95, %89, %72, %66
  ret void
}

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
