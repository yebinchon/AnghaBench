; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_rft_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_rft_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.qla_hw_data* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.qla_hw_data = type { i32 }
%struct.sns_cmd_pkt = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@RFT_ID_CMD = common dso_local global i32 0, align 4
@RFT_ID_SNS_SCMD_LEN = common dso_local global i32 0, align 4
@RFT_ID_SNS_DATA_SIZE = common dso_local global i32 0, align 4
@RFT_ID_SNS_CMD_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"RFT_ID Send SNS failed (%d).\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"RFT_ID failed, rejected request rft_rsp:\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RFT_ID exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @qla2x00_sns_rft_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_sns_rft_id(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.sns_cmd_pkt*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = load i32, i32* @RFT_ID_CMD, align 4
  %11 = load i32, i32* @RFT_ID_SNS_SCMD_LEN, align 4
  %12 = load i32, i32* @RFT_ID_SNS_DATA_SIZE, align 4
  %13 = call %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_15__* %9, i32 %10, i32 %11, i32 %12)
  store %struct.sns_cmd_pkt* %13, %struct.sns_cmd_pkt** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %20 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %18, i32* %24, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %31 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %29, i32* %35, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %42 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %40, i32* %46, align 4
  %47 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %48 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 1, i32* %52, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RFT_ID_SNS_CMD_SIZE, align 4
  %58 = sdiv i32 %57, 2
  %59 = call i32 @qla2x00_send_sns(%struct.TYPE_15__* %53, i32 %56, i32 %58, i32 16)
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @QLA_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %1
  %64 = load i64, i64* @ql_dbg_disc, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i64, %struct.TYPE_15__*, i32, i8*, ...) @ql_dbg(i64 %64, %struct.TYPE_15__* %65, i32 8288, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %105

68:                                               ; preds = %1
  %69 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %70 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 128
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  %77 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %78 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 9
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 2
  br i1 %83, label %84, label %100

84:                                               ; preds = %76, %68
  %85 = load i64, i64* @ql_dbg_disc, align 8
  %86 = load i64, i64* @ql_dbg_buffer, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %89 = call i32 (i64, %struct.TYPE_15__*, i32, i8*, ...) @ql_dbg(i64 %87, %struct.TYPE_15__* %88, i32 8323, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i64, i64* @ql_dbg_disc, align 8
  %91 = load i64, i64* @ql_dbg_buffer, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %94 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %95 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ql_dump_buffer(i64 %92, %struct.TYPE_15__* %93, i32 8320, i32* %97, i32 16)
  %99 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %99, i32* %3, align 4
  br label %104

100:                                              ; preds = %76
  %101 = load i64, i64* @ql_dbg_disc, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = call i32 (i64, %struct.TYPE_15__*, i32, i8*, ...) @ql_dbg(i64 %101, %struct.TYPE_15__* %102, i32 8307, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %84
  br label %105

105:                                              ; preds = %104, %63
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @qla2x00_send_sns(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_15__*, i32, i8*, ...) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_15__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
