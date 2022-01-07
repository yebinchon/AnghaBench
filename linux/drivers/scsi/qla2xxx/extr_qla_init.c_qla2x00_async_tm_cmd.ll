; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_18__, %struct.scsi_qla_host* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.scsi_qla_host = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.srb_iocb = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_21__ = type { i8*, i32 (%struct.TYPE_21__*)*, i32, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.srb_iocb }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SRB_TM_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tmf\00", align 1
@qla2x00_tmf_iocb_timeout = common dso_local global i32 0, align 4
@qla2x00_tmf_sp_done = common dso_local global i32 0, align 4
@ql_dbg_taskm = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Async-tmf hdl=%x loop-id=%x portid=%02x%02x%02x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"TM IOCB failed (%x).\0A\00", align 1
@UNLOADING = common dso_local global i32 0, align 4
@TCF_LUN_RESET = common dso_local global i8* null, align 8
@MK_SYNC_ID_LUN = common dso_local global i32 0, align 4
@MK_SYNC_ID = common dso_local global i32 0, align 4
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_async_tm_cmd(%struct.TYPE_22__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.scsi_qla_host*, align 8
  %10 = alloca %struct.srb_iocb*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 3
  %15 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  store %struct.scsi_qla_host* %15, %struct.scsi_qla_host** %9, align 8
  %16 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_21__* @qla2x00_get_sp(%struct.scsi_qla_host* %17, %struct.TYPE_22__* %18, i32 %19)
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %11, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %22 = icmp ne %struct.TYPE_21__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %169

24:                                               ; preds = %4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store %struct.srb_iocb* %27, %struct.srb_iocb** %10, align 8
  %28 = load i32, i32* @SRB_TM_CMD, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @qla2x00_tmf_iocb_timeout, align 4
  %34 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %35 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %37 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 3
  %40 = call i32 @init_completion(i32* %39)
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %43 = call i32 @qla2x00_get_async_timeout(%struct.scsi_qla_host* %42)
  %44 = call i32 @qla2x00_init_timer(%struct.TYPE_21__* %41, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %47 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 2
  store i8* %45, i8** %49, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %52 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  store i8* %50, i8** %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %58 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load i32, i32* @qla2x00_tmf_sp_done, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @ql_dbg_taskm, align 4
  %65 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ql_dbg(i32 %64, %struct.scsi_qla_host* %65, i32 32815, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %71, i32 %76, i32 %81, i32 %86)
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %89 = call i32 @qla2x00_start_sp(%struct.TYPE_21__* %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @QLA_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %24
  br label %157

94:                                               ; preds = %24
  %95 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %96 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 3
  %99 = call i32 @wait_for_completion(i32* %98)
  %100 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %101 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @QLA_SUCCESS, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load i32, i32* @ql_log_warn, align 4
  %110 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @ql_log(i32 %109, %struct.scsi_qla_host* %110, i32 32816, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %108, %94
  %114 = load i32, i32* @UNLOADING, align 4
  %115 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %116 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %115, i32 0, i32 1
  %117 = call i32 @test_bit(i32 %114, i32* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %113
  %120 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %121 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %120, i32 0, i32 0
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %121, align 8
  %123 = call i32 @IS_QLAFX00(%struct.TYPE_15__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %156, label %125

125:                                              ; preds = %119
  %126 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %127 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i32 0, i32 2
  %130 = load i8*, i8** %129, align 8
  store i8* %130, i8** %6, align 8
  %131 = load %struct.srb_iocb*, %struct.srb_iocb** %10, align 8
  %132 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %7, align 8
  %136 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %137 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %9, align 8
  %138 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %137, i32 0, i32 0
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = load i8*, i8** %6, align 8
  %147 = load i8*, i8** @TCF_LUN_RESET, align 8
  %148 = icmp eq i8* %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %125
  %150 = load i32, i32* @MK_SYNC_ID_LUN, align 4
  br label %153

151:                                              ; preds = %125
  %152 = load i32, i32* @MK_SYNC_ID, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  %155 = call i32 @qla2x00_marker(%struct.scsi_qla_host* %136, i32 %141, i32 %144, i8* %145, i32 %154)
  br label %156

156:                                              ; preds = %153, %119, %113
  br label %157

157:                                              ; preds = %156, %93
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 1
  %160 = load i32 (%struct.TYPE_21__*)*, i32 (%struct.TYPE_21__*)** %159, align 8
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %162 = call i32 %160(%struct.TYPE_21__* %161)
  %163 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %157, %23
  %170 = load i32, i32* %12, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_21__* @qla2x00_get_sp(%struct.scsi_qla_host*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @qla2x00_get_async_timeout(%struct.scsi_qla_host*) #1

declare dso_local i32 @ql_dbg(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_21__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IS_QLAFX00(%struct.TYPE_15__*) #1

declare dso_local i32 @qla2x00_marker(%struct.scsi_qla_host*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
