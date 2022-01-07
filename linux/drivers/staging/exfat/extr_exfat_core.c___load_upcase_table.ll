; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c___load_upcase_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c___load_upcase_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { i64** }
%struct.bd_info_t = type { i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_ERROR = common dso_local global i32 0, align 4
@UTBL_COL_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FFS_MEMORYERR = common dso_local global i32 0, align 4
@FFS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"sector read (0x%llX)fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"skip from 0x%X \00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"to 0x%X (amount of 0x%X)\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"alloc = 0x%X\0A\00", align 1
@UTBL_ROW_COUNT = common dso_local global i64 0, align 8
@LOW_INDEX_BIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i64, i64)* @__load_upcase_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_upcase_table(%struct.super_block* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fs_info_t*, align 8
  %14 = alloca %struct.bd_info_t*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64**, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %23 = load i32, i32* @FFS_ERROR, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.super_block*, %struct.super_block** %6, align 8
  %25 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store %struct.fs_info_t* %26, %struct.fs_info_t** %13, align 8
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.bd_info_t* %29, %struct.bd_info_t** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %21, align 8
  %33 = load i32, i32* @UTBL_COL_COUNT, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64** @kmalloc(i32 %36, i32 %37)
  %39 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %40 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %39, i32 0, i32 0
  store i64** %38, i64*** %40, align 8
  store i64** %38, i64*** %20, align 8
  %41 = load i64**, i64*** %20, align 8
  %42 = icmp ne i64** %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %4
  %44 = load i32, i32* @FFS_MEMORYERR, align 4
  store i32 %44, i32* %5, align 4
  br label %240

45:                                               ; preds = %4
  %46 = load i64**, i64*** %20, align 8
  %47 = load i32, i32* @UTBL_COL_COUNT, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memset(i64** %46, i32 0, i32 %50)
  br label %52

52:                                               ; preds = %212, %45
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* %16, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %213

56:                                               ; preds = %52
  %57 = load %struct.super_block*, %struct.super_block** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @sector_read(%struct.super_block* %57, i64 %58, %struct.buffer_head** %15, i32 1)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @FFS_SUCCESS, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %230

66:                                               ; preds = %56
  %67 = load i64, i64* %7, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %209, %66
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %72 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i64, i64* %18, align 8
  %77 = icmp sle i64 %76, 65535
  br label %78

78:                                               ; preds = %75, %69
  %79 = phi i1 [ false, %69 ], [ %77, %75 ]
  br i1 %79, label %80, label %212

80:                                               ; preds = %78
  %81 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %82 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i64 @GET16(i32* %87)
  store i64 %88, i64* %19, align 8
  %89 = load i64, i64* %21, align 8
  %90 = and i64 %89, 1
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 -2147483648, i32 0
  %94 = zext i32 %93 to i64
  %95 = load i64, i64* %21, align 8
  %96 = ashr i64 %95, 1
  %97 = add nsw i64 %94, %96
  %98 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i32*
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %97, %106
  store i64 %107, i64* %21, align 8
  %108 = load i64, i64* %21, align 8
  %109 = and i64 %108, 1
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 -2147483648, i32 0
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %21, align 8
  %115 = ashr i64 %114, 1
  %116 = add nsw i64 %113, %115
  %117 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %118 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %116, %126
  store i64 %127, i64* %21, align 8
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %80
  %131 = load i64, i64* %18, align 8
  %132 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %131)
  %133 = load i64, i64* %19, align 8
  %134 = load i64, i64* %18, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %18, align 8
  %136 = load i64, i64* %18, align 8
  %137 = load i64, i64* %19, align 8
  %138 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %136, i64 %137)
  store i32 0, i32* %17, align 4
  br label %208

139:                                              ; preds = %80
  %140 = load i64, i64* %19, align 8
  %141 = load i64, i64* %18, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i64, i64* %18, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %18, align 8
  br label %207

146:                                              ; preds = %139
  %147 = load i64, i64* %19, align 8
  %148 = icmp eq i64 %147, 65535
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 1, i32* %17, align 4
  br label %206

150:                                              ; preds = %146
  %151 = load i64, i64* %18, align 8
  %152 = call i64 @get_col_index(i64 %151)
  store i64 %152, i64* %22, align 8
  %153 = load i64**, i64*** %20, align 8
  %154 = load i64, i64* %22, align 8
  %155 = getelementptr inbounds i64*, i64** %153, i64 %154
  %156 = load i64*, i64** %155, align 8
  %157 = icmp ne i64* %156, null
  br i1 %157, label %195, label %158

