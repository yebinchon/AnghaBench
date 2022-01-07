; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_get_flash_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_get_flash_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32*, i32 }
%struct.active_regions = type { i64 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA27XX_SECONDARY_IMAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"U\AA\00", align 1
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"No matching ROM signature.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PCIR\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"PCI data struct not found pcir_adr=%x.\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Read BIOS %d.%d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Read FCODE %d.%d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"Read EFI %d.%d.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [40 x i8] c"Unrecognized code type %x at pcids %x.\0A\00", align 1
@BIT_7 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Unrecognized fw revision at %x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"Firmware revision (flash) %u.%u.%u (%x).\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Unrecognized golden fw at %#x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_get_flash_version(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qla_hw_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.active_regions, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %9, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %23, align 8
  store %struct.qla_hw_data* %24, %struct.qla_hw_data** %14, align 8
  store i32 0, i32* %15, align 4
  %25 = bitcast %struct.active_regions* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 8, i1 false)
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %27 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %403

31:                                               ; preds = %2
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %35, i32* %3, align 4
  br label %403

36:                                               ; preds = %31
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @memset(i32* %39, i32 0, i32 8)
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %42 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @memset(i32* %43, i32 0, i32 8)
  %45 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %46 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @memset(i32* %47, i32 0, i32 8)
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @memset(i32* %51, i32 0, i32 8)
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %54 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 2
  store i32 %56, i32* %7, align 4
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %58 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %36
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %62 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %60, %36
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = call i32 @qla27xx_get_active_image(%struct.TYPE_8__* %65, %struct.active_regions* %16)
  %67 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %16, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @QLA27XX_SECONDARY_IMAGE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %73 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 2
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %64
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %247, %77
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i32, i32* %7, align 4
  %83 = ashr i32 %82, 2
  %84 = call i32 @qla24xx_read_flash_data(%struct.TYPE_8__* %79, i8* %81, i32 %83, i32 32)
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* %7, align 4
  %87 = srem i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %85, i64 %88
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %10, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i64 @memcmp(i32* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %78
  %95 = load i32, i32* @ql_log_fatal, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %97 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %95, %struct.TYPE_8__* %96, i32 89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %98, i32* %6, align 4
  br label %251

99:                                               ; preds = %78
  %100 = load i32, i32* %7, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 25
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 8
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 24
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %104, %107
  %109 = add nsw i32 %100, %108
  store i32 %109, i32* %8, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = load i32, i32* %8, align 4
  %114 = ashr i32 %113, 2
  %115 = call i32 @qla24xx_read_flash_data(%struct.TYPE_8__* %110, i8* %112, i32 %114, i32 32)
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = srem i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr i8, i8* %116, i64 %119
  %121 = bitcast i8* %120 to i32*
  store i32* %121, i32** %10, align 8
  %122 = load i32*, i32** %10, align 8
  %123 = call i64 @memcmp(i32* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %99
  %126 = load i32, i32* @ql_log_fatal, align 4
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %126, %struct.TYPE_8__* %127, i32 90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @ql_dbg_init, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32 @ql_dump_buffer(i32 %130, %struct.TYPE_8__* %131, i32 89, i32* %132, i32 32)
  %134 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %134, i32* %6, align 4
  br label %251

135:                                              ; preds = %99
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 20
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  switch i32 %139, label %224 [
    i32 130, label %140
    i32 128, label %168
    i32 129, label %196
  ]

140:                                              ; preds = %135
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 18
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %145 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  store i32 %143, i32* %147, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 19
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %152 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* @ql_dbg_init, align 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %157 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %158 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %163 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %155, %struct.TYPE_8__* %156, i32 91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %161, i32 %166)
  br label %230

168:                                              ; preds = %135
  %169 = load i32*, i32** %10, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 18
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %173 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %171, i32* %175, align 4
  %176 = load i32*, i32** %10, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 19
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %180 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  store i32 %178, i32* %182, align 4
  %183 = load i32, i32* @ql_dbg_init, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %185 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %186 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %191 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %183, %struct.TYPE_8__* %184, i32 92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %189, i32 %194)
  br label %230

