; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla82xx_get_flash_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla82xx_get_flash_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, i32*, i32*, i32*, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*, i32*, i32, i32)* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
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
@.str.8 = private unnamed_addr constant [28 x i8] c"Firmware revision %d.%d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla82xx_get_flash_version(%struct.TYPE_10__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %10, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %13, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %308

26:                                               ; preds = %2
  %27 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %28 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @memset(i32* %29, i32 0, i32 8)
  %31 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %32 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @memset(i32* %33, i32 0, i32 8)
  %35 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %36 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @memset(i32* %37, i32 0, i32 8)
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @memset(i32* %41, i32 0, i32 8)
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = shl i32 %45, 2
  store i32 %46, i32* %7, align 4
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %218, %26
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 6
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_10__*, i32*, i32, i32)*, i32 (%struct.TYPE_10__*, i32*, i32, i32)** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 %52(%struct.TYPE_10__* %53, i32* %54, i32 %55, i32 128)
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = srem i32 %58, 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %57, i64 %60
  %62 = bitcast i8* %61 to i32*
  store i32* %62, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i64 @memcmp(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %47
  %67 = load i32, i32* @ql_log_fatal, align 4
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %67, %struct.TYPE_10__* %68, i32 340, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %70, i32* %6, align 4
  br label %222

71:                                               ; preds = %47
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 25
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 8
  %77 = load i32*, i32** %10, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 24
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = add nsw i32 %72, %80
  store i32 %81, i32* %8, align 4
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 6
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_10__*, i32*, i32, i32)*, i32 (%struct.TYPE_10__*, i32*, i32, i32)** %85, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 %86(%struct.TYPE_10__* %87, i32* %88, i32 %89, i32 128)
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = srem i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr i8, i8* %91, i64 %94
  %96 = bitcast i8* %95 to i32*
  store i32* %96, i32** %10, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = call i64 @memcmp(i32* %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %71
  %101 = load i32, i32* @ql_log_fatal, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %101, %struct.TYPE_10__* %102, i32 341, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %105, i32* %6, align 4
  br label %222

106:                                              ; preds = %71
  %107 = load i32*, i32** %10, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 20
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  switch i32 %110, label %195 [
    i32 130, label %111
    i32 128, label %139
    i32 129, label %167
  ]

111:                                              ; preds = %106
  %112 = load i32*, i32** %10, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 18
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  store i32 %114, i32* %118, align 4
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 19
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  %126 = load i32, i32* @ql_dbg_init, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %134 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %126, %struct.TYPE_10__* %127, i32 342, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %137)
  br label %201

139:                                              ; preds = %106
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 18
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %144 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 0
  store i32 %142, i32* %146, align 4
  %147 = load i32*, i32** %10, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 19
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %151 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  store i32 %149, i32* %153, align 4
  %154 = load i32, i32* @ql_dbg_init, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %156 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %157 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %162 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %154, %struct.TYPE_10__* %155, i32 343, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %160, i32 %165)
  br label %201

167:                                              ; preds = %106
  %168 = load i32*, i32** %10, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 18
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %172 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %170, i32* %174, align 4
  %175 = load i32*, i32** %10, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 19
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %179 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  store i32 %177, i32* %181, align 4
  %182 = load i32, i32* @ql_dbg_init, align 4
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %184 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %185 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %190 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %182, %struct.TYPE_10__* %183, i32 344, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %188, i32 %193)
  br label %201

195:                                              ; preds = %106
  %196 = load i32, i32* @ql_log_warn, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, ...) @ql_log(i32 %196, %struct.TYPE_10__* %197, i32 345, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %195, %167, %139, %111
  %202 = load i32*, i32** %10, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 21
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @BIT_7, align 4
  %206 = and i32 %204, %205
  store i32 %206, i32* %12, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 17
  %209 = load i32, i32* %208, align 4
  %210 = shl i32 %209, 8
  %211 = load i32*, i32** %10, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 16
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %210, %213
  %215 = mul nsw i32 %214, 512
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %7, align 4
  br label %218

218:                                              ; preds = %201
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  %221 = xor i1 %220, true
  br i1 %221, label %47, label %222

222:                                              ; preds = %218, %100, %66
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %224 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @memset(i32* %225, i32 0, i32 8)
  %227 = load i8*, i8** %5, align 8
  %228 = bitcast i8* %227 to i32*
  store i32* %228, i32** %9, align 8
  %229 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %230 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %229, i32 0, i32 6
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i32 (%struct.TYPE_10__*, i32*, i32, i32)*, i32 (%struct.TYPE_10__*, i32*, i32, i32)** %232, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %235 = load i32*, i32** %9, align 8
  %236 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %237 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 2
  %240 = call i32 %233(%struct.TYPE_10__* %234, i32* %235, i32 %239, i32 32)
  %241 = load i8*, i8** %5, align 8
  %242 = load i32, i32* %7, align 4
  %243 = srem i32 %242, 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr i8, i8* %241, i64 %244
  %246 = bitcast i8* %245 to i32*
  store i32* %246, i32** %10, align 8
  %247 = load i32*, i32** %10, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 3
  br i1 %250, label %251, label %306

251:                                              ; preds = %222
  %252 = load i32*, i32** %10, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %306

256:                                              ; preds = %251
  %257 = load i32*, i32** %10, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, 64
  br i1 %260, label %261, label %306

261:                                              ; preds = %256
  %262 = load i32*, i32** %10, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 3
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 %264, 64
  br i1 %265, label %266, label %306

266:                                              ; preds = %261
  %267 = load i32*, i32** %10, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 4
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %271 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %270, i32 0, i32 3
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  store i32 %269, i32* %273, align 4
  %274 = load i32*, i32** %10, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 5
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %278 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  store i32 %276, i32* %280, align 4
  %281 = load i32*, i32** %10, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 6
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %285 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 2
  store i32 %283, i32* %287, align 4
  %288 = load i32, i32* @ql_dbg_init, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %290 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %291 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %296 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %295, i32 0, i32 3
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %301 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %300, i32 0, i32 3
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 2
  %304 = load i32, i32* %303, align 4
  %305 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %288, %struct.TYPE_10__* %289, i32 339, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %294, i32 %299, i32 %304)
  br label %306

306:                                              ; preds = %266, %261, %256, %251, %222
  %307 = load i32, i32* %6, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %306, %24
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
