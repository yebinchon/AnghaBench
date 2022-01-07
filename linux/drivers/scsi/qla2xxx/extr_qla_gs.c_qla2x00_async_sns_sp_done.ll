; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_async_sns_sp_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_async_sns_sp_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32 (%struct.TYPE_20__*)*, %struct.TYPE_17__, i32, %struct.scsi_qla_host* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32*, i32, i32, i32*, i32, i32 }
%struct.scsi_qla_host = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ct_sns_pkt = type { i32 }
%struct.qla_work_evt = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Async done-%s exiting normally.\0A\00", align 1
@QLA_FUNCTION_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Async done-%s timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Async done-%s fail rc %x.  Retry count %d\0A\00", align 1
@QLA_EVT_SP_RETRY = common dso_local global i32 0, align 4
@QLA_EVT_UNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, i32)* @qla2x00_async_sns_sp_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla2x00_async_sns_sp_done(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_qla_host*, align 8
  %6 = alloca %struct.ct_sns_pkt*, align 8
  %7 = alloca %struct.qla_work_evt*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 5
  %10 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  store %struct.scsi_qla_host* %10, %struct.scsi_qla_host** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @QLA_SUCCESS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @ql_dbg_disc, align 4
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %18, %struct.scsi_qla_host* %19, i32 8271, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %87

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @QLA_FUNCTION_TIMEOUT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @ql_dbg_disc, align 4
  %30 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %29, %struct.scsi_qla_host* %30, i32 8271, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %86

35:                                               ; preds = %24
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = bitcast i32* %42 to %struct.ct_sns_pkt*
  store %struct.ct_sns_pkt* %43, %struct.ct_sns_pkt** %6, align 8
  %44 = load %struct.ct_sns_pkt*, %struct.ct_sns_pkt** %6, align 8
  %45 = call i32 @memset(%struct.ct_sns_pkt* %44, i32 0, i32 4)
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %35
  br label %88

55:                                               ; preds = %35
  %56 = load i32, i32* @ql_dbg_disc, align 4
  %57 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) @ql_dbg(i32 %56, %struct.scsi_qla_host* %57, i32 8271, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61, i32 %64)
  %66 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %67 = load i32, i32* @QLA_EVT_SP_RETRY, align 4
  %68 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %66, i32 %67)
  store %struct.qla_work_evt* %68, %struct.qla_work_evt** %7, align 8
  %69 = load %struct.qla_work_evt*, %struct.qla_work_evt** %7, align 8
  %70 = icmp ne %struct.qla_work_evt* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %55
  br label %92

72:                                               ; preds = %55
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = call i32 @del_timer(i32* %76)
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %79 = load %struct.qla_work_evt*, %struct.qla_work_evt** %7, align 8
  %80 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store %struct.TYPE_20__* %78, %struct.TYPE_20__** %82, align 8
  %83 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %84 = load %struct.qla_work_evt*, %struct.qla_work_evt** %7, align 8
  %85 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %83, %struct.qla_work_evt* %84)
  br label %198

86:                                               ; preds = %28
  br label %87

87:                                               ; preds = %86, %17
  br label %88

88:                                               ; preds = %87, %54
  %89 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %90 = load i32, i32* @QLA_EVT_UNMAP, align 4
  %91 = call %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host* %89, i32 %90)
  store %struct.qla_work_evt* %91, %struct.qla_work_evt** %7, align 8
  br label %92

92:                                               ; preds = %88, %71
  %93 = load %struct.qla_work_evt*, %struct.qla_work_evt** %7, align 8
  %94 = icmp ne %struct.qla_work_evt* %93, null
  br i1 %94, label %189, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %139

104:                                              ; preds = %95
  %105 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %106 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @dma_free_coherent(i32* %110, i32 %117, i32* %124, i32 %131)
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  store i32* null, i32** %138, align 8
  br label %139

139:                                              ; preds = %104, %95
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %183

148:                                              ; preds = %139
  %149 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %150 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @dma_free_coherent(i32* %154, i32 %161, i32* %168, i32 %175)
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 0
  store i32* null, i32** %182, align 8
  br label %183

183:                                              ; preds = %148, %139
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %185, align 8
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %188 = call i32 %186(%struct.TYPE_20__* %187)
  br label %198

189:                                              ; preds = %92
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = load %struct.qla_work_evt*, %struct.qla_work_evt** %7, align 8
  %192 = getelementptr inbounds %struct.qla_work_evt, %struct.qla_work_evt* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  store %struct.TYPE_20__* %190, %struct.TYPE_20__** %194, align 8
  %195 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %5, align 8
  %196 = load %struct.qla_work_evt*, %struct.qla_work_evt** %7, align 8
  %197 = call i32 @qla2x00_post_work(%struct.scsi_qla_host* %195, %struct.qla_work_evt* %196)
  br label %198

198:                                              ; preds = %189, %183, %72
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.ct_sns_pkt*, i32, i32) #1

declare dso_local %struct.qla_work_evt* @qla2x00_alloc_work(%struct.scsi_qla_host*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @qla2x00_post_work(%struct.scsi_qla_host*, %struct.qla_work_evt*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
