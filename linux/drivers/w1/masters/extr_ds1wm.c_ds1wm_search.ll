; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_search.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_ds1wm.c_ds1wm_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w1_master = type { i32 }
%struct.w1_master.0 = type opaque
%struct.ds1wm_data = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"search begin\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"too many attempts (100), search aborted\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"pass: %d reset error (or no slaves)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"pass: %d r : %0#18llx writing SEARCH_ROM\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"pass: %d entering ASM\0A\00", align 1
@DS1WM_CMD = common dso_local global i32 0, align 4
@DS1WM_CMD_SRA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"pass: %d beginning nibble loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"pass: %d nibble: %d read error\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"pass: %d read error, retrying\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"pass: %d r': %0#18llx d:%0#18llx\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"pass: %d nibble loop complete, exiting ASM\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"pass: %d resetting bus\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"pass: %d bus error, retrying\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"pass: %d found %0#18llx\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"pass: %d complete, preparing next pass\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"pass: %d new d:%0#18llx MS discrep bit:%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"pass: %d total: %d search done ms d bit pos: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.w1_master*, i32, i32 (%struct.w1_master.0*, i32)*)* @ds1wm_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds1wm_search(i8* %0, %struct.w1_master* %1, i32 %2, i32 (%struct.w1_master.0*, i32)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.w1_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.w1_master.0*, i32)*, align 8
  %9 = alloca %struct.ds1wm_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store %struct.w1_master* %1, %struct.w1_master** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 (%struct.w1_master.0*, i32)* %3, i32 (%struct.w1_master.0*, i32)** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = bitcast i8* %21 to %struct.ds1wm_data*
  store %struct.ds1wm_data* %22, %struct.ds1wm_data** %9, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %24 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %4, %245, %291
  %29 = load i32, i32* %16, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ugt i32 %31, 100
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %35 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %313

39:                                               ; preds = %28
  %40 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %41 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %44 = call i64 @ds1wm_reset(%struct.ds1wm_data* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %48 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %51 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %16, align 4
  %55 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %53, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %304

56:                                               ; preds = %39
  %57 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %58 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @ds1wm_write(%struct.ds1wm_data* %64, i32 %65)
  %67 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %68 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %16, align 4
  %72 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %74 = load i32, i32* @DS1WM_CMD, align 4
  %75 = load i32, i32* @DS1WM_CMD_SRA, align 4
  %76 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %73, i32 %74, i32 %75)
  %77 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %78 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %16, align 4
  %82 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %83

83:                                               ; preds = %189, %56
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 16
  br i1 %85, label %86, label %192

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 4, %88
  %90 = ashr i32 %87, %89
  %91 = and i32 %90, 15
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %18, align 1
  %93 = load i8, i8* %18, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 1
  %96 = shl i32 %95, 1
  %97 = load i8, i8* %18, align 1
  %98 = zext i8 %97 to i32
  %99 = and i32 %98, 2
  %100 = shl i32 %99, 2
  %101 = or i32 %96, %100
  %102 = load i8, i8* %18, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 4
  %105 = shl i32 %104, 3
  %106 = or i32 %101, %105
  %107 = load i8, i8* %18, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 8
  %110 = shl i32 %109, 4
  %111 = or i32 %106, %110
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %18, align 1
  %113 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %114 = load i8, i8* %18, align 1
  %115 = call zeroext i8 @ds1wm_read(%struct.ds1wm_data* %113, i8 zeroext %114)
  store i8 %115, i8* %17, align 1
  %116 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %117 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %86
  %121 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %122 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %126)
  br label %192

128:                                              ; preds = %86
  %129 = load i8, i8* %17, align 1
  %130 = zext i8 %129 to i32
  %131 = and i32 %130, 2
  %132 = ashr i32 %131, 1
  %133 = load i8, i8* %17, align 1
  %134 = zext i8 %133 to i32
  %135 = and i32 %134, 8
  %136 = ashr i32 %135, 2
  %137 = or i32 %132, %136
  %138 = load i8, i8* %17, align 1
  %139 = zext i8 %138 to i32
  %140 = and i32 %139, 32
  %141 = ashr i32 %140, 3
  %142 = or i32 %137, %141
  %143 = load i8, i8* %17, align 1
  %144 = zext i8 %143 to i32
  %145 = and i32 %144, 128
  %146 = ashr i32 %145, 4
  %147 = or i32 %142, %146
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %19, align 1
  %149 = load i8, i8* %17, align 1
  %150 = zext i8 %149 to i32
  %151 = and i32 %150, 1
  %152 = ashr i32 %151, 0
  %153 = load i8, i8* %17, align 1
  %154 = zext i8 %153 to i32
  %155 = and i32 %154, 4
  %156 = ashr i32 %155, 1
  %157 = or i32 %152, %156
  %158 = load i8, i8* %17, align 1
  %159 = zext i8 %158 to i32
  %160 = and i32 %159, 16
  %161 = ashr i32 %160, 2
  %162 = or i32 %157, %161
  %163 = load i8, i8* %17, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 %164, 64
  %166 = ashr i32 %165, 3
  %167 = or i32 %162, %166
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %20, align 1
  %169 = load i8, i8* %19, align 1
  %170 = zext i8 %169 to i64
  %171 = load i32, i32* %10, align 4
  %172 = mul nsw i32 %171, 4
  %173 = zext i32 %172 to i64
  %174 = shl i64 %170, %173
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = or i64 %176, %174
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %13, align 4
  %179 = load i8, i8* %20, align 1
  %180 = zext i8 %179 to i64
  %181 = load i32, i32* %10, align 4
  %182 = mul nsw i32 %181, 4
  %183 = zext i32 %182 to i64
  %184 = shl i64 %180, %183
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = or i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %14, align 4
  br label %189

