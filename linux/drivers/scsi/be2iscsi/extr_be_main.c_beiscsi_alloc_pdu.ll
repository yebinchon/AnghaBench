; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_pdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_alloc_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i64, %struct.iscsi_hdr*, i64, %struct.iscsi_conn*, %struct.beiscsi_io_task* }
%struct.iscsi_hdr = type { i32 }
%struct.iscsi_conn = type { %struct.beiscsi_conn* }
%struct.beiscsi_conn = type { i32, i32, %struct.TYPE_12__*, %struct.sgl_handle*, %struct.iscsi_task*, %struct.beiscsi_session*, %struct.beiscsi_hba* }
%struct.TYPE_12__ = type { %struct.iscsi_task*, i64 }
%struct.sgl_handle = type { i64 }
%struct.beiscsi_session = type { i32 }
%struct.beiscsi_hba = type { %struct.hwi_controller* }
%struct.hwi_controller = type { %struct.hwi_wrb_context* }
%struct.hwi_wrb_context = type { i32 }
%struct.beiscsi_io_task = type { %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_12__*, %struct.sgl_handle*, i32, i32*, %struct.beiscsi_conn*, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_IO = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"BM_%d : Alloc of IO_SGL_ICD Failedfor the CID : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"BM_%d : Alloc of WRB_HANDLE Failedfor the CID : %d\0A\00", align 1
@ISCSI_OPCODE_MASK = common dso_local global i32 0, align 4
@ISCSI_OP_LOGIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"BM_%d : Alloc of MGMT_SGL_ICD Failedfor the CID : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*, i32)* @beiscsi_alloc_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_alloc_pdu(%struct.iscsi_task* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.beiscsi_io_task*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.beiscsi_conn*, align 8
  %9 = alloca %struct.beiscsi_hba*, align 8
  %10 = alloca %struct.hwi_wrb_context*, align 8
  %11 = alloca %struct.hwi_controller*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.beiscsi_session*, align 8
  %15 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %16, i32 0, i32 5
  %18 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %17, align 8
  store %struct.beiscsi_io_task* %18, %struct.beiscsi_io_task** %6, align 8
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 4
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %20, align 8
  store %struct.iscsi_conn* %21, %struct.iscsi_conn** %7, align 8
  %22 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %23 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %22, i32 0, i32 0
  %24 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %23, align 8
  store %struct.beiscsi_conn* %24, %struct.beiscsi_conn** %8, align 8
  %25 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %26 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %25, i32 0, i32 6
  %27 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %26, align 8
  store %struct.beiscsi_hba* %27, %struct.beiscsi_hba** %9, align 8
  store i64 0, i64* %13, align 8
  %28 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %29 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %28, i32 0, i32 5
  %30 = load %struct.beiscsi_session*, %struct.beiscsi_session** %29, align 8
  store %struct.beiscsi_session* %30, %struct.beiscsi_session** %14, align 8
  %31 = load %struct.beiscsi_session*, %struct.beiscsi_session** %14, align 8
  %32 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_ATOMIC, align 4
  %35 = call %struct.TYPE_13__* @dma_pool_alloc(i32 %33, i32 %34, i32* %15)
  %36 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %37 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %36, i32 0, i32 0
  store %struct.TYPE_13__* %35, %struct.TYPE_13__** %37, align 8
  %38 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %39 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = icmp ne %struct.TYPE_13__* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %340

45:                                               ; preds = %2
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %48 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %46, i32* %51, align 8
  %52 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %57 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  %58 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %59 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %60 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %59, i32 0, i32 6
  store %struct.beiscsi_conn* %58, %struct.beiscsi_conn** %60, align 8
  %61 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %62 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = bitcast %struct.TYPE_8__* %64 to %struct.iscsi_hdr*
  %66 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %67 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %66, i32 0, i32 2
  store %struct.iscsi_hdr* %65, %struct.iscsi_hdr** %67, align 8
  %68 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %69 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %68, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %71 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %70, i32 0, i32 3
  store %struct.sgl_handle* null, %struct.sgl_handle** %71, align 8
  %72 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %73 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %72, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %73, align 8
  %74 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %75 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %123

78:                                               ; preds = %45
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %80 = call %struct.sgl_handle* @alloc_io_sgl_handle(%struct.beiscsi_hba* %79)
  %81 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %82 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %81, i32 0, i32 3
  store %struct.sgl_handle* %80, %struct.sgl_handle** %82, align 8
  %83 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %84 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %83, i32 0, i32 3
  %85 = load %struct.sgl_handle*, %struct.sgl_handle** %84, align 8
  %86 = icmp ne %struct.sgl_handle* %85, null
  br i1 %86, label %97, label %87

87:                                               ; preds = %78
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %91 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %94 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @beiscsi_log(%struct.beiscsi_hba* %88, i32 %89, i32 %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %296

97:                                               ; preds = %78
  %98 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %99 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %100 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %103 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %102, i32 0, i32 4
  %104 = call i8* @alloc_wrb_handle(%struct.beiscsi_hba* %98, i32 %101, i32* %103)
  %105 = bitcast i8* %104 to %struct.TYPE_12__*
  %106 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %107 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %106, i32 0, i32 2
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %107, align 8
  %108 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %109 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %108, i32 0, i32 2
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = icmp ne %struct.TYPE_12__* %110, null
  br i1 %111, label %122, label %112

112:                                              ; preds = %97
  %113 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %116 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %119 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @beiscsi_log(%struct.beiscsi_hba* %113, i32 %114, i32 %117, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %282

122:                                              ; preds = %97
  br label %254

123:                                              ; preds = %45
  %124 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %125 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %124, i32 0, i32 5
  store i32* null, i32** %125, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @ISCSI_OPCODE_MASK, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @ISCSI_OP_LOGIN, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %208

131:                                              ; preds = %123
  %132 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %133 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %134 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %133, i32 0, i32 4
  store %struct.iscsi_task* %132, %struct.iscsi_task** %134, align 8
  %135 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %136 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %196, label %139

139:                                              ; preds = %131
  %140 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %141 = call %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba* %140)
  %142 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %143 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %142, i32 0, i32 3
  store %struct.sgl_handle* %141, %struct.sgl_handle** %143, align 8
  %144 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %145 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %144, i32 0, i32 3
  %146 = load %struct.sgl_handle*, %struct.sgl_handle** %145, align 8
  %147 = icmp ne %struct.sgl_handle* %146, null
  br i1 %147, label %158, label %148

148:                                              ; preds = %139
  %149 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %150 = load i32, i32* @KERN_ERR, align 4
  %151 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %152 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %153 = or i32 %151, %152
  %154 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %155 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @beiscsi_log(%struct.beiscsi_hba* %149, i32 %150, i32 %153, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %156)
  br label %296

158:                                              ; preds = %139
  %159 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %160 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %162 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %161, i32 0, i32 3
  %163 = load %struct.sgl_handle*, %struct.sgl_handle** %162, align 8
  %164 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %165 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %164, i32 0, i32 3
  store %struct.sgl_handle* %163, %struct.sgl_handle** %165, align 8
  %166 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %167 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %168 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %171 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %170, i32 0, i32 4
  %172 = call i8* @alloc_wrb_handle(%struct.beiscsi_hba* %166, i32 %169, i32* %171)
  %173 = bitcast i8* %172 to %struct.TYPE_12__*
  %174 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %175 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %174, i32 0, i32 2
  store %struct.TYPE_12__* %173, %struct.TYPE_12__** %175, align 8
  %176 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %177 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %176, i32 0, i32 2
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = icmp ne %struct.TYPE_12__* %178, null
  br i1 %179, label %190, label %180

180:                                              ; preds = %158
  %181 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %182 = load i32, i32* @KERN_ERR, align 4
  %183 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %184 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %187 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @beiscsi_log(%struct.beiscsi_hba* %181, i32 %182, i32 %185, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  br label %288

190:                                              ; preds = %158
  %191 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %192 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %191, i32 0, i32 2
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %195 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %194, i32 0, i32 2
  store %struct.TYPE_12__* %193, %struct.TYPE_12__** %195, align 8
  br label %207

196:                                              ; preds = %131
  %197 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %198 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %197, i32 0, i32 3
  %199 = load %struct.sgl_handle*, %struct.sgl_handle** %198, align 8
  %200 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %201 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %200, i32 0, i32 3
  store %struct.sgl_handle* %199, %struct.sgl_handle** %201, align 8
  %202 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %203 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %202, i32 0, i32 2
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %203, align 8
  %205 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %206 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %205, i32 0, i32 2
  store %struct.TYPE_12__* %204, %struct.TYPE_12__** %206, align 8
  br label %207

207:                                              ; preds = %196, %190
  br label %253

208:                                              ; preds = %123
  %209 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %210 = call %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba* %209)
  %211 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %212 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %211, i32 0, i32 3
  store %struct.sgl_handle* %210, %struct.sgl_handle** %212, align 8
  %213 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %214 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %213, i32 0, i32 3
  %215 = load %struct.sgl_handle*, %struct.sgl_handle** %214, align 8
  %216 = icmp ne %struct.sgl_handle* %215, null
  br i1 %216, label %227, label %217

217:                                              ; preds = %208
  %218 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %219 = load i32, i32* @KERN_ERR, align 4
  %220 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %221 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %222 = or i32 %220, %221
  %223 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %224 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @beiscsi_log(%struct.beiscsi_hba* %218, i32 %219, i32 %222, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  br label %296

227:                                              ; preds = %208
  %228 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %229 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %230 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %233 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %232, i32 0, i32 4
  %234 = call i8* @alloc_wrb_handle(%struct.beiscsi_hba* %228, i32 %231, i32* %233)
  %235 = bitcast i8* %234 to %struct.TYPE_12__*
  %236 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %237 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %236, i32 0, i32 2
  store %struct.TYPE_12__* %235, %struct.TYPE_12__** %237, align 8
  %238 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %239 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %238, i32 0, i32 2
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %239, align 8
  %241 = icmp ne %struct.TYPE_12__* %240, null
  br i1 %241, label %252, label %242

242:                                              ; preds = %227
  %243 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %244 = load i32, i32* @KERN_ERR, align 4
  %245 = load i32, i32* @BEISCSI_LOG_IO, align 4
  %246 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %247 = or i32 %245, %246
  %248 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %249 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @beiscsi_log(%struct.beiscsi_hba* %243, i32 %244, i32 %247, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %250)
  br label %288

252:                                              ; preds = %227
  br label %253

253:                                              ; preds = %252, %207
  br label %254

254:                                              ; preds = %253, %122
  %255 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %256 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %255, i32 0, i32 2
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 1
  %259 = load i64, i64* %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = shl i32 %260, 16
  %262 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %263 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %262, i32 0, i32 3
  %264 = load %struct.sgl_handle*, %struct.sgl_handle** %263, align 8
  %265 = getelementptr inbounds %struct.sgl_handle, %struct.sgl_handle* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = trunc i64 %266 to i32
  %268 = or i32 %261, %267
  %269 = call i64 @cpu_to_be32(i32 %268)
  %270 = inttoptr i64 %269 to i8*
  store i8* %270, i8** %12, align 8
  %271 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %272 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %273 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %272, i32 0, i32 2
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  store %struct.iscsi_task* %271, %struct.iscsi_task** %275, align 8
  %276 = load i8*, i8** %12, align 8
  %277 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %278 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %277, i32 0, i32 0
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  store i8* %276, i8** %281, align 8
  store i32 0, i32* %3, align 4
  br label %340

282:                                              ; preds = %112
  %283 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %284 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %285 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %284, i32 0, i32 3
  %286 = load %struct.sgl_handle*, %struct.sgl_handle** %285, align 8
  %287 = call i32 @free_io_sgl_handle(%struct.beiscsi_hba* %283, %struct.sgl_handle* %286)
  br label %296

288:                                              ; preds = %242, %180
  %289 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %290 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %291 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %290, i32 0, i32 3
  %292 = load %struct.sgl_handle*, %struct.sgl_handle** %291, align 8
  %293 = call i32 @free_mgmt_sgl_handle(%struct.beiscsi_hba* %289, %struct.sgl_handle* %292)
  %294 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %295 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %294, i32 0, i32 3
  store %struct.sgl_handle* null, %struct.sgl_handle** %295, align 8
  br label %296

296:                                              ; preds = %288, %282, %217, %148, %87
  %297 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %298 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %297, i32 0, i32 0
  %299 = load %struct.hwi_controller*, %struct.hwi_controller** %298, align 8
  store %struct.hwi_controller* %299, %struct.hwi_controller** %11, align 8
  %300 = load %struct.beiscsi_conn*, %struct.beiscsi_conn** %8, align 8
  %301 = getelementptr inbounds %struct.beiscsi_conn, %struct.beiscsi_conn* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @BE_GET_CRI_FROM_CID(i32 %302)
  store i64 %303, i64* %13, align 8
  %304 = load %struct.hwi_controller*, %struct.hwi_controller** %11, align 8
  %305 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %304, i32 0, i32 0
  %306 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %305, align 8
  %307 = load i64, i64* %13, align 8
  %308 = getelementptr inbounds %struct.hwi_wrb_context, %struct.hwi_wrb_context* %306, i64 %307
  store %struct.hwi_wrb_context* %308, %struct.hwi_wrb_context** %10, align 8
  %309 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %310 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %309, i32 0, i32 2
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = icmp ne %struct.TYPE_12__* %311, null
  br i1 %312, label %313, label %320

313:                                              ; preds = %296
  %314 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %9, align 8
  %315 = load %struct.hwi_wrb_context*, %struct.hwi_wrb_context** %10, align 8
  %316 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %317 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %316, i32 0, i32 2
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = call i32 @free_wrb_handle(%struct.beiscsi_hba* %314, %struct.hwi_wrb_context* %315, %struct.TYPE_12__* %318)
  br label %320

320:                                              ; preds = %313, %296
  %321 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %322 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %321, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %322, align 8
  %323 = load %struct.beiscsi_session*, %struct.beiscsi_session** %14, align 8
  %324 = getelementptr inbounds %struct.beiscsi_session, %struct.beiscsi_session* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %327 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %326, i32 0, i32 0
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %327, align 8
  %329 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %330 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @dma_pool_free(i32 %325, %struct.TYPE_13__* %328, i32 %334)
  %336 = load %struct.beiscsi_io_task*, %struct.beiscsi_io_task** %6, align 8
  %337 = getelementptr inbounds %struct.beiscsi_io_task, %struct.beiscsi_io_task* %336, i32 0, i32 0
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %337, align 8
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %3, align 4
  br label %340

340:                                              ; preds = %320, %254, %42
  %341 = load i32, i32* %3, align 4
  ret i32 %341
}

declare dso_local %struct.TYPE_13__* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local %struct.sgl_handle* @alloc_io_sgl_handle(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, i32) #1

declare dso_local i8* @alloc_wrb_handle(%struct.beiscsi_hba*, i32, i32*) #1

declare dso_local %struct.sgl_handle* @alloc_mgmt_sgl_handle(%struct.beiscsi_hba*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @free_io_sgl_handle(%struct.beiscsi_hba*, %struct.sgl_handle*) #1

declare dso_local i32 @free_mgmt_sgl_handle(%struct.beiscsi_hba*, %struct.sgl_handle*) #1

declare dso_local i64 @BE_GET_CRI_FROM_CID(i32) #1

declare dso_local i32 @free_wrb_handle(%struct.beiscsi_hba*, %struct.hwi_wrb_context*, %struct.TYPE_12__*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
