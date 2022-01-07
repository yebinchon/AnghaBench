; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_cmd_mgr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_io.c_qedf_cmd_mgr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_cmd_mgr = type { i32, %struct.io_bdt**, %struct.qedf_ioreq*, i32, %struct.qedf_ctx* }
%struct.io_bdt = type { i8*, i32 }
%struct.qedf_ioreq = type { i8*, i8*, i8*, i32, i32, i64, i32 }
%struct.qedf_ctx = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FCOE_PARAMS_NUM_TASKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"num_queues is not set.\0A\00", align 1
@FC_XID_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Invalid min_xid 0x%x and max_xid 0x%x.\0A\00", align 1
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"min xid 0x%x, max xid 0x%x.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to alloc cmd mgr.\0A\00", align 1
@qedf_cmd_timeout = common dso_local global i32 0, align 4
@qedf_handle_rrq = common dso_local global i32 0, align 4
@QEDF_SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Failed to alloc sense buffer.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Failed to allocate task_params for xid=0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Failed to allocate sgl_task_params for xid=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to alloc io_bdt_pool.\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Failed to alloc io_bdt_pool[%d].\0A\00", align 1
@QEDF_MAX_BDS_PER_CMD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"Failed to alloc bdt_tbl[%d].\0A\00", align 1
@QEDF_LOG_IO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"cmgr->free_list_cnt=%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qedf_cmd_mgr* @qedf_cmd_mgr_alloc(%struct.qedf_ctx* %0) #0 {
  %2 = alloca %struct.qedf_cmd_mgr*, align 8
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.qedf_cmd_mgr*, align 8
  %5 = alloca %struct.io_bdt*, align 8
  %6 = alloca %struct.qedf_ioreq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store i64 0, i64* %10, align 8
  %12 = load i64, i64* @FCOE_PARAMS_NUM_TASKS, align 8
  %13 = sub nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %15 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %20 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.qedf_cmd_mgr* null, %struct.qedf_cmd_mgr** %2, align 8
  br label %238

22:                                               ; preds = %1
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @FC_XID_UNKNOWN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %22
  %31 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %31, i32 0, i32 0
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %33, i64 %34)
  store %struct.qedf_cmd_mgr* null, %struct.qedf_cmd_mgr** %2, align 8
  br label %238

36:                                               ; preds = %26
  %37 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %38 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* @QEDF_LOG_DISC, align 4
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = call i32 (i32*, i32, i8*, i64, ...) @QEDF_INFO(i32* %38, i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %40, i64 %41)
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %10, align 8
  %45 = sub nsw i64 %43, %44
  %46 = add nsw i64 %45, 1
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %9, align 4
  %48 = call %struct.qedf_cmd_mgr* @vzalloc(i32 40)
  store %struct.qedf_cmd_mgr* %48, %struct.qedf_cmd_mgr** %4, align 8
  %49 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %50 = icmp ne %struct.qedf_cmd_mgr* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store %struct.qedf_cmd_mgr* null, %struct.qedf_cmd_mgr** %2, align 8
  br label %238

55:                                               ; preds = %36
  %56 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %57 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %58 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %57, i32 0, i32 4
  store %struct.qedf_ctx* %56, %struct.qedf_ctx** %58, align 8
  %59 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %60 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %59, i32 0, i32 3
  %61 = call i32 @spin_lock_init(i32* %60)
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %133, %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %136

66:                                               ; preds = %62
  %67 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %68 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %67, i32 0, i32 2
  %69 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %69, i64 %71
  store %struct.qedf_ioreq* %72, %struct.qedf_ioreq** %6, align 8
  %73 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %74 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %73, i32 0, i32 6
  %75 = load i32, i32* @qedf_cmd_timeout, align 4
  %76 = call i32 @INIT_DELAYED_WORK(i32* %74, i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, i64* %7, align 8
  %79 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %80 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %79, i32 0, i32 5
  store i64 %77, i64* %80, align 8
  %81 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %82 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %81, i32 0, i32 4
  %83 = load i32, i32* @qedf_handle_rrq, align 4
  %84 = call i32 @INIT_DELAYED_WORK(i32* %82, i32 %83)
  %85 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %86 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* @QEDF_SCSI_SENSE_BUFFERSIZE, align 4
  %90 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %91 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %90, i32 0, i32 3
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @dma_alloc_coherent(i32* %88, i32 %89, i32* %91, i32 %92)
  %94 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %95 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %97 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %66
  %101 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %235

104:                                              ; preds = %66
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i8* @kzalloc(i32 1, i32 %105)
  %107 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %108 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %110 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %104
  %114 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %115 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %114, i32 0, i32 0
  %116 = load i32, i32* %8, align 4
  %117 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %116)
  br label %235

118:                                              ; preds = %104
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i8* @kzalloc(i32 4, i32 %119)
  %121 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %122 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %121, i32 0, i32 0
  store i8* %120, i8** %122, align 8
  %123 = load %struct.qedf_ioreq*, %struct.qedf_ioreq** %6, align 8
  %124 = getelementptr inbounds %struct.qedf_ioreq, %struct.qedf_ioreq* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %118
  %128 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %129 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %128, i32 0, i32 0
  %130 = load i32, i32* %8, align 4
  %131 = call i32 (i32*, i8*, ...) @QEDF_ERR(i32* %129, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %130)
  br label %235

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %62

