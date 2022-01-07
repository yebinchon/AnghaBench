; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_handle_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_handle_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }
%struct.rsp_que = type { %struct.TYPE_10__* }
%struct.scsi_cmnd = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"sense_len=0x%x par_sense_len=0x%x track_sense_len=0x%x.\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Check condition Sense data, nexus%ld:%d:%llu cmd=%p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i64, i64, %struct.rsp_que*, i32)* @qlafx00_handle_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlafx00_handle_sense(%struct.TYPE_10__* %0, i32* %1, i64 %2, i64 %3, %struct.rsp_que* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rsp_que*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_qla_host*, align 8
  %14 = alloca %struct.scsi_cmnd*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.rsp_que* %4, %struct.rsp_que** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %13, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_10__* %19)
  store %struct.scsi_cmnd* %20, %struct.scsi_cmnd** %14, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @SET_FW_SENSE_LEN(%struct.TYPE_10__* %21, i64 %22)
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %6
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_10__* %30, i64 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %35 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_10__* %33, i64 %36)
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %29
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %42, %29
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @memcpy(i64 %47, i32* %48, i64 %49)
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = call i64 @GET_FW_SENSE_LEN(%struct.TYPE_10__* %52)
  %54 = load i64, i64* %10, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 @SET_FW_SENSE_LEN(%struct.TYPE_10__* %51, i64 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_10__* %57, i64 %62)
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %15, align 8
  %66 = sub nsw i64 %65, %64
  store i64 %66, i64* %15, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_10__* %67, i64 %68)
  %70 = load i64, i64* @ql_dbg_io, align 8
  %71 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, i64, i64, i64, ...) @ql_dbg(i64 %70, %struct.scsi_qla_host* %71, i32 12365, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %72, i64 %73, i64 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = call i64 @GET_FW_SENSE_LEN(%struct.TYPE_10__* %76)
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %44
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %82 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %81, i32 0, i32 0
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %82, align 8
  %83 = load i32, i32* %12, align 4
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %79, %44
  %87 = load i64, i64* %10, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %123

89:                                               ; preds = %86
  %90 = load i64, i64* @ql_dbg_io, align 8
  %91 = load i64, i64* @ql_dbg_buffer, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %95, align 8
  %97 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 2
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 2
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %113 = call i32 (i64, %struct.scsi_qla_host*, i32, i8*, i64, i64, i64, ...) @ql_dbg(i64 %92, %struct.scsi_qla_host* %93, i32 12345, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %99, i64 %105, i64 %111, %struct.scsi_cmnd* %112)
  %114 = load i64, i64* @ql_dbg_io, align 8
  %115 = load i64, i64* @ql_dbg_buffer, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %118 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %119 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @ql_dump_buffer(i64 %116, %struct.scsi_qla_host* %117, i32 12361, i64 %120, i64 %121)
  br label %123

123:                                              ; preds = %89, %86
  ret void
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_10__*) #1

declare dso_local i32 @SET_FW_SENSE_LEN(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @SET_CMD_SENSE_LEN(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @SET_CMD_SENSE_PTR(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i64 @GET_FW_SENSE_LEN(%struct.TYPE_10__*) #1

declare dso_local i32 @ql_dbg(i64, %struct.scsi_qla_host*, i32, i8*, i64, i64, i64, ...) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.scsi_qla_host*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
