; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_find_flt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_find_flt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que** }
%struct.req_que = type { i64 }
%struct.qla_flt_location = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@__const.qla2xxx_find_flt_start.locations = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@FA_FLASH_LAYOUT_ADDR_24 = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR_81 = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR_82 = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR_83 = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR_28 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"QFLT\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Inconsistent FLTL detected: checksum=0x%x.\0A\00", align 1
@ql_dbg_init = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"FLTL[%s] = 0x%x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @qla2xxx_find_flt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_find_flt_start(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.qla_hw_data*, align 8
  %14 = alloca %struct.req_que*, align 8
  %15 = alloca %struct.qla_flt_location*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([2 x i8*]* @__const.qla2xxx_find_flt_start.locations to i8*), i64 16, i1 false)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %13, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load %struct.req_que**, %struct.req_que*** %25, align 8
  %27 = getelementptr inbounds %struct.req_que*, %struct.req_que** %26, i64 0
  %28 = load %struct.req_que*, %struct.req_que** %27, align 8
  store %struct.req_que* %28, %struct.req_que** %14, align 8
  %29 = load %struct.req_que*, %struct.req_que** %14, align 8
  %30 = getelementptr inbounds %struct.req_que, %struct.req_que* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = bitcast i8* %32 to %struct.qla_flt_location*
  store %struct.qla_flt_location* %33, %struct.qla_flt_location** %15, align 8
  %34 = load %struct.req_que*, %struct.req_que** %14, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %16, align 8
  %39 = load %struct.req_que*, %struct.req_que** %14, align 8
  %40 = getelementptr inbounds %struct.req_que, %struct.req_que* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %17, align 8
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  store i8* %45, i8** %6, align 8
  %46 = load i32*, i32** %5, align 8
  store i32 0, i32* %46, align 4
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %48 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_24, align 4
  %52 = load i32*, i32** %5, align 8
  store i32 %51, i32* %52, align 4
  br label %97

53:                                               ; preds = %2
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %55 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @FA_FLASH_LAYOUT_ADDR, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %96

60:                                               ; preds = %53
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %62 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_81, align 4
  %66 = load i32*, i32** %5, align 8
  store i32 %65, i32* %66, align 4
  br label %95

67:                                               ; preds = %60
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %69 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_82, align 4
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %242

74:                                               ; preds = %67
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %76 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %80 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_83, align 4
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  br label %242

85:                                               ; preds = %78
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %87 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_28, align 4
  %91 = load i32*, i32** %5, align 8
  store i32 %90, i32* %91, align 4
  br label %242

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94, %64
  br label %96

96:                                               ; preds = %95, %57
  br label %97

97:                                               ; preds = %96, %50
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %177, %97
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i32, i32* %8, align 4
  %102 = ashr i32 %101, 2
  %103 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %99, i32* %100, i32 %102, i32 32)
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %8, align 4
  %106 = srem i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32* %108, i32** %18, align 8
  %109 = load i32*, i32** %18, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 85
  br i1 %112, label %118, label %113

113:                                              ; preds = %98
  %114 = load i32*, i32** %18, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 170
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %98
  br label %242

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %18, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 25
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 8
  %125 = load i32*, i32** %18, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 24
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %124, %127
  %129 = add nsw i32 %120, %128
  store i32 %129, i32* %9, align 4
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = load i32*, i32** %16, align 8
  %132 = load i32, i32* %9, align 4
  %133 = ashr i32 %132, 2
  %134 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %130, i32* %131, i32 %133, i32 32)
  %135 = load i32*, i32** %17, align 8
  %136 = load i32, i32* %8, align 4
  %137 = srem i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %135, i64 %138
  store i32* %139, i32** %18, align 8
  %140 = load i32*, i32** %18, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 80
  br i1 %143, label %159, label %144

144:                                              ; preds = %119
  %145 = load i32*, i32** %18, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 67
  br i1 %148, label %159, label %149

149:                                              ; preds = %144
  %150 = load i32*, i32** %18, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 73
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i32*, i32** %18, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 82
  br i1 %158, label %159, label %160

159:                                              ; preds = %154, %149, %144, %119
  br label %242

160:                                              ; preds = %154
  %161 = load i32*, i32** %18, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 21
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @BIT_7, align 4
  %165 = and i32 %163, %164
  store i32 %165, i32* %19, align 4
  %166 = load i32*, i32** %18, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 17
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 8
  %170 = load i32*, i32** %18, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 16
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %169, %172
  %174 = mul nsw i32 %173, 512
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %177

177:                                              ; preds = %160
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  %180 = xor i1 %179, true
  br i1 %180, label %98, label %181

181:                                              ; preds = %177
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %8, align 4
  %185 = ashr i32 %184, 2
  %186 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %182, i32* %183, i32 %185, i32 3)
  %187 = load %struct.qla_flt_location*, %struct.qla_flt_location** %15, align 8
  %188 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @memcmp(i32 %189, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %181
  br label %242

193:                                              ; preds = %181
  %194 = load %struct.req_que*, %struct.req_que** %14, align 8
  %195 = getelementptr inbounds %struct.req_que, %struct.req_que* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = bitcast i8* %197 to i32*
  store i32* %198, i32** %12, align 8
  store i32 3, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %199

199:                                              ; preds = %209, %193
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %200, -1
  store i32 %201, i32* %10, align 4
  %202 = icmp ne i32 %200, 0
  br i1 %202, label %203, label %212

203:                                              ; preds = %199
  %204 = load i32*, i32** %12, align 8
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le16_to_cpu(i32 %205)
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %203
  %210 = load i32*, i32** %12, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %12, align 8
  br label %199

212:                                              ; preds = %199
  %213 = load i32, i32* %11, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %212
  %216 = load i32, i32* @ql_log_fatal, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @ql_log(i32 %216, %struct.TYPE_7__* %217, i32 69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %218)
  %220 = load i64, i64* @ql_dbg_init, align 8
  %221 = load i64, i64* @ql_dbg_buffer, align 8
  %222 = add nsw i64 %220, %221
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = load %struct.qla_flt_location*, %struct.qla_flt_location** %15, align 8
  %225 = call i32 @ql_dump_buffer(i64 %222, %struct.TYPE_7__* %223, i32 270, %struct.qla_flt_location* %224, i32 12)
  %226 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %226, i32* %3, align 4
  br label %250

227:                                              ; preds = %212
  %228 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %229 = load i8*, i8** %228, align 8
  store i8* %229, i8** %6, align 8
  %230 = load %struct.qla_flt_location*, %struct.qla_flt_location** %15, align 8
  %231 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @le16_to_cpu(i32 %232)
  %234 = shl i32 %233, 16
  %235 = load %struct.qla_flt_location*, %struct.qla_flt_location** %15, align 8
  %236 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @le16_to_cpu(i32 %237)
  %239 = or i32 %234, %238
  %240 = ashr i32 %239, 2
  %241 = load i32*, i32** %5, align 8
  store i32 %240, i32* %241, align 4
  br label %242

242:                                              ; preds = %227, %192, %159, %118, %89, %82, %71
  %243 = load i64, i64* @ql_dbg_init, align 8
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = load i32*, i32** %5, align 8
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ql_dbg(i64 %243, %struct.TYPE_7__* %244, i32 70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %245, i32 %247)
  %249 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %242, %215
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #2

declare dso_local i32 @qla24xx_read_flash_data(%struct.TYPE_7__*, i32*, i32, i32) #2

declare dso_local i64 @memcmp(i32, i8*, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, i32) #2

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_7__*, i32, %struct.qla_flt_location*, i32) #2

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_7__*, i32, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
