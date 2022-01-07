; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_load_risc_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_load_risc_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.fwdt*, %struct.req_que** }
%struct.fwdt = type { i32*, i32 }
%struct.req_que = type { i64, i32 }

@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"FW: Loading firmware from flash (%x).\0A\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Unable to verify the integrity of flash firmware image.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Firmware data: %08x %08x %08x %08x.\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FA_RISC_CODE_SEGMENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"-> Loading segment %u...\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"-> Loading fragment %u: %#x <- %#x (%#lx dwords)...\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"-> Failed load firmware fragment %u.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@BIT_9 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"-> templates = %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"-> fwdt%u template array at %#x (%#x dwords)\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"-> fwdt%u failed to read array\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"-> fwdt%u template allocate template %#x words...\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"-> fwdt%u failed allocate template.\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"-> fwdt%u failed template validate\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"-> fwdt%u template size %#lx bytes (%#lx words)\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"-> fwdt%u template exceeds array (%-lu bytes)\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"-> fwdt%u loaded template ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32)* @qla24xx_load_risc_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_load_risc_flash(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.qla_hw_data*, align 8
  %20 = alloca %struct.req_que*, align 8
  %21 = alloca %struct.fwdt*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %18, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  store %struct.qla_hw_data* %24, %struct.qla_hw_data** %19, align 8
  %25 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %26 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %25, i32 0, i32 2
  %27 = load %struct.req_que**, %struct.req_que*** %26, align 8
  %28 = getelementptr inbounds %struct.req_que*, %struct.req_que** %27, i64 0
  %29 = load %struct.req_que*, %struct.req_que** %28, align 8
  store %struct.req_que* %29, %struct.req_que** %20, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 1
  %32 = load %struct.fwdt*, %struct.fwdt** %31, align 8
  store %struct.fwdt* %32, %struct.fwdt** %21, align 8
  %33 = load i32, i32* @ql_dbg_init, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %33, %struct.TYPE_7__* %34, i32 139, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.req_que*, %struct.req_que** %20, align 8
  %38 = getelementptr inbounds %struct.req_que, %struct.req_que* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %15, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %42, i32* %43, i32 %44, i32 8)
  %46 = load i32*, i32** %15, align 8
  %47 = call i64 @qla24xx_risc_firmware_invalid(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %3
  %50 = load i32, i32* @ql_log_fatal, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %50, %struct.TYPE_7__* %51, i32 140, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ql_log_fatal, align 4
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %15, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %53, %struct.TYPE_7__* %54, i32 141, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %68, i32* %4, align 4
  br label %362

69:                                               ; preds = %3
  %70 = load %struct.req_que*, %struct.req_que** %20, align 8
  %71 = getelementptr inbounds %struct.req_que, %struct.req_que* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %15, align 8
  %75 = load i32*, i32** %6, align 8
  store i32 0, i32* %75, align 4
  %76 = load i32, i32* @FA_RISC_CODE_SEGMENTS, align 4
  store i32 %76, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %183, %69
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %186

81:                                               ; preds = %77
  %82 = load i32, i32* @ql_dbg_init, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %82, %struct.TYPE_7__* %83, i32 141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %86, i32* %87, i32 %88, i32 10)
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be32_to_cpu(i32 %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be32_to_cpu(i32 %96)
  store i32 %97, i32* %17, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %81
  %102 = load i32, i32* %16, align 4
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32*, i32** %15, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 9
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @be32_to_cpu(i32 %106)
  store i32 %107, i32* %18, align 4
  br label %108

108:                                              ; preds = %101, %81
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = ashr i32 %111, 2
  store i32 %112, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %179, %108
  %114 = load i32, i32* %17, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %182

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %17, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %17, align 4
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = load i32, i32* @ql_dbg_init, align 4
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %123, %struct.TYPE_7__* %124, i32 142, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = load i32*, i32** %15, align 8
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %130, i32* %131, i32 %132, i32 %133)
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %150, %122
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %14, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @swab32(i32 %144)
  %146 = load i32*, i32** %15, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %139
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %12, align 4
  br label %135

