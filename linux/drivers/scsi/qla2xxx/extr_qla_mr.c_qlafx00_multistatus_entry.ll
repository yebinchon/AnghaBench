; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_multistatus_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_multistatus_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que** }
%struct.req_que = type { i64, i32** }
%struct.rsp_que = type { i32 }
%struct.multi_sts_entry_fx00 = type { i64, i32* }

@MAX_HANDLE_COUNT = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid handle count (0x%x).\0A\00", align 1
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid status handle (0x%x).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_qla_host*, %struct.rsp_que*, i8*)* @qlafx00_multistatus_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_multistatus_entry(%struct.scsi_qla_host* %0, %struct.rsp_que* %1, i8* %2) #0 {
  %4 = alloca %struct.scsi_qla_host*, align 8
  %5 = alloca %struct.rsp_que*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.multi_sts_entry_fx00*, align 8
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.req_que*, align 8
  %16 = alloca i32*, align 8
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %4, align 8
  store %struct.rsp_que* %1, %struct.rsp_que** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %18 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %17, i32 0, i32 1
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.multi_sts_entry_fx00*
  store %struct.multi_sts_entry_fx00* %21, %struct.multi_sts_entry_fx00** %8, align 8
  %22 = load %struct.multi_sts_entry_fx00*, %struct.multi_sts_entry_fx00** %8, align 8
  %23 = getelementptr inbounds %struct.multi_sts_entry_fx00, %struct.multi_sts_entry_fx00* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %12, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @MAX_HANDLE_COUNT, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load i32, i32* @ql_dbg_io, align 4
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @ql_dbg(i32 %29, %struct.scsi_qla_host* %30, i32 12341, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %34 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %35 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %34, i32 0, i32 0
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %38 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %37)
  br label %99

39:                                               ; preds = %3
  %40 = load %struct.multi_sts_entry_fx00*, %struct.multi_sts_entry_fx00** %8, align 8
  %41 = getelementptr inbounds %struct.multi_sts_entry_fx00, %struct.multi_sts_entry_fx00* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32* %43, i32** %16, align 8
  store i64 0, i64* %13, align 8
  br label %44

44:                                               ; preds = %96, %39
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %99

48:                                               ; preds = %44
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @LSW(i64 %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @MSW(i64 %54)
  store i64 %55, i64* %14, align 8
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %57 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %56, i32 0, i32 0
  %58 = load %struct.req_que**, %struct.req_que*** %57, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds %struct.req_que*, %struct.req_que** %58, i64 %59
  %61 = load %struct.req_que*, %struct.req_que** %60, align 8
  store %struct.req_que* %61, %struct.req_que** %15, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.req_que*, %struct.req_que** %15, align 8
  %64 = getelementptr inbounds %struct.req_que, %struct.req_que* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp slt i64 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %48
  %68 = load %struct.req_que*, %struct.req_que** %15, align 8
  %69 = getelementptr inbounds %struct.req_que, %struct.req_que* %68, i32 0, i32 1
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %7, align 8
  br label %75

74:                                               ; preds = %48
  store i32* null, i32** %7, align 8
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32*, i32** %7, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* @ql_dbg_io, align 4
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @ql_dbg(i32 %79, %struct.scsi_qla_host* %80, i32 12356, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %85 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %84, i32 0, i32 0
  %86 = call i32 @set_bit(i32 %83, i32* %85)
  %87 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %88 = call i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host* %87)
  br label %99

89:                                               ; preds = %75
  %90 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %4, align 8
  %91 = load %struct.req_que*, %struct.req_que** %15, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @qla2x00_process_completed_request(%struct.scsi_qla_host* %90, %struct.req_que* %91, i64 %92)
  %94 = load i32*, i32** %16, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %16, align 8
  br label %96

96:                                               ; preds = %89
  %97 = load i64, i64* %13, align 8
  %98 = add nsw i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %44

99:                                               ; preds = %28, %78, %44
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.scsi_qla_host*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @LSW(i64) #1

declare dso_local i64 @MSW(i64) #1

declare dso_local i32 @qla2x00_process_completed_request(%struct.scsi_qla_host*, %struct.req_que*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
