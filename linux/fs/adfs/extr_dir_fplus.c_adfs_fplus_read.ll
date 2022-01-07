; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_fplus.c_adfs_fplus_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_fplus.c_adfs_fplus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32 }
%struct.adfs_dir = type { i32, %struct.super_block*, %struct.buffer_head**, %struct.buffer_head**, i8* }
%struct.buffer_head = type { i32 }
%struct.adfs_bigdirheader = type { i64*, i64, i64, i32, i32 }
%struct.adfs_bigdirtail = type { i64, i64, i64* }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dir object %X has a hole at offset 0\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"directory header size %X does not match directory size %X\00", align 1
@BIGDIRSTARTNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"dir %06x has malformed header\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"not enough memory for dir object %X (%d blocks)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"dir object %X has a hole at offset %d\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"dir object %x failed read for offset %d, mapped block %lX\00", align 1
@BIGDIRENDNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"dir %06x has malformed tail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)* @adfs_fplus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_fplus_read(%struct.super_block* %0, i32 %1, i32 %2, %struct.adfs_dir* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adfs_dir*, align 8
  %10 = alloca %struct.adfs_bigdirheader*, align 8
  %11 = alloca %struct.adfs_bigdirtail*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head**, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.adfs_dir* %3, %struct.adfs_dir** %9, align 8
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %16, align 4
  %20 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %21 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %23 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %22, i32 0, i32 3
  %24 = load %struct.buffer_head**, %struct.buffer_head*** %23, align 8
  %25 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %24, i64 0
  %26 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %27 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %26, i32 0, i32 2
  store %struct.buffer_head** %25, %struct.buffer_head*** %27, align 8
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @__adfs_block_map(%struct.super_block* %28, i32 %29, i32 0)
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %4
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (%struct.super_block*, i8*, i32, ...) @adfs_error(%struct.super_block* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %266

37:                                               ; preds = %4
  %38 = load %struct.super_block*, %struct.super_block** %6, align 8
  %39 = load i64, i64* %12, align 8
  %40 = call i8* @sb_bread(%struct.super_block* %38, i64 %39)
  %41 = bitcast i8* %40 to %struct.buffer_head*
  %42 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %43 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %42, i32 0, i32 2
  %44 = load %struct.buffer_head**, %struct.buffer_head*** %43, align 8
  %45 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %44, i64 0
  store %struct.buffer_head* %41, %struct.buffer_head** %45, align 8
  %46 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %47 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %46, i32 0, i32 2
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %47, align 8
  %49 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %48, i64 0
  %50 = load %struct.buffer_head*, %struct.buffer_head** %49, align 8
  %51 = icmp ne %struct.buffer_head* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %37
  br label %266

53:                                               ; preds = %37
  %54 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %55 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %59 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %58, i32 0, i32 2
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %59, align 8
  %61 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %60, i64 0
  %62 = load %struct.buffer_head*, %struct.buffer_head** %61, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to %struct.adfs_bigdirheader*
  store %struct.adfs_bigdirheader* %66, %struct.adfs_bigdirheader** %10, align 8
  %67 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %10, align 8
  %68 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @le32_to_cpu(i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %53
  %76 = load %struct.super_block*, %struct.super_block** %6, align 8
  %77 = load i32, i32* @KERN_WARNING, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @adfs_msg(%struct.super_block* %76, i32 %77, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %53
  %82 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %10, align 8
  %83 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %113, label %88

88:                                               ; preds = %81
  %89 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %10, align 8
  %90 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %88
  %96 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %10, align 8
  %97 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %14, align 4
  %104 = and i32 %103, 2047
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %10, align 8
  %108 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* @BIGDIRSTARTNAME, align 4
  %111 = call i64 @cpu_to_le32(i32 %110)
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %106, %102, %95, %88, %81
  %114 = load %struct.super_block*, %struct.super_block** %6, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (%struct.super_block*, i8*, i32, ...) @adfs_error(%struct.super_block* %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %266

117:                                              ; preds = %106
  %118 = load %struct.super_block*, %struct.super_block** %6, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %14, align 4
  %122 = lshr i32 %121, %120
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %125 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %124, i32 0, i32 3
  %126 = load %struct.buffer_head**, %struct.buffer_head*** %125, align 8
  %127 = call i32 @ARRAY_SIZE(%struct.buffer_head** %126)
  %128 = icmp ugt i32 %123, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %117
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* @GFP_KERNEL, align 4
  %132 = call %struct.buffer_head** @kcalloc(i32 %130, i32 8, i32 %131)
  store %struct.buffer_head** %132, %struct.buffer_head*** %17, align 8
  %133 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %134 = icmp ne %struct.buffer_head** %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %129
  %136 = load %struct.super_block*, %struct.super_block** %6, align 8
  %137 = load i32, i32* @KERN_ERR, align 4
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @adfs_msg(%struct.super_block* %136, i32 %137, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %138, i32 %139)
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %16, align 4
  br label %266

143:                                              ; preds = %129
  %144 = load %struct.buffer_head**, %struct.buffer_head*** %17, align 8
  %145 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %146 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %145, i32 0, i32 2
  store %struct.buffer_head** %144, %struct.buffer_head*** %146, align 8
  %147 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %148 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %147, i32 0, i32 3
  %149 = load %struct.buffer_head**, %struct.buffer_head*** %148, align 8
  %150 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %149, i64 0
  %151 = load %struct.buffer_head*, %struct.buffer_head** %150, align 8
  %152 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %153 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %152, i32 0, i32 2
  %154 = load %struct.buffer_head**, %struct.buffer_head*** %153, align 8
  %155 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %154, i64 0
  store %struct.buffer_head* %151, %struct.buffer_head** %155, align 8
  br label %156

156:                                              ; preds = %143, %117
  store i32 1, i32* %13, align 4
  br label %157

157:                                              ; preds = %203, %156
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ult i32 %158, %159
  br i1 %160, label %161, label %206

161:                                              ; preds = %157
  %162 = load %struct.super_block*, %struct.super_block** %6, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %13, align 4
  %165 = call i64 @__adfs_block_map(%struct.super_block* %162, i32 %163, i32 %164)
  store i64 %165, i64* %12, align 8
  %166 = load i64, i64* %12, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %161
  %169 = load %struct.super_block*, %struct.super_block** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = load i32, i32* %13, align 4
  %172 = call i32 (%struct.super_block*, i8*, i32, ...) @adfs_error(%struct.super_block* %169, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %170, i32 %171)
  br label %266

173:                                              ; preds = %161
  %174 = load %struct.super_block*, %struct.super_block** %6, align 8
  %175 = load i64, i64* %12, align 8
  %176 = call i8* @sb_bread(%struct.super_block* %174, i64 %175)
  %177 = bitcast i8* %176 to %struct.buffer_head*
  %178 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %179 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %178, i32 0, i32 2
  %180 = load %struct.buffer_head**, %struct.buffer_head*** %179, align 8
  %181 = load i32, i32* %13, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %180, i64 %182
  store %struct.buffer_head* %177, %struct.buffer_head** %183, align 8
  %184 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %185 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %184, i32 0, i32 2
  %186 = load %struct.buffer_head**, %struct.buffer_head*** %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %186, i64 %188
  %190 = load %struct.buffer_head*, %struct.buffer_head** %189, align 8
  %191 = icmp ne %struct.buffer_head* %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %173
  %193 = load %struct.super_block*, %struct.super_block** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i64, i64* %12, align 8
  %197 = call i32 (%struct.super_block*, i8*, i32, ...) @adfs_error(%struct.super_block* %193, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %194, i32 %195, i64 %196)
  br label %266

198:                                              ; preds = %173
  %199 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %200 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %198
  %204 = load i32, i32* %13, align 4
  %205 = add i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %157

206:                                              ; preds = %157
  %207 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %208 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %207, i32 0, i32 2
  %209 = load %struct.buffer_head**, %struct.buffer_head*** %208, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sub i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %209, i64 %212
  %214 = load %struct.buffer_head*, %struct.buffer_head** %213, align 8
  %215 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.super_block*, %struct.super_block** %6, align 8
  %218 = getelementptr inbounds %struct.super_block, %struct.super_block* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sub nsw i32 %219, 8
  %221 = add nsw i32 %216, %220
  %222 = sext i32 %221 to i64
  %223 = inttoptr i64 %222 to %struct.adfs_bigdirtail*
  store %struct.adfs_bigdirtail* %223, %struct.adfs_bigdirtail** %11, align 8
  %224 = load %struct.adfs_bigdirtail*, %struct.adfs_bigdirtail** %11, align 8
  %225 = getelementptr inbounds %struct.adfs_bigdirtail, %struct.adfs_bigdirtail* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* @BIGDIRENDNAME, align 4
  %228 = call i64 @cpu_to_le32(i32 %227)
  %229 = icmp ne i64 %226, %228
  br i1 %229, label %252, label %230

230:                                              ; preds = %206
  %231 = load %struct.adfs_bigdirtail*, %struct.adfs_bigdirtail** %11, align 8
  %232 = getelementptr inbounds %struct.adfs_bigdirtail, %struct.adfs_bigdirtail* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %10, align 8
  %235 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %234, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %233, %236
  br i1 %237, label %252, label %238

238:                                              ; preds = %230
  %239 = load %struct.adfs_bigdirtail*, %struct.adfs_bigdirtail** %11, align 8
  %240 = getelementptr inbounds %struct.adfs_bigdirtail, %struct.adfs_bigdirtail* %239, i32 0, i32 2
  %241 = load i64*, i64** %240, align 8
  %242 = getelementptr inbounds i64, i64* %241, i64 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %252, label %245

245:                                              ; preds = %238
  %246 = load %struct.adfs_bigdirtail*, %struct.adfs_bigdirtail** %11, align 8
  %247 = getelementptr inbounds %struct.adfs_bigdirtail, %struct.adfs_bigdirtail* %246, i32 0, i32 2
  %248 = load i64*, i64** %247, align 8
  %249 = getelementptr inbounds i64, i64* %248, i64 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %245, %238, %230, %206
  %253 = load %struct.super_block*, %struct.super_block** %6, align 8
  %254 = load i32, i32* %7, align 4
  %255 = call i32 (%struct.super_block*, i8*, i32, ...) @adfs_error(%struct.super_block* %253, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %254)
  br label %266

256:                                              ; preds = %245
  %257 = load %struct.adfs_bigdirheader*, %struct.adfs_bigdirheader** %10, align 8
  %258 = getelementptr inbounds %struct.adfs_bigdirheader, %struct.adfs_bigdirheader* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i8* @le32_to_cpu(i32 %259)
  %261 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %262 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %261, i32 0, i32 4
  store i8* %260, i8** %262, align 8
  %263 = load %struct.super_block*, %struct.super_block** %6, align 8
  %264 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %265 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %264, i32 0, i32 1
  store %struct.super_block* %263, %struct.super_block** %265, align 8
  store i32 0, i32* %5, align 4
  br label %313

266:                                              ; preds = %252, %192, %168, %135, %113, %52, %33
  %267 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %268 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %267, i32 0, i32 2
  %269 = load %struct.buffer_head**, %struct.buffer_head*** %268, align 8
  %270 = icmp ne %struct.buffer_head** %269, null
  br i1 %270, label %271, label %307

271:                                              ; preds = %266
  store i32 0, i32* %15, align 4
  br label %272

272:                                              ; preds = %287, %271
  %273 = load i32, i32* %15, align 4
  %274 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %275 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp slt i32 %273, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %272
  %279 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %280 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %279, i32 0, i32 2
  %281 = load %struct.buffer_head**, %struct.buffer_head*** %280, align 8
  %282 = load i32, i32* %15, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %281, i64 %283
  %285 = load %struct.buffer_head*, %struct.buffer_head** %284, align 8
  %286 = call i32 @brelse(%struct.buffer_head* %285)
  br label %287

287:                                              ; preds = %278
  %288 = load i32, i32* %15, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %15, align 4
  br label %272

290:                                              ; preds = %272
  %291 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %292 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %291, i32 0, i32 3
  %293 = load %struct.buffer_head**, %struct.buffer_head*** %292, align 8
  %294 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %293, i64 0
  %295 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %296 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %295, i32 0, i32 2
  %297 = load %struct.buffer_head**, %struct.buffer_head*** %296, align 8
  %298 = icmp ne %struct.buffer_head** %294, %297
  br i1 %298, label %299, label %304

299:                                              ; preds = %290
  %300 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %301 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %300, i32 0, i32 2
  %302 = load %struct.buffer_head**, %struct.buffer_head*** %301, align 8
  %303 = call i32 @kfree(%struct.buffer_head** %302)
  br label %304

304:                                              ; preds = %299, %290
  %305 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %306 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %305, i32 0, i32 2
  store %struct.buffer_head** null, %struct.buffer_head*** %306, align 8
  br label %307

307:                                              ; preds = %304, %266
  %308 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %309 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %308, i32 0, i32 0
  store i32 0, i32* %309, align 8
  %310 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %311 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %310, i32 0, i32 1
  store %struct.super_block* null, %struct.super_block** %311, align 8
  %312 = load i32, i32* %16, align 4
  store i32 %312, i32* %5, align 4
  br label %313

313:                                              ; preds = %307, %256
  %314 = load i32, i32* %5, align 4
  ret i32 %314
}

declare dso_local i64 @__adfs_block_map(%struct.super_block*, i32, i32) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i8* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @adfs_msg(%struct.super_block*, i32, i8*, i32, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.buffer_head**) #1

declare dso_local %struct.buffer_head** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
