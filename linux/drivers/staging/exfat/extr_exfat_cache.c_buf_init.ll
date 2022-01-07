; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_info_t = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32*, i32*, i64, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { %struct.fs_info_t }

@FAT_CACHE_SIZE = common dso_local global i32 0, align 4
@BUF_CACHE_SIZE = common dso_local global i32 0, align 4
@FAT_CACHE_HASH_SIZE = common dso_local global i32 0, align 4
@BUF_CACHE_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_init(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.fs_info_t*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.TYPE_12__* @EXFAT_SB(%struct.super_block* %5)
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store %struct.fs_info_t* %7, %struct.fs_info_t** %3, align 8
  %8 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %9 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %8, i32 0, i32 5
  %10 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %11 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %12, align 8
  %13 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %14 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %13, i32 0, i32 5
  %15 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %16 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %17, align 8
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %74, %1
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @FAT_CACHE_SIZE, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %77

22:                                               ; preds = %18
  %23 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %24 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %23, i32 0, i32 2
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %31 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 5
  store i32 -1, i32* %36, align 8
  %37 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %38 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %45 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  store i32* null, i32** %50, align 8
  %51 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %52 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %59 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  store i32* null, i32** %64, align 8
  %65 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %66 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i64 %69
  %71 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %72 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %71, i32 0, i32 5
  %73 = call i32 @push_to_mru(%struct.TYPE_10__* %70, %struct.TYPE_11__* %72)
  br label %74

74:                                               ; preds = %22
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %18

77:                                               ; preds = %18
  %78 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %79 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %78, i32 0, i32 4
  %80 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %81 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  store %struct.TYPE_11__* %79, %struct.TYPE_11__** %82, align 8
  %83 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %84 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %83, i32 0, i32 4
  %85 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %86 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %87, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %144, %77
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @BUF_CACHE_SIZE, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %88
  %93 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %94 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  store i32 -1, i32* %99, align 8
  %100 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %101 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %100, i32 0, i32 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 5
  store i32 -1, i32* %106, align 8
  %107 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %108 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 4
  store i64 0, i64* %113, align 8
  %114 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %115 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  store i32* null, i32** %120, align 8
  %121 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %122 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %121, i32 0, i32 0
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  %128 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %129 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %128, i32 0, i32 0
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  store i32* null, i32** %134, align 8
  %135 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %136 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %135, i32 0, i32 0
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i64 %139
  %141 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %142 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %141, i32 0, i32 4
  %143 = call i32 @push_to_mru(%struct.TYPE_10__* %140, %struct.TYPE_11__* %142)
  br label %144

144:                                              ; preds = %92
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %88

147:                                              ; preds = %88
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %193, %147
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @FAT_CACHE_HASH_SIZE, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %196

152:                                              ; preds = %148
  %153 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %154 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  store i32 -1, i32* %159, align 8
  %160 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %161 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %160, i32 0, i32 3
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store i32 -1, i32* %166, align 8
  %167 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %168 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %167, i32 0, i32 3
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i64 %171
  %173 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %174 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %173, i32 0, i32 3
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  store %struct.TYPE_8__* %172, %struct.TYPE_8__** %179, align 8
  %180 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %181 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %180, i32 0, i32 3
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %4, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %184
  %186 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %187 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %186, i32 0, i32 3
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  store %struct.TYPE_8__* %185, %struct.TYPE_8__** %192, align 8
  br label %193

193:                                              ; preds = %152
  %194 = load i32, i32* %4, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %4, align 4
  br label %148

196:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %210, %196
  %198 = load i32, i32* %4, align 4
  %199 = load i32, i32* @FAT_CACHE_SIZE, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %197
  %202 = load %struct.super_block*, %struct.super_block** %2, align 8
  %203 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %204 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %203, i32 0, i32 2
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i64 %207
  %209 = call i32 @FAT_cache_insert_hash(%struct.super_block* %202, %struct.TYPE_10__* %208)
  br label %210

210:                                              ; preds = %201
  %211 = load i32, i32* %4, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %4, align 4
  br label %197

213:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %259, %213
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @BUF_CACHE_HASH_SIZE, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %262

218:                                              ; preds = %214
  %219 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %220 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %219, i32 0, i32 1
  %221 = load %struct.TYPE_9__*, %struct.TYPE_9__** %220, align 8
  %222 = load i32, i32* %4, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  store i32 -1, i32* %225, align 8
  %226 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %227 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %226, i32 0, i32 1
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 3
  store i32 -1, i32* %232, align 8
  %233 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %234 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %233, i32 0, i32 1
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i64 %237
  %239 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %240 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %239, i32 0, i32 1
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %240, align 8
  %242 = load i32, i32* %4, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 2
  store %struct.TYPE_9__* %238, %struct.TYPE_9__** %245, align 8
  %246 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %247 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %246, i32 0, i32 1
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = load i32, i32* %4, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i64 %250
  %252 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %253 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %252, i32 0, i32 1
  %254 = load %struct.TYPE_9__*, %struct.TYPE_9__** %253, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 1
  store %struct.TYPE_9__* %251, %struct.TYPE_9__** %258, align 8
  br label %259

259:                                              ; preds = %218
  %260 = load i32, i32* %4, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %4, align 4
  br label %214

262:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %263

263:                                              ; preds = %276, %262
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* @BUF_CACHE_SIZE, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %279

267:                                              ; preds = %263
  %268 = load %struct.super_block*, %struct.super_block** %2, align 8
  %269 = load %struct.fs_info_t*, %struct.fs_info_t** %3, align 8
  %270 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %269, i32 0, i32 0
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %270, align 8
  %272 = load i32, i32* %4, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i64 %273
  %275 = call i32 @buf_cache_insert_hash(%struct.super_block* %268, %struct.TYPE_10__* %274)
  br label %276

276:                                              ; preds = %267
  %277 = load i32, i32* %4, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %4, align 4
  br label %263

279:                                              ; preds = %263
  ret void
}

declare dso_local %struct.TYPE_12__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @push_to_mru(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @FAT_cache_insert_hash(%struct.super_block*, %struct.TYPE_10__*) #1

declare dso_local i32 @buf_cache_insert_hash(%struct.super_block*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
