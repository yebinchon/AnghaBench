; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_rnn_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_sns_rnn_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32*, %struct.TYPE_12__, %struct.qla_hw_data* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.qla_hw_data = type { i32 }
%struct.sns_cmd_pkt = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32* }

@RNN_ID_CMD = common dso_local global i32 0, align 4
@RNN_ID_SNS_SCMD_LEN = common dso_local global i32 0, align 4
@RNN_ID_SNS_DATA_SIZE = common dso_local global i32 0, align 4
@RNN_ID_SNS_CMD_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"RNN_ID Send SNS failed (%d).\0A\00", align 1
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"RNN_ID failed, rejected request, rnn_rsp:\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"RNN_ID exiting normally.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @qla2x00_sns_rnn_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2x00_sns_rnn_id(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca %struct.sns_cmd_pkt*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %4, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = load i32, i32* @RNN_ID_CMD, align 4
  %11 = load i32, i32* @RNN_ID_SNS_SCMD_LEN, align 4
  %12 = load i32, i32* @RNN_ID_SNS_DATA_SIZE, align 4
  %13 = call %struct.sns_cmd_pkt* @qla2x00_prep_sns_cmd(%struct.TYPE_15__* %9, i32 %10, i32 %11, i32 %12)
  store %struct.sns_cmd_pkt* %13, %struct.sns_cmd_pkt** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %20 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %18, i32* %24, align 4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
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
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %42 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 %40, i32* %46, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %53 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 %51, i32* %57, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %64 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 5
  store i32 %62, i32* %68, align 4
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %75 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  store i32 %73, i32* %79, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %86 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  store i32 %84, i32* %90, align 4
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %97 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  store i32 %95, i32* %101, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %108 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 9
  store i32 %106, i32* %112, align 4
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %119 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 10
  store i32 %117, i32* %123, align 4
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %130 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 11
  store i32 %128, i32* %134, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %136 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %137 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @RNN_ID_SNS_CMD_SIZE, align 4
  %140 = sdiv i32 %139, 2
  %141 = call i32 @qla2x00_send_sns(%struct.TYPE_15__* %135, i32 %138, i32 %140, i32 16)
  store i32 %141, i32* %3, align 4
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @QLA_SUCCESS, align 4
  %144 = icmp ne i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %1
  %146 = load i64, i64* @ql_dbg_disc, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %148 = load i32, i32* %3, align 4
  %149 = call i32 (i64, %struct.TYPE_15__*, i32, i8*, ...) @ql_dbg(i64 %146, %struct.TYPE_15__* %147, i32 8266, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %148)
  br label %187

150:                                              ; preds = %1
  %151 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %152 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 128
  br i1 %157, label %166, label %158

158:                                              ; preds = %150
  %159 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %160 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 9
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 2
  br i1 %165, label %166, label %182

166:                                              ; preds = %158, %150
  %167 = load i64, i64* @ql_dbg_disc, align 8
  %168 = load i64, i64* @ql_dbg_buffer, align 8
  %169 = add nsw i64 %167, %168
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %171 = call i32 (i64, %struct.TYPE_15__*, i32, i8*, ...) @ql_dbg(i64 %169, %struct.TYPE_15__* %170, i32 8315, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %172 = load i64, i64* @ql_dbg_disc, align 8
  %173 = load i64, i64* @ql_dbg_buffer, align 8
  %174 = add nsw i64 %172, %173
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %176 = load %struct.sns_cmd_pkt*, %struct.sns_cmd_pkt** %5, align 8
  %177 = getelementptr inbounds %struct.sns_cmd_pkt, %struct.sns_cmd_pkt* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @ql_dump_buffer(i64 %174, %struct.TYPE_15__* %175, i32 8316, i32* %179, i32 16)
  %181 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %181, i32* %3, align 4
  br label %186

182:                                              ; preds = %158
  %183 = load i64, i64* @ql_dbg_disc, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %185 = call i32 (i64, %struct.TYPE_15__*, i32, i8*, ...) @ql_dbg(i64 %183, %struct.TYPE_15__* %184, i32 8268, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %186

186:                                              ; preds = %182, %166
  br label %187

187:                                              ; preds = %186, %145
  %188 = load i32, i32* %3, align 4
  ret i32 %188
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