189:                                              ; preds = %128
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %10, align 4
  br label %83

192:                                              ; preds = %120, %83
  %193 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %194 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %207

197:                                              ; preds = %192
  %198 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %199 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %198, i32 0, i32 0
  %200 = call i32 @mutex_unlock(i32* %199)
  %201 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %202 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %201, i32 0, i32 0
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %16, align 4
  %206 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  br label %304

207:                                              ; preds = %192
  %208 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %209 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %208, i32 0, i32 0
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32, i32* %16, align 4
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %212, i32 %213, i32 %214)
  %216 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %217 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %216, i32 0, i32 0
  %218 = load %struct.TYPE_2__*, %struct.TYPE_2__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 0
  %220 = load i32, i32* %16, align 4
  %221 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %219, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  %222 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %223 = load i32, i32* @DS1WM_CMD, align 4
  %224 = load i32, i32* @DS1WM_CMD_SRA, align 4
  %225 = xor i32 %224, -1
  %226 = call i32 @ds1wm_write_register(%struct.ds1wm_data* %222, i32 %223, i32 %225)
  %227 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %228 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %227, i32 0, i32 0
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32, i32* %16, align 4
  %232 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %230, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %231)
  %233 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %234 = call i64 @ds1wm_reset(%struct.ds1wm_data* %233)
  %235 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %236 = getelementptr inbounds %struct.w1_master, %struct.w1_master* %235, i32 0, i32 0
  %237 = call i32 @mutex_unlock(i32* %236)
  %238 = load i32, i32* %13, align 4
  %239 = and i32 %238, undef
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %252

241:                                              ; preds = %207
  %242 = load i32, i32* %14, align 4
  %243 = and i32 %242, undef
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %247 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %246, i32 0, i32 0
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32, i32* %16, align 4
  %251 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %249, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %250)
  br label %28

252:                                              ; preds = %241, %207
  %253 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %254 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %253, i32 0, i32 0
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %13, align 4
  %259 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %256, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %257, i32 %258)
  %260 = load i32 (%struct.w1_master.0*, i32)*, i32 (%struct.w1_master.0*, i32)** %8, align 8
  %261 = load %struct.w1_master*, %struct.w1_master** %6, align 8
  %262 = bitcast %struct.w1_master* %261 to %struct.w1_master.0*
  %263 = load i32, i32* %13, align 4
  %264 = call i32 %260(%struct.w1_master.0* %262, i32 %263)
  %265 = load i32, i32* %15, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %15, align 4
  %267 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %268 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %267, i32 0, i32 0
  %269 = load %struct.TYPE_2__*, %struct.TYPE_2__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 0
  %271 = load i32, i32* %16, align 4
  %272 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %270, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %271)
  %273 = load i32, i32* %12, align 4
  %274 = xor i32 %273, -1
  %275 = load i32, i32* %14, align 4
  %276 = and i32 %275, %274
  store i32 %276, i32* %14, align 4
  %277 = load i32, i32* %14, align 4
  %278 = call i32 @fls64(i32 %277)
  %279 = sub nsw i32 %278, 1
  store i32 %279, i32* %11, align 4
  %280 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %281 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %280, i32 0, i32 0
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = load i32, i32* %16, align 4
  %285 = load i32, i32* %14, align 4
  %286 = load i32, i32* %11, align 4
  %287 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %283, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.14, i64 0, i64 0), i32 %284, i32 %285, i32 %286)
  %288 = load i32, i32* %11, align 4
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %291

290:                                              ; preds = %252
  br label %304

291:                                              ; preds = %252
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = load i32, i32* %11, align 4
  %295 = zext i32 %294 to i64
  %296 = shl i64 -1, %295
  %297 = xor i64 %296, -1
  %298 = and i64 %293, %297
  %299 = load i32, i32* %11, align 4
  %300 = shl i32 1, %299
  %301 = sext i32 %300 to i64
  %302 = or i64 %298, %301
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %12, align 4
  br label %28

304:                                              ; preds = %290, %197, %46
  %305 = load %struct.ds1wm_data*, %struct.ds1wm_data** %9, align 8
  %306 = getelementptr inbounds %struct.ds1wm_data, %struct.ds1wm_data* %305, i32 0, i32 0
  %307 = load %struct.TYPE_2__*, %struct.TYPE_2__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %307, i32 0, i32 0
  %309 = load i32, i32* %16, align 4
  %310 = load i32, i32* %15, align 4
  %311 = load i32, i32* %11, align 4
  %312 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %308, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %309, i32 %310, i32 %311)
  br label %313

313:                                              ; preds = %304, %33
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ds1wm_reset(%struct.ds1wm_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ds1wm_write(%struct.ds1wm_data*, i32) #1

declare dso_local i32 @ds1wm_write_register(%struct.ds1wm_data*, i32, i32) #1

declare dso_local zeroext i8 @ds1wm_read(%struct.ds1wm_data*, i8 zeroext) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @fls64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