196:                                              ; preds = %135
  %197 = load i32*, i32** %10, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 18
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %201 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  store i32 %199, i32* %203, align 4
  %204 = load i32*, i32** %10, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 19
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %208 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  store i32 %206, i32* %210, align 4
  %211 = load i32, i32* @ql_dbg_init, align 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %213 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %214 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %219 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %211, %struct.TYPE_8__* %212, i32 93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %217, i32 %222)
  br label %230

224:                                              ; preds = %135
  %225 = load i32, i32* @ql_log_warn, align 4
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* %8, align 4
  %229 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %225, %struct.TYPE_8__* %226, i32 94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %224, %196, %168, %140
  %231 = load i32*, i32** %10, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 21
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @BIT_7, align 4
  %235 = and i32 %233, %234
  store i32 %235, i32* %12, align 4
  %236 = load i32*, i32** %10, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 17
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 8
  %240 = load i32*, i32** %10, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 16
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %239, %242
  %244 = mul nsw i32 %243, 512
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %7, align 4
  br label %247

247:                                              ; preds = %230
  %248 = load i32, i32* %12, align 4
  %249 = icmp ne i32 %248, 0
  %250 = xor i1 %249, true
  br i1 %250, label %78, label %251

251:                                              ; preds = %247, %125, %94
  %252 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %253 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %252, i32 0, i32 3
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @memset(i32* %254, i32 0, i32 8)
  %256 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %257 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  store i32 %258, i32* %15, align 4
  %259 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %260 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %266, label %262

262:                                              ; preds = %251
  %263 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %264 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %262, %251
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %268 = call i32 @qla27xx_get_active_image(%struct.TYPE_8__* %267, %struct.active_regions* %16)
  %269 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %16, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @QLA27XX_SECONDARY_IMAGE, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %266
  %274 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %275 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %274, i32 0, i32 7
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %15, align 4
  br label %277

277:                                              ; preds = %273, %266
  br label %278

278:                                              ; preds = %277, %262
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %280 = load i32*, i32** %9, align 8
  %281 = bitcast i32* %280 to i8*
  %282 = load i32, i32* %15, align 4
  %283 = call i32 @qla24xx_read_flash_data(%struct.TYPE_8__* %279, i8* %281, i32 %282, i32 8)
  %284 = load i32*, i32** %9, align 8
  %285 = call i64 @qla24xx_risc_firmware_invalid(i32* %284)
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %299

287:                                              ; preds = %278
  %288 = load i32, i32* @ql_log_warn, align 4
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %290 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %291 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 %292, 4
  %294 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %288, %struct.TYPE_8__* %289, i32 95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* @ql_dbg_init, align 4
  %296 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %297 = load i32*, i32** %9, align 8
  %298 = call i32 @ql_dump_buffer(i32 %295, %struct.TYPE_8__* %296, i32 95, i32* %297, i32 32)
  br label %345

299:                                              ; preds = %278
  store i32 0, i32* %13, align 4
  br label %300

300:                                              ; preds = %318, %299
  %301 = load i32, i32* %13, align 4
  %302 = icmp slt i32 %301, 4
  br i1 %302, label %303, label %321

303:                                              ; preds = %300
  %304 = load i32*, i32** %9, align 8
  %305 = load i32, i32* %13, align 4
  %306 = add nsw i32 4, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @be32_to_cpu(i32 %309)
  %311 = ptrtoint i8* %310 to i32
  %312 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %313 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %312, i32 0, i32 3
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %311, i32* %317, align 4
  br label %318

318:                                              ; preds = %303
  %319 = load i32, i32* %13, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %13, align 4
  br label %300