153:                                              ; preds = %135
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = load %struct.req_que*, %struct.req_que** %20, align 8
  %156 = getelementptr inbounds %struct.req_que, %struct.req_que* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %14, align 4
  %160 = call i32 @qla2x00_load_ram(%struct.TYPE_7__* %154, i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load i32, i32* @ql_log_fatal, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %164, %struct.TYPE_7__* %165, i32 143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %168, i32* %4, align 4
  br label %362

169:                                              ; preds = %153
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %16, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %14, align 4
  %177 = load i32, i32* %17, align 4
  %178 = sub nsw i32 %177, %176
  store i32 %178, i32* %17, align 4
  br label %179

179:                                              ; preds = %169
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %113

182:                                              ; preds = %113
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %77

186:                                              ; preds = %77
  %187 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %188 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %196, label %190

190:                                              ; preds = %186
  %191 = load %struct.qla_hw_data*, %struct.qla_hw_data** %19, align 8
  %192 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %195, i32* %4, align 4
  br label %362

196:                                              ; preds = %190, %186
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* @BIT_9, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 2, i32 1
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* @ql_dbg_init, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %205 = load i32, i32* %9, align 4
  %206 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %203, %struct.TYPE_7__* %204, i32 352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %205)
  store i32 0, i32* %13, align 4
  br label %207

207:                                              ; preds = %339, %196
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %344

211:                                              ; preds = %207
  %212 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %213 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %221

216:                                              ; preds = %211
  %217 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %218 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @vfree(i32* %219)
  br label %221

221:                                              ; preds = %216, %211
  %222 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %223 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %222, i32 0, i32 0
  store i32* null, i32** %223, align 8
  %224 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %225 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %224, i32 0, i32 1
  store i32 0, i32* %225, align 8
  %226 = load %struct.req_que*, %struct.req_que** %20, align 8
  %227 = getelementptr inbounds %struct.req_que, %struct.req_que* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to i8*
  %230 = bitcast i8* %229 to i32*
  store i32* %230, i32** %15, align 8
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %232 = load i32*, i32** %15, align 8
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %231, i32* %232, i32 %233, i32 7)
  %235 = load i32*, i32** %15, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @be32_to_cpu(i32 %237)
  store i32 %238, i32* %17, align 4
  %239 = load i32, i32* @ql_dbg_init, align 4
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %241 = load i32, i32* %13, align 4
  %242 = load i32, i32* %7, align 4
  %243 = load i32, i32* %17, align 4
  %244 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %239, %struct.TYPE_7__* %240, i32 353, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %17, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %221
  %248 = load i32, i32* %17, align 4
  %249 = xor i32 %248, -1
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %247, %221
  %252 = load i32, i32* @ql_dbg_init, align 4
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %254 = load i32, i32* %13, align 4
  %255 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %252, %struct.TYPE_7__* %253, i32 354, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %254)
  br label %346

256:                                              ; preds = %247
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 7
  store i32 %258, i32* %7, align 4
  %259 = load i32, i32* %17, align 4
  %260 = sub nsw i32 %259, 8
  store i32 %260, i32* %17, align 4
  %261 = load i32, i32* @ql_dbg_init, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %17, align 4
  %265 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %261, %struct.TYPE_7__* %262, i32 355, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i32 %263, i32 %264)
  %266 = load i32, i32* %17, align 4
  %267 = sext i32 %266 to i64
  %268 = mul i64 %267, 4
  %269 = trunc i64 %268 to i32
  %270 = call i32* @vmalloc(i32 %269)
  %271 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %272 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %271, i32 0, i32 0
  store i32* %270, i32** %272, align 8
  %273 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %274 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %282, label %277

277:                                              ; preds = %256
  %278 = load i32, i32* @ql_log_warn, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %280 = load i32, i32* %13, align 4
  %281 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %278, %struct.TYPE_7__* %279, i32 356, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %280)
  br label %346

