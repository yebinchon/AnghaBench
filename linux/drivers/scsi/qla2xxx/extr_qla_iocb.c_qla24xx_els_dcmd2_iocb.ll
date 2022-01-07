; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_dcmd2_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_els_dcmd2_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_31__, %struct.qla_hw_data* }
%struct.TYPE_31__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_28__, %struct.TYPE_27__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_30__, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i8*, i32 (%struct.TYPE_33__*)*, i32, i32, i32, %struct.TYPE_24__*, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_32__, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i64, i32, %struct.TYPE_29__*, i8*, i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SRB allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ql_dbg_io = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Enter: PLOGI portid=%06x\0A\00", align 1
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@SRB_ELS_DCMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ELS_DCMD\00", align 1
@qla2x00_els_dcmd2_iocb_timeout = common dso_local global i32 0, align 4
@SRB_WAKEUP_ON_COMP = common dso_local global i32 0, align 4
@ELS_DCMD_TIMEOUT = common dso_local global i64 0, align 8
@qla2x00_els_dcmd2_sp_done = common dso_local global i32 0, align 4
@DMA_POOL_SIZE = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"PLOGI %p %p\0A\00", align 1
@ql_dbg_disc = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"PLOGI buffer:\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"%s PLOGI sent, hdl=%x, loopid=%x, to port_id %06x from port_id %06x\0A\00", align 1
@CS_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_els_dcmd2_iocb(%struct.TYPE_34__* %0, i32 %1, %struct.TYPE_24__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.srb_iocb*, align 8
  %12 = alloca %struct.qla_hw_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.srb_iocb* null, %struct.srb_iocb** %11, align 8
  %16 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %12, align 8
  %19 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_33__* @qla2x00_get_sp(%struct.TYPE_34__* %20, %struct.TYPE_24__* %21, i32 %22)
  store %struct.TYPE_33__* %23, %struct.TYPE_33__** %10, align 8
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %25 = icmp ne %struct.TYPE_33__* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ql_log_info, align 4
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %29 = call i32 @ql_log(i32 %27, %struct.TYPE_34__* %28, i32 28902, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %255

32:                                               ; preds = %4
  %33 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %34, i32 0, i32 0
  store %struct.srb_iocb* %35, %struct.srb_iocb** %11, align 8
  %36 = load i32, i32* @ql_dbg_io, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i64, %struct.TYPE_34__*, i32, i8*, ...) @ql_dbg(i64 %37, %struct.TYPE_34__* %38, i32 12403, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @SRB_ELS_DCMD, align 4
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 5
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %56, align 8
  %57 = load i32, i32* @qla2x00_els_dcmd2_iocb_timeout, align 4
  %58 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %59 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %61 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = call i32 @init_completion(i32* %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %32
  %68 = load i32, i32* @SRB_WAKEUP_ON_COMP, align 4
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %32
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %73 = load i64, i64* @ELS_DCMD_TIMEOUT, align 8
  %74 = add nsw i64 %73, 2
  %75 = call i32 @qla2x00_init_timer(%struct.TYPE_33__* %72, i64 %74)
  %76 = load i32, i32* @qla2x00_els_dcmd2_sp_done, align 4
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @DMA_POOL_SIZE, align 4
  %80 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %81 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 7
  store i32 %79, i32* %83, align 8
  %84 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %85 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 8
  store i32 %79, i32* %87, align 4
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %89 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %88, i32 0, i32 1
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load i32, i32* @DMA_POOL_SIZE, align 4
  %93 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %94 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 6
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @dma_alloc_coherent(i32* %91, i32 %92, i32* %96, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_29__*
  %100 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %101 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 3
  store %struct.TYPE_29__* %99, %struct.TYPE_29__** %103, align 8
  %104 = bitcast %struct.TYPE_29__* %99 to i8*
  store i8* %104, i8** %14, align 8
  %105 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %106 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %108, align 8
  %110 = icmp ne %struct.TYPE_29__* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %71
  %112 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %112, i32* %13, align 4
  br label %236

113:                                              ; preds = %71
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_27__*, %struct.TYPE_27__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %116, i32 0, i32 0
  %118 = load i32, i32* @DMA_POOL_SIZE, align 4
  %119 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %120 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 5
  %123 = load i32, i32* @GFP_KERNEL, align 4
  %124 = call i8* @dma_alloc_coherent(i32* %117, i32 %118, i32* %122, i32 %123)
  %125 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %126 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 4
  store i8* %124, i8** %128, align 8
  store i8* %124, i8** %15, align 8
  %129 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %130 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 4
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %113
  %136 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %136, i32* %13, align 4
  br label %236

137:                                              ; preds = %113
  %138 = load i32, i32* @ql_dbg_io, align 4
  %139 = sext i32 %138 to i64
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = load i8*, i8** %15, align 8
  %143 = call i32 (i64, %struct.TYPE_34__*, i32, i8*, ...) @ql_dbg(i64 %139, %struct.TYPE_34__* %140, i32 12403, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %141, i8* %142)
  %144 = load i8*, i8** %14, align 8
  %145 = call i32 @memset(i8* %144, i32 0, i32 4)
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 @memset(i8* %146, i32 0, i32 4)
  %148 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %149 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  %156 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %156, i32 0, i32 0
  %158 = call i32 @memcpy(i32 %154, i32* %157, i32 4)
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %161 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %166 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 0
  store i32 %164, i32* %170, align 4
  %171 = load i64, i64* @ql_dbg_disc, align 8
  %172 = load i64, i64* @ql_dbg_buffer, align 8
  %173 = add nsw i64 %171, %172
  %174 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %175 = call i32 (i64, %struct.TYPE_34__*, i32, i8*, ...) @ql_dbg(i64 %173, %struct.TYPE_34__* %174, i32 12403, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i64, i64* @ql_dbg_disc, align 8
  %177 = load i64, i64* @ql_dbg_buffer, align 8
  %178 = add nsw i64 %176, %177
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %180 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %181 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 3
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %183, align 8
  %185 = bitcast %struct.TYPE_29__* %184 to i32*
  %186 = call i32 @ql_dump_buffer(i64 %178, %struct.TYPE_34__* %179, i32 265, i32* %185, i32 112)
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %188 = call i32 @qla2x00_start_sp(%struct.TYPE_33__* %187)
  store i32 %188, i32* %13, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @QLA_SUCCESS, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %137
  %193 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %193, i32* %13, align 4
  br label %215

194:                                              ; preds = %137
  %195 = load i64, i64* @ql_dbg_disc, align 8
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i64, %struct.TYPE_34__*, i32, i8*, ...) @ql_dbg(i64 %195, %struct.TYPE_34__* %196, i32 12404, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* %199, i32 %202, i32 %205, i32 %209, i32 %213)
  br label %215

215:                                              ; preds = %194, %192
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %234

218:                                              ; preds = %215
  %219 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %220 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %221, i32 0, i32 2
  %223 = call i32 @wait_for_completion(i32* %222)
  %224 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %225 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @CS_COMPLETE, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %218
  %232 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %231, %218
  br label %235

234:                                              ; preds = %215
  br label %253

235:                                              ; preds = %233
  br label %236

236:                                              ; preds = %235, %135, %111
  %237 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %238 = xor i32 %237, -1
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %244 = load %struct.srb_iocb*, %struct.srb_iocb** %11, align 8
  %245 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 0
  %247 = call i32 @qla2x00_els_dcmd2_free(%struct.TYPE_34__* %243, %struct.TYPE_25__* %246)
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 1
  %250 = load i32 (%struct.TYPE_33__*)*, i32 (%struct.TYPE_33__*)** %249, align 8
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %252 = call i32 %250(%struct.TYPE_33__* %251)
  br label %253

253:                                              ; preds = %236, %234
  %254 = load i32, i32* %13, align 4
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %253, %26
  %256 = load i32, i32* %5, align 4
  ret i32 %256
}

declare dso_local %struct.TYPE_33__* @qla2x00_get_sp(%struct.TYPE_34__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_34__*, i32, i8*) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_34__*, i32, i8*, ...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_33__*, i64) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_34__*, i32, i32*, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_33__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @qla2x00_els_dcmd2_free(%struct.TYPE_34__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