321:                                              ; preds = %300
  %322 = load i32, i32* @ql_dbg_init, align 4
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %324 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %325 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %324, i32 0, i32 3
  %326 = load i32*, i32** %325, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 0
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %330 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %329, i32 0, i32 3
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 1
  %333 = load i32, i32* %332, align 4
  %334 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %335 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %334, i32 0, i32 3
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 2
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %340 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 3
  %343 = load i32, i32* %342, align 4
  %344 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %322, %struct.TYPE_8__* %323, i32 96, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %328, i32 %333, i32 %338, i32 %343)
  br label %345

345:                                              ; preds = %321, %287
  %346 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %347 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %351, label %349

349:                                              ; preds = %345
  %350 = load i32, i32* %6, align 4
  store i32 %350, i32* %3, align 4
  br label %403

351:                                              ; preds = %345
  %352 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %353 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %352, i32 0, i32 8
  %354 = load i32*, i32** %353, align 8
  %355 = call i32 @memset(i32* %354, i32 0, i32 8)
  %356 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %357 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %356, i32 0, i32 9
  %358 = load i32, i32* %357, align 8
  store i32 %358, i32* %15, align 4
  %359 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %360 = load i32*, i32** %9, align 8
  %361 = bitcast i32* %360 to i8*
  %362 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %363 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %362, i32 0, i32 9
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @qla24xx_read_flash_data(%struct.TYPE_8__* %359, i8* %361, i32 %364, i32 8)
  %366 = load i32*, i32** %9, align 8
  %367 = call i64 @qla24xx_risc_firmware_invalid(i32* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %379

369:                                              ; preds = %351
  %370 = load i32, i32* @ql_log_warn, align 4
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %372 = load i32, i32* %15, align 4
  %373 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %370, %struct.TYPE_8__* %371, i32 86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %372)
  %374 = load i32, i32* @ql_dbg_init, align 4
  %375 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %376 = load i32*, i32** %9, align 8
  %377 = call i32 @ql_dump_buffer(i32 %374, %struct.TYPE_8__* %375, i32 86, i32* %376, i32 32)
  %378 = load i32, i32* %6, align 4
  store i32 %378, i32* %3, align 4
  br label %403

379:                                              ; preds = %351
  store i32 0, i32* %13, align 4
  br label %380

380:                                              ; preds = %398, %379
  %381 = load i32, i32* %13, align 4
  %382 = icmp slt i32 %381, 4
  br i1 %382, label %383, label %401

383:                                              ; preds = %380
  %384 = load i32*, i32** %9, align 8
  %385 = load i32, i32* %13, align 4
  %386 = add nsw i32 4, %385
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = call i8* @be32_to_cpu(i32 %389)
  %391 = ptrtoint i8* %390 to i32
  %392 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %393 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %392, i32 0, i32 8
  %394 = load i32*, i32** %393, align 8
  %395 = load i32, i32* %13, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %394, i64 %396
  store i32 %391, i32* %397, align 4
  br label %398

398:                                              ; preds = %383
  %399 = load i32, i32* %13, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %13, align 4
  br label %380

401:                                              ; preds = %380
  %402 = load i32, i32* %6, align 4
  store i32 %402, i32* %3, align 4
  br label %403

403:                                              ; preds = %401, %369, %349, %34, %29
  %404 = load i32, i32* %3, align 4
  ret i32 %404
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #2

declare dso_local i32 @qla27xx_get_active_image(%struct.TYPE_8__*, %struct.active_regions*) #2

declare dso_local i32 @qla24xx_read_flash_data(%struct.TYPE_8__*, i8*, i32, i32) #2

declare dso_local i64 @memcmp(i32*, i8*, i32) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_8__*, i32, i8*, ...) #2

declare dso_local i32 @ql_dump_buffer(i32, %struct.TYPE_8__*, i32, i32*, i32) #2

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*, i32, i32, ...) #2

declare dso_local i64 @qla24xx_risc_firmware_invalid(i32*) #2

declare dso_local i8* @be32_to_cpu(i32) #2

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