136:                                              ; preds = %62
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @GFP_KERNEL, align 4
  %139 = call %struct.io_bdt** @kmalloc_array(i32 %137, i32 8, i32 %138)
  %140 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %141 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %140, i32 0, i32 1
  store %struct.io_bdt** %139, %struct.io_bdt*** %141, align 8
  %142 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %143 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %142, i32 0, i32 1
  %144 = load %struct.io_bdt**, %struct.io_bdt*** %143, align 8
  %145 = icmp ne %struct.io_bdt** %144, null
  br i1 %145, label %150, label %146

146:                                              ; preds = %136
  %147 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %148 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %147, i32 0, i32 0
  %149 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %148, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  br label %235

150:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %178, %150
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %181

155:                                              ; preds = %151
  %156 = load i32, i32* @GFP_KERNEL, align 4
  %157 = call %struct.io_bdt* @kmalloc(i32 16, i32 %156)
  %158 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %159 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %158, i32 0, i32 1
  %160 = load %struct.io_bdt**, %struct.io_bdt*** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.io_bdt*, %struct.io_bdt** %160, i64 %162
  store %struct.io_bdt* %157, %struct.io_bdt** %163, align 8
  %164 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %165 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %164, i32 0, i32 1
  %166 = load %struct.io_bdt**, %struct.io_bdt*** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.io_bdt*, %struct.io_bdt** %166, i64 %168
  %170 = load %struct.io_bdt*, %struct.io_bdt** %169, align 8
  %171 = icmp ne %struct.io_bdt* %170, null
  br i1 %171, label %177, label %172

172:                                              ; preds = %155
  %173 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %174 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %173, i32 0, i32 0
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %175)
  br label %235

177:                                              ; preds = %155
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %151

181:                                              ; preds = %151
  store i32 0, i32* %8, align 4
  br label %182

182:                                              ; preds = %218, %181
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %221

186:                                              ; preds = %182
  %187 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %188 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %187, i32 0, i32 1
  %189 = load %struct.io_bdt**, %struct.io_bdt*** %188, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.io_bdt*, %struct.io_bdt** %189, i64 %191
  %193 = load %struct.io_bdt*, %struct.io_bdt** %192, align 8
  store %struct.io_bdt* %193, %struct.io_bdt** %5, align 8
  %194 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %195 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %194, i32 0, i32 1
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 0
  %198 = load i32, i32* @QEDF_MAX_BDS_PER_CMD, align 4
  %199 = sext i32 %198 to i64
  %200 = mul i64 %199, 4
  %201 = trunc i64 %200 to i32
  %202 = load %struct.io_bdt*, %struct.io_bdt** %5, align 8
  %203 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %202, i32 0, i32 1
  %204 = load i32, i32* @GFP_KERNEL, align 4
  %205 = call i8* @dma_alloc_coherent(i32* %197, i32 %201, i32* %203, i32 %204)
  %206 = load %struct.io_bdt*, %struct.io_bdt** %5, align 8
  %207 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  %208 = load %struct.io_bdt*, %struct.io_bdt** %5, align 8
  %209 = getelementptr inbounds %struct.io_bdt, %struct.io_bdt* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %186
  %213 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %213, i32 0, i32 0
  %215 = load i32, i32* %8, align 4
  %216 = call i32 (i32*, i8*, ...) @QEDF_WARN(i32* %214, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %215)
  br label %235

217:                                              ; preds = %186
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  br label %182

221:                                              ; preds = %182
  %222 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %223 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %222, i32 0, i32 0
  %224 = load i32, i32* %9, align 4
  %225 = call i32 @atomic_set(i32* %223, i32 %224)
  %226 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %227 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %226, i32 0, i32 0
  %228 = load i32, i32* @QEDF_LOG_IO, align 4
  %229 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %230 = getelementptr inbounds %struct.qedf_cmd_mgr, %struct.qedf_cmd_mgr* %229, i32 0, i32 0
  %231 = call i32 @atomic_read(i32* %230)
  %232 = sext i32 %231 to i64
  %233 = call i32 (i32*, i32, i8*, i64, ...) @QEDF_INFO(i32* %227, i32 %228, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i64 %232)
  %234 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  store %struct.qedf_cmd_mgr* %234, %struct.qedf_cmd_mgr** %2, align 8
  br label %238

235:                                              ; preds = %212, %172, %146, %127, %113, %100
  %236 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %4, align 8
  %237 = call i32 @qedf_cmd_mgr_free(%struct.qedf_cmd_mgr* %236)
  store %struct.qedf_cmd_mgr* null, %struct.qedf_cmd_mgr** %2, align 8
  br label %238

238:                                              ; preds = %235, %221, %51, %30, %18
  %239 = load %struct.qedf_cmd_mgr*, %struct.qedf_cmd_mgr** %2, align 8
  ret %struct.qedf_cmd_mgr* %239
}

declare dso_local i32 @QEDF_ERR(i32*, i8*, ...) #1

declare dso_local i32 @QEDF_WARN(i32*, i8*, ...) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, i64, ...) #1

declare dso_local %struct.qedf_cmd_mgr* @vzalloc(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.io_bdt** @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.io_bdt* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @qedf_cmd_mgr_free(%struct.qedf_cmd_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
