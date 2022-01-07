; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_hwi_init_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.hwi_controller*, %struct.be_ctrl_info }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.hwi_controller = type { %struct.TYPE_8__*, %struct.hwi_context_memory* }
%struct.TYPE_8__ = type { i64 }
%struct.hwi_context_memory = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }
%struct.be_ctrl_info = type { i32 }
%struct.hd_async_context = type { i64* }

@KERN_ERR = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BM_%d : EQ not created\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"BM_%d : Unsupported fw version\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"BM_%d : CQ not created\0A\00", align 1
@BEISCSI_ULP_COUNT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"BM_%d : Default Header not created for ULP : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"BM_%d : Default Data not created for ULP : %d\0A\00", align 1
@BEISCSI_DEFQ_HDR = common dso_local global i32 0, align 4
@BEISCSI_DEFQ_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"BM_%d : Post SGL Pages Failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"BM_%d : Template HDR Posting for CXN Failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"BM_%d : WRB Rings not created\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"BM_%d : hwi_init_port success\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"BM_%d : hwi_init_port failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beiscsi_hba*)* @hwi_init_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwi_init_port(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.beiscsi_hba*, align 8
  %4 = alloca %struct.hwi_controller*, align 8
  %5 = alloca %struct.hwi_context_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.be_ctrl_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.hd_async_context*, align 8
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %3, align 8
  %14 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %15 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %14, i32 0, i32 4
  store %struct.be_ctrl_info* %15, %struct.be_ctrl_info** %7, align 8
  %16 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %17 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %16, i32 0, i32 3
  %18 = load %struct.hwi_controller*, %struct.hwi_controller** %17, align 8
  store %struct.hwi_controller* %18, %struct.hwi_controller** %4, align 8
  %19 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %20 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %19, i32 0, i32 1
  %21 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %20, align 8
  store %struct.hwi_context_memory* %21, %struct.hwi_context_memory** %5, align 8
  %22 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %23 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %22, i32 0, i32 0
  store i32 255, i32* %23, align 8
  %24 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %25 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %26 = call i32 @beiscsi_create_eqs(%struct.beiscsi_hba* %24, %struct.hwi_context_memory* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %31 = load i32, i32* @KERN_ERR, align 4
  %32 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %33 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %222

34:                                               ; preds = %1
  %35 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %36 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %37 = call i32 @be_mcc_queues_create(%struct.beiscsi_hba* %35, %struct.hwi_context_memory* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %222

41:                                               ; preds = %34
  %42 = load %struct.be_ctrl_info*, %struct.be_ctrl_info** %7, align 8
  %43 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %44 = call i32 @beiscsi_check_supported_fw(%struct.be_ctrl_info* %42, %struct.beiscsi_hba* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %51 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %222

52:                                               ; preds = %41
  %53 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %54 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %55 = call i32 @beiscsi_create_cqs(%struct.beiscsi_hba* %53, %struct.hwi_context_memory* %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %60 = load i32, i32* @KERN_ERR, align 4
  %61 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %62 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %222

63:                                               ; preds = %52
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %130, %63
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @BEISCSI_ULP_COUNT, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %133

68:                                               ; preds = %64
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %71 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = call i64 @test_bit(i32 %69, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %129

75:                                               ; preds = %68
  %76 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %77 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %78, i64 %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = mul i64 %86, 4
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  %89 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %90 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %91 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @beiscsi_create_def_hdr(%struct.beiscsi_hba* %89, %struct.hwi_context_memory* %90, %struct.hwi_controller* %91, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %75
  %98 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %99 = load i32, i32* @KERN_ERR, align 4
  %100 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %222

103:                                              ; preds = %75
  %104 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %105 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %106 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @beiscsi_create_def_data(%struct.beiscsi_hba* %104, %struct.hwi_context_memory* %105, %struct.hwi_controller* %106, i32 %107, i32 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %103
  %113 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %113, i32 %114, i32 %115, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %222

118:                                              ; preds = %103
  %119 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %120 = load i32, i32* @BEISCSI_DEFQ_HDR, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @beiscsi_hdq_post_handles(%struct.beiscsi_hba* %119, i32 %120, i32 %121, i32 %122)
  %124 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %125 = load i32, i32* @BEISCSI_DEFQ_DATA, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @beiscsi_hdq_post_handles(%struct.beiscsi_hba* %124, i32 %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %118, %68
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %64

133:                                              ; preds = %64
  %134 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %135 = call i32 @beiscsi_post_pages(%struct.beiscsi_hba* %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %140 = load i32, i32* @KERN_ERR, align 4
  %141 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %142 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %139, i32 %140, i32 %141, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %222

143:                                              ; preds = %133
  %144 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %145 = call i32 @beiscsi_post_template_hdr(%struct.beiscsi_hba* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %150 = load i32, i32* @KERN_ERR, align 4
  %151 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %152 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %155 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %5, align 8
  %156 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %157 = call i32 @beiscsi_create_wrb_rings(%struct.beiscsi_hba* %154, %struct.hwi_context_memory* %155, %struct.hwi_controller* %156)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %162 = load i32, i32* @KERN_ERR, align 4
  %163 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %164 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %161, i32 %162, i32 %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %222

165:                                              ; preds = %153
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %214, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @BEISCSI_ULP_COUNT, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %217

170:                                              ; preds = %166
  store i64 0, i64* %11, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %173 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = call i64 @test_bit(i32 %171, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %213

177:                                              ; preds = %170
  store i64 0, i64* %12, align 8
  %178 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call %struct.hd_async_context* @HWI_GET_ASYNC_PDU_CTX(%struct.hwi_controller* %178, i32 %179)
  store %struct.hd_async_context* %180, %struct.hd_async_context** %13, align 8
  store i64 0, i64* %12, align 8
  br label %181

181:                                              ; preds = %209, %177
  %182 = load i64, i64* %12, align 8
  %183 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %184 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ult i64 %182, %186
  br i1 %187, label %188, label %212

188:                                              ; preds = %181
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %191 = load i64, i64* %12, align 8
  %192 = call i32 @BEISCSI_GET_ULP_FROM_CRI(%struct.hwi_controller* %190, i64 %191)
  %193 = icmp eq i32 %189, %192
  br i1 %193, label %194, label %208

194:                                              ; preds = %188
  %195 = load i64, i64* %11, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %11, align 8
  %197 = load %struct.hd_async_context*, %struct.hd_async_context** %13, align 8
  %198 = getelementptr inbounds %struct.hd_async_context, %struct.hd_async_context* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load %struct.hwi_controller*, %struct.hwi_controller** %4, align 8
  %201 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %200, i32 0, i32 0
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i64, i64* %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = getelementptr inbounds i64, i64* %199, i64 %206
  store i64 %195, i64* %207, align 8
  br label %208

208:                                              ; preds = %194, %188
  br label %209

209:                                              ; preds = %208
  %210 = load i64, i64* %12, align 8
  %211 = add i64 %210, 1
  store i64 %211, i64* %12, align 8
  br label %181

212:                                              ; preds = %181
  br label %213

213:                                              ; preds = %212, %170
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %166

217:                                              ; preds = %166
  %218 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %219 = load i32, i32* @KERN_INFO, align 4
  %220 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %221 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %218, i32 %219, i32 %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %230

222:                                              ; preds = %160, %138, %112, %97, %58, %47, %40, %29
  %223 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %224 = load i32, i32* @KERN_ERR, align 4
  %225 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %226 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %223, i32 %224, i32 %225, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  %227 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %3, align 8
  %228 = call i32 @hwi_cleanup_port(%struct.beiscsi_hba* %227)
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %2, align 4
  br label %230

230:                                              ; preds = %222, %217
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @beiscsi_create_eqs(%struct.beiscsi_hba*, %struct.hwi_context_memory*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @be_mcc_queues_create(%struct.beiscsi_hba*, %struct.hwi_context_memory*) #1

declare dso_local i32 @beiscsi_check_supported_fw(%struct.be_ctrl_info*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_create_cqs(%struct.beiscsi_hba*, %struct.hwi_context_memory*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @beiscsi_create_def_hdr(%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*, i32, i32) #1

declare dso_local i32 @beiscsi_create_def_data(%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*, i32, i32) #1

declare dso_local i32 @beiscsi_hdq_post_handles(%struct.beiscsi_hba*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_post_pages(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_post_template_hdr(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_create_wrb_rings(%struct.beiscsi_hba*, %struct.hwi_context_memory*, %struct.hwi_controller*) #1

declare dso_local %struct.hd_async_context* @HWI_GET_ASYNC_PDU_CTX(%struct.hwi_controller*, i32) #1

declare dso_local i32 @BEISCSI_GET_ULP_FROM_CRI(%struct.hwi_controller*, i64) #1

declare dso_local i32 @hwi_cleanup_port(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
