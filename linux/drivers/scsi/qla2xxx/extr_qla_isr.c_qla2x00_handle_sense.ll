; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_handle_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla2x00_handle_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.scsi_qla_host* }
%struct.scsi_qla_host = type { i32 }
%struct.rsp_que = type { %struct.TYPE_8__* }
%struct.scsi_cmnd = type { i64, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i64 0, align 8
@ql_dbg_io = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Check condition Sense data, nexus%ld:%d:%llu cmd=%p.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*, i64, i64, %struct.rsp_que*, i32)* @qla2x00_handle_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_handle_sense(%struct.TYPE_8__* %0, i32* %1, i64 %2, i64 %3, %struct.rsp_que* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rsp_que*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_qla_host*, align 8
  %14 = alloca %struct.scsi_cmnd*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.rsp_que* %4, %struct.rsp_que** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %17, align 8
  store %struct.scsi_qla_host* %18, %struct.scsi_qla_host** %13, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %20 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_8__* %19)
  store %struct.scsi_cmnd* %20, %struct.scsi_cmnd** %14, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i64, i64* @SCSI_SENSE_BUFFERSIZE, align 8
  store i64 %25, i64* %10, align 8
  br label %26

26:                                               ; preds = %24, %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_8__* %27, i64 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_8__* %30, i64 %33)
  %35 = load i64, i64* %10, align 8
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %39, %26
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @memcpy(i64 %44, i32* %45, i64 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @SET_CMD_SENSE_PTR(%struct.TYPE_8__* %48, i64 %53)
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %15, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %15, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = load i64, i64* %15, align 8
  %60 = call i32 @SET_CMD_SENSE_LEN(%struct.TYPE_8__* %58, i64 %59)
  %61 = load i64, i64* %15, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %41
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = load %struct.rsp_que*, %struct.rsp_que** %11, align 8
  %66 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %65, i32 0, i32 0
  store %struct.TYPE_8__* %64, %struct.TYPE_8__** %66, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %63, %41
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %104

73:                                               ; preds = %70
  %74 = load i64, i64* @ql_dbg_io, align 8
  %75 = load i64, i64* @ql_dbg_buffer, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %79, align 8
  %81 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 2
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 2
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %94 = call i32 @ql_dbg(i64 %76, %struct.scsi_qla_host* %77, i32 12316, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %87, i32 %92, %struct.scsi_cmnd* %93)
  %95 = load i64, i64* @ql_dbg_io, align 8
  %96 = load i64, i64* @ql_dbg_buffer, align 8
  %97 = add nsw i64 %95, %96
  %98 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %13, align 8
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  %100 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @ql_dump_buffer(i64 %97, %struct.scsi_qla_host* %98, i32 12331, i64 %101, i64 %102)
  br label %104

104:                                              ; preds = %73, %70
  ret void
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_8__*) #1

declare dso_local i32 @SET_CMD_SENSE_LEN(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @SET_CMD_SENSE_PTR(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

declare dso_local i32 @ql_dbg(i64, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.scsi_qla_host*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