158:                                              ; preds = %150
  %159 = load i64, i64* %22, align 8
  %160 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i64 %159)
  %161 = load i64, i64* @UTBL_ROW_COUNT, align 8
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call i64* @kmalloc_array(i64 %161, i32 8, i32 %162)
  %164 = load i64**, i64*** %20, align 8
  %165 = load i64, i64* %22, align 8
  %166 = getelementptr inbounds i64*, i64** %164, i64 %165
  store i64* %163, i64** %166, align 8
  %167 = load i64**, i64*** %20, align 8
  %168 = load i64, i64* %22, align 8
  %169 = getelementptr inbounds i64*, i64** %167, i64 %168
  %170 = load i64*, i64** %169, align 8
  %171 = icmp ne i64* %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %158
  %173 = load i32, i32* @FFS_MEMORYERR, align 4
  store i32 %173, i32* %11, align 4
  br label %230

174:                                              ; preds = %158
  store i64 0, i64* %12, align 8
  br label %175

175:                                              ; preds = %191, %174
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* @UTBL_ROW_COUNT, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %175
  %180 = load i64, i64* %22, align 8
  %181 = load i64, i64* @LOW_INDEX_BIT, align 8
  %182 = shl i64 %180, %181
  %183 = load i64, i64* %12, align 8
  %184 = or i64 %182, %183
  %185 = load i64**, i64*** %20, align 8
  %186 = load i64, i64* %22, align 8
  %187 = getelementptr inbounds i64*, i64** %185, i64 %186
  %188 = load i64*, i64** %187, align 8
  %189 = load i64, i64* %12, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  store i64 %184, i64* %190, align 8
  br label %191

191:                                              ; preds = %179
  %192 = load i64, i64* %12, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %12, align 8
  br label %175

194:                                              ; preds = %175
  br label %195

195:                                              ; preds = %194, %150
  %196 = load i64, i64* %19, align 8
  %197 = load i64**, i64*** %20, align 8
  %198 = load i64, i64* %22, align 8
  %199 = getelementptr inbounds i64*, i64** %197, i64 %198
  %200 = load i64*, i64** %199, align 8
  %201 = load i64, i64* %18, align 8
  %202 = call i64 @get_row_index(i64 %201)
  %203 = getelementptr inbounds i64, i64* %200, i64 %202
  store i64 %196, i64* %203, align 8
  %204 = load i64, i64* %18, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %18, align 8
  br label %206

206:                                              ; preds = %195, %149
  br label %207

207:                                              ; preds = %206, %143
  br label %208

208:                                              ; preds = %207, %130
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 2
  store i32 %211, i32* %10, align 4
  br label %69

212:                                              ; preds = %78
  br label %52

213:                                              ; preds = %52
  %214 = load i64, i64* %18, align 8
  %215 = icmp sge i64 %214, 65535
  br i1 %215, label %216, label %228

216:                                              ; preds = %213
  %217 = load i64, i64* %9, align 8
  %218 = load i64, i64* %21, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %222 = icmp ne %struct.buffer_head* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %225 = call i32 @brelse(%struct.buffer_head* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32, i32* @FFS_SUCCESS, align 4
  store i32 %227, i32* %5, align 4
  br label %240

228:                                              ; preds = %216, %213
  %229 = load i32, i32* @FFS_ERROR, align 4
  store i32 %229, i32* %11, align 4
  br label %230

230:                                              ; preds = %228, %172, %63
  %231 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %232 = icmp ne %struct.buffer_head* %231, null
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %235 = call i32 @brelse(%struct.buffer_head* %234)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load %struct.super_block*, %struct.super_block** %6, align 8
  %238 = call i32 @free_upcase_table(%struct.super_block* %237)
  %239 = load i32, i32* %11, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %236, %226, %43
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i64** @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i64**, i32, i32) #1

declare dso_local i32 @sector_read(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @GET16(i32*) #1

declare dso_local i64 @get_col_index(i64) #1

declare dso_local i64* @kmalloc_array(i64, i32, i32) #1

declare dso_local i64 @get_row_index(i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @free_upcase_table(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