282:                                              ; preds = %256
  %283 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %284 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  store i32* %285, i32** %15, align 8
  %286 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %287 = load i32*, i32** %15, align 8
  %288 = load i32, i32* %7, align 4
  %289 = load i32, i32* %17, align 4
  %290 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %286, i32* %287, i32 %288, i32 %289)
  %291 = load i32*, i32** %15, align 8
  %292 = call i32 @qla27xx_fwdt_template_valid(i32* %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %299, label %294

294:                                              ; preds = %282
  %295 = load i32, i32* @ql_log_warn, align 4
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %297 = load i32, i32* %13, align 4
  %298 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %295, %struct.TYPE_7__* %296, i32 357, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %297)
  br label %346

299:                                              ; preds = %282
  %300 = load i32*, i32** %15, align 8
  %301 = call i32 @qla27xx_fwdt_template_size(i32* %300)
  store i32 %301, i32* %14, align 4
  %302 = load i32, i32* @ql_dbg_init, align 4
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %304 = load i32, i32* %13, align 4
  %305 = load i32, i32* %14, align 4
  %306 = load i32, i32* %14, align 4
  %307 = sext i32 %306 to i64
  %308 = udiv i64 %307, 4
  %309 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %302, %struct.TYPE_7__* %303, i32 358, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i32 %304, i32 %305, i64 %308)
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = mul i64 %313, 4
  %315 = icmp ugt i64 %311, %314
  br i1 %315, label %316, label %327

316:                                              ; preds = %299
  %317 = load i32, i32* @ql_log_warn, align 4
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %319 = load i32, i32* %13, align 4
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = load i32, i32* %17, align 4
  %323 = sext i32 %322 to i64
  %324 = mul i64 %323, 4
  %325 = sub i64 %321, %324
  %326 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, ...) @ql_log(i32 %317, %struct.TYPE_7__* %318, i32 359, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i32 %319, i64 %325)
  br label %346

327:                                              ; preds = %299
  %328 = load i32, i32* %14, align 4
  %329 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %330 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* @ql_dbg_init, align 4
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %333 = load i32, i32* %13, align 4
  %334 = call i32 (i32, %struct.TYPE_7__*, i32, i8*, i32, ...) @ql_dbg(i32 %331, %struct.TYPE_7__* %332, i32 360, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %333)
  %335 = load i32, i32* %17, align 4
  %336 = add nsw i32 %335, 1
  %337 = load i32, i32* %7, align 4
  %338 = add nsw i32 %337, %336
  store i32 %338, i32* %7, align 4
  br label %339

339:                                              ; preds = %327
  %340 = load i32, i32* %13, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %13, align 4
  %342 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %343 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %342, i32 1
  store %struct.fwdt* %343, %struct.fwdt** %21, align 8
  br label %207

344:                                              ; preds = %207
  %345 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %345, i32* %4, align 4
  br label %362

346:                                              ; preds = %316, %294, %277, %251
  %347 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %348 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = icmp ne i32* %349, null
  br i1 %350, label %351, label %356

351:                                              ; preds = %346
  %352 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %353 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %352, i32 0, i32 0
  %354 = load i32*, i32** %353, align 8
  %355 = call i32 @vfree(i32* %354)
  br label %356

356:                                              ; preds = %351, %346
  %357 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %358 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %357, i32 0, i32 0
  store i32* null, i32** %358, align 8
  %359 = load %struct.fwdt*, %struct.fwdt** %21, align 8
  %360 = getelementptr inbounds %struct.fwdt, %struct.fwdt* %359, i32 0, i32 1
  store i32 0, i32* %360, align 8
  %361 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %361, i32* %4, align 4
  br label %362

362:                                              ; preds = %356, %344, %194, %163, %49
  %363 = load i32, i32* %4, align 4
  ret i32 %363
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*, i32, ...) #1

declare dso_local i32 @qla24xx_read_flash_data(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i64 @qla24xx_risc_firmware_invalid(i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @qla2x00_load_ram(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @qla27xx_fwdt_template_valid(i32*) #1

declare dso_local i32 @qla27xx_fwdt_template_size(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
