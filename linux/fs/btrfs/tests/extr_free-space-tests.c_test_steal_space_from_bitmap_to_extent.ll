; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_steal_space_from_bitmap_to_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_steal_space_from_bitmap_to_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.btrfs_free_space_op* }
%struct.btrfs_free_space_op = type { i32, i32 }

@test_use_bitmap = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"running space stealing from bitmap to extent tests\00", align 1
@SZ_128M = common dso_local global i32 0, align 4
@SZ_256K = common dso_local global i32 0, align 4
@SZ_128K = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"couldn't add extent entry %d\00", align 1
@SZ_512K = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't add bitmap entry %d\00", align 1
@SZ_1K = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to free part of bitmap space %d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"free space range missing\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"bitmap region not removed from space cache\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid bitmap region marked as free\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"error adding free space: %d\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"bitmap region not marked as free\00", align 1
@SZ_16M = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"extent region not marked as free\00", align 1
@SZ_1M = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"expected region not marked as free\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"cache free space is not 1Mb + %u\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"failed to allocate 1Mb from space cache, returned offset is: %llu\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"cache free space is not %u\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"failed to allocate %u, returned offset : %llu\00", align 1
@SZ_32M = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [36 x i8] c"failed to allocate %u, offset: %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i32)* @test_steal_space_from_bitmap_to_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_steal_space_from_bitmap_to_extent(%struct.btrfs_block_group_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_free_space_op, align 4
  %10 = alloca %struct.btrfs_free_space_op*, align 8
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = getelementptr inbounds %struct.btrfs_free_space_op, %struct.btrfs_free_space_op* %9, i32 0, i32 0
  %12 = load i32, i32* @test_use_bitmap, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.btrfs_free_space_op, %struct.btrfs_free_space_op* %9, i32 0, i32 1
  %14 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load %struct.btrfs_free_space_op*, %struct.btrfs_free_space_op** %17, align 8
  %19 = getelementptr inbounds %struct.btrfs_free_space_op, %struct.btrfs_free_space_op* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = call i32 @test_msg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %23 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.btrfs_free_space_op*, %struct.btrfs_free_space_op** %25, align 8
  store %struct.btrfs_free_space_op* %26, %struct.btrfs_free_space_op** %10, align 8
  %27 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %28 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store %struct.btrfs_free_space_op* %9, %struct.btrfs_free_space_op** %30, align 8
  %31 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %32 = load i32, i32* @SZ_128M, align 4
  %33 = load i32, i32* @SZ_256K, align 4
  %34 = sub nsw i32 %32, %33
  %35 = load i32, i32* @SZ_128K, align 4
  %36 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %31, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %576

43:                                               ; preds = %2
  %44 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %45 = load i32, i32* @SZ_128M, align 4
  %46 = load i32, i32* @SZ_512K, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @SZ_128M, align 4
  %49 = load i32, i32* @SZ_512K, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %44, i32 %47, i32 %50, i32 1)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %576

58:                                               ; preds = %43
  %59 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %60 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %59, i32 2, i32 1)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %576

65:                                               ; preds = %58
  %66 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %67 = load i32, i32* @SZ_128M, align 4
  %68 = load i32, i32* @SZ_1K, align 4
  %69 = mul nsw i32 768, %68
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* @SZ_128M, align 4
  %72 = load i32, i32* @SZ_1K, align 4
  %73 = mul nsw i32 768, %72
  %74 = sub nsw i32 %71, %73
  %75 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %66, i32 %70, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %65
  %79 = load i32, i32* %6, align 4
  %80 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %576

82:                                               ; preds = %65
  %83 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %84 = load i32, i32* @SZ_128M, align 4
  %85 = load i32, i32* @SZ_256K, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* @SZ_128K, align 4
  %88 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %83, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32, i32* @ENOENT, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %576

94:                                               ; preds = %82
  %95 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %96 = load i32, i32* @SZ_128M, align 4
  %97 = load i32, i32* @SZ_512K, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* @SZ_256K, align 4
  %100 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %95, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %576

106:                                              ; preds = %94
  %107 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %108 = load i32, i32* @SZ_128M, align 4
  %109 = load i32, i32* @SZ_1K, align 4
  %110 = mul nsw i32 768, %109
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* @SZ_128M, align 4
  %113 = load i32, i32* @SZ_1K, align 4
  %114 = mul nsw i32 768, %113
  %115 = sub nsw i32 %112, %114
  %116 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %107, i32 %111, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %106
  %119 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %576

122:                                              ; preds = %106
  %123 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %124 = load i32, i32* @SZ_128M, align 4
  %125 = load i32, i32* @SZ_256K, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* @SZ_256K, align 4
  %128 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %123, i32 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %576

134:                                              ; preds = %122
  %135 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %136 = load i32, i32* @SZ_128M, align 4
  %137 = load i32, i32* @SZ_256K, align 4
  %138 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %135, i32 %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %576

144:                                              ; preds = %134
  %145 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %146 = load i32, i32* @SZ_128M, align 4
  %147 = load i32, i32* @SZ_512K, align 4
  %148 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %145, i32 %146, i32 %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* %6, align 4
  %153 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %3, align 4
  br label %576

155:                                              ; preds = %144
  %156 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %157 = load i32, i32* @SZ_128M, align 4
  %158 = load i32, i32* @SZ_512K, align 4
  %159 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %156, i32 %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %163 = load i32, i32* @ENOENT, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %576

165:                                              ; preds = %155
  %166 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %167 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %166, i32 2, i32 1)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %576

172:                                              ; preds = %165
  %173 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %174 = load i32, i32* @SZ_128M, align 4
  %175 = load i32, i32* @SZ_16M, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %173, i32 %176, i32 %177)
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %172
  %182 = load i32, i32* %6, align 4
  %183 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %576

185:                                              ; preds = %172
  %186 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %187 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %186, i32 2, i32 1)
  store i32 %187, i32* %6, align 4
  %188 = load i32, i32* %6, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* %6, align 4
  store i32 %191, i32* %3, align 4
  br label %576

192:                                              ; preds = %185
  %193 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %194 = load i32, i32* @SZ_128M, align 4
  %195 = load i32, i32* @SZ_128K, align 4
  %196 = sub nsw i32 %194, %195
  %197 = load i32, i32* @SZ_128K, align 4
  %198 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %193, i32 %196, i32 %197)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %192
  %202 = load i32, i32* %6, align 4
  %203 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %3, align 4
  br label %576

205:                                              ; preds = %192
  %206 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %207 = load i32, i32* @SZ_128M, align 4
  %208 = load i32, i32* @SZ_128K, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load i32, i32* @SZ_128K, align 4
  %211 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %206, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %217, label %213

213:                                              ; preds = %205
  %214 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %215 = load i32, i32* @ENOENT, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %576

217:                                              ; preds = %205
  %218 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %219 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %218, i32 2, i32 1)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i32, i32* %6, align 4
  store i32 %223, i32* %3, align 4
  br label %576

224:                                              ; preds = %217
  %225 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %226 = load i32, i32* @SZ_128M, align 4
  %227 = load i32, i32* @SZ_256K, align 4
  %228 = sub nsw i32 %226, %227
  %229 = load i32, i32* @SZ_1M, align 4
  %230 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %225, i32 %228, i32 %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %236, label %232

232:                                              ; preds = %224
  %233 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %234 = load i32, i32* @ENOENT, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %3, align 4
  br label %576

236:                                              ; preds = %224
  %237 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %238 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %237, i32 0, i32 0
  %239 = load %struct.TYPE_2__*, %struct.TYPE_2__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @SZ_1M, align 4
  %243 = load i32, i32* %5, align 4
  %244 = add nsw i32 %242, %243
  %245 = icmp ne i32 %241, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %236
  %247 = load i32, i32* %5, align 4
  %248 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @EINVAL, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %3, align 4
  br label %576

251:                                              ; preds = %236
  %252 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %253 = load i32, i32* @SZ_1M, align 4
  %254 = call i32 @btrfs_find_space_for_alloc(%struct.btrfs_block_group_cache* %252, i32 0, i32 %253, i32 0, i32* %8)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* @SZ_128M, align 4
  %257 = load i32, i32* @SZ_256K, align 4
  %258 = sub nsw i32 %256, %257
  %259 = icmp ne i32 %255, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %251
  %261 = load i32, i32* %7, align 4
  %262 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @EINVAL, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %3, align 4
  br label %576

265:                                              ; preds = %251
  %266 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %267 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %266, i32 1, i32 1)
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* %6, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* %6, align 4
  store i32 %271, i32* %3, align 4
  br label %576

272:                                              ; preds = %265
  %273 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %274 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %273, i32 0, i32 0
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* %5, align 4
  %279 = icmp ne i32 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %272
  %281 = load i32, i32* %5, align 4
  %282 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %281)
  %283 = load i32, i32* @EINVAL, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %3, align 4
  br label %576

285:                                              ; preds = %272
  %286 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %287 = load i32, i32* %5, align 4
  %288 = call i32 @btrfs_find_space_for_alloc(%struct.btrfs_block_group_cache* %286, i32 0, i32 %287, i32 0, i32* %8)
  store i32 %288, i32* %7, align 4
  %289 = load i32, i32* %7, align 4
  %290 = load i32, i32* @SZ_128M, align 4
  %291 = load i32, i32* @SZ_16M, align 4
  %292 = add nsw i32 %290, %291
  %293 = icmp ne i32 %289, %292
  br i1 %293, label %294, label %300

294:                                              ; preds = %285
  %295 = load i32, i32* %5, align 4
  %296 = load i32, i32* %7, align 4
  %297 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i32 %295, i32 %296)
  %298 = load i32, i32* @EINVAL, align 4
  %299 = sub nsw i32 0, %298
  store i32 %299, i32* %3, align 4
  br label %576

300:                                              ; preds = %285
  %301 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %302 = call i32 @check_cache_empty(%struct.btrfs_block_group_cache* %301)
  store i32 %302, i32* %6, align 4
  %303 = load i32, i32* %6, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = load i32, i32* %6, align 4
  store i32 %306, i32* %3, align 4
  br label %576

307:                                              ; preds = %300
  %308 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %309 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %308, i32 0, i32 0
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** %309, align 8
  %311 = call i32 @__btrfs_remove_free_space_cache(%struct.TYPE_2__* %310)
  %312 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %313 = load i32, i32* @SZ_128M, align 4
  %314 = load i32, i32* @SZ_128K, align 4
  %315 = add nsw i32 %313, %314
  %316 = load i32, i32* @SZ_128K, align 4
  %317 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %312, i32 %315, i32 %316, i32 0)
  store i32 %317, i32* %6, align 4
  %318 = load i32, i32* %6, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %307
  %321 = load i32, i32* %6, align 4
  %322 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %321)
  %323 = load i32, i32* %6, align 4
  store i32 %323, i32* %3, align 4
  br label %576

324:                                              ; preds = %307
  %325 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %326 = load i32, i32* @SZ_128M, align 4
  %327 = load i32, i32* @SZ_512K, align 4
  %328 = sub nsw i32 %326, %327
  %329 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %325, i32 0, i32 %328, i32 1)
  store i32 %329, i32* %6, align 4
  %330 = load i32, i32* %6, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %324
  %333 = load i32, i32* %6, align 4
  %334 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %333)
  %335 = load i32, i32* %6, align 4
  store i32 %335, i32* %3, align 4
  br label %576

336:                                              ; preds = %324
  %337 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %338 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %337, i32 2, i32 1)
  store i32 %338, i32* %6, align 4
  %339 = load i32, i32* %6, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i32, i32* %6, align 4
  store i32 %342, i32* %3, align 4
  br label %576

343:                                              ; preds = %336
  %344 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %345 = load i32, i32* @SZ_128M, align 4
  %346 = load i32, i32* @SZ_1K, align 4
  %347 = mul nsw i32 768, %346
  %348 = sub nsw i32 %345, %347
  %349 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %344, i32 0, i32 %348)
  store i32 %349, i32* %6, align 4
  %350 = load i32, i32* %6, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %343
  %353 = load i32, i32* %6, align 4
  %354 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %353)
  %355 = load i32, i32* %6, align 4
  store i32 %355, i32* %3, align 4
  br label %576

356:                                              ; preds = %343
  %357 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %358 = load i32, i32* @SZ_128M, align 4
  %359 = load i32, i32* @SZ_128K, align 4
  %360 = add nsw i32 %358, %359
  %361 = load i32, i32* @SZ_128K, align 4
  %362 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %357, i32 %360, i32 %361)
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %368, label %364

364:                                              ; preds = %356
  %365 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %366 = load i32, i32* @ENOENT, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %3, align 4
  br label %576

368:                                              ; preds = %356
  %369 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %370 = load i32, i32* @SZ_128M, align 4
  %371 = load i32, i32* @SZ_1K, align 4
  %372 = mul nsw i32 768, %371
  %373 = sub nsw i32 %370, %372
  %374 = load i32, i32* @SZ_256K, align 4
  %375 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %369, i32 %373, i32 %374)
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %381, label %377

377:                                              ; preds = %368
  %378 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %379 = load i32, i32* @ENOENT, align 4
  %380 = sub nsw i32 0, %379
  store i32 %380, i32* %3, align 4
  br label %576

381:                                              ; preds = %368
  %382 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %383 = load i32, i32* @SZ_128M, align 4
  %384 = load i32, i32* @SZ_1K, align 4
  %385 = mul nsw i32 768, %384
  %386 = sub nsw i32 %383, %385
  %387 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %382, i32 0, i32 %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %393

389:                                              ; preds = %381
  %390 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %391 = load i32, i32* @EINVAL, align 4
  %392 = sub nsw i32 0, %391
  store i32 %392, i32* %3, align 4
  br label %576

393:                                              ; preds = %381
  %394 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %395 = load i32, i32* @SZ_128M, align 4
  %396 = load i32, i32* @SZ_512K, align 4
  %397 = sub nsw i32 %395, %396
  %398 = load i32, i32* @SZ_512K, align 4
  %399 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %394, i32 %397, i32 %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %393
  %402 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %403 = load i32, i32* @EINVAL, align 4
  %404 = sub nsw i32 0, %403
  store i32 %404, i32* %3, align 4
  br label %576

405:                                              ; preds = %393
  %406 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %407 = load i32, i32* @SZ_128M, align 4
  %408 = load i32, i32* @SZ_512K, align 4
  %409 = sub nsw i32 %407, %408
  %410 = load i32, i32* @SZ_512K, align 4
  %411 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %406, i32 %409, i32 %410)
  store i32 %411, i32* %6, align 4
  %412 = load i32, i32* %6, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %405
  %415 = load i32, i32* %6, align 4
  %416 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %415)
  %417 = load i32, i32* %6, align 4
  store i32 %417, i32* %3, align 4
  br label %576

418:                                              ; preds = %405
  %419 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %420 = load i32, i32* @SZ_128M, align 4
  %421 = load i32, i32* @SZ_512K, align 4
  %422 = sub nsw i32 %420, %421
  %423 = load i32, i32* @SZ_512K, align 4
  %424 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %419, i32 %422, i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %430, label %426

426:                                              ; preds = %418
  %427 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %428 = load i32, i32* @ENOENT, align 4
  %429 = sub nsw i32 0, %428
  store i32 %429, i32* %3, align 4
  br label %576

430:                                              ; preds = %418
  %431 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %432 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %431, i32 2, i32 1)
  store i32 %432, i32* %6, align 4
  %433 = load i32, i32* %6, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %430
  %436 = load i32, i32* %6, align 4
  store i32 %436, i32* %3, align 4
  br label %576

437:                                              ; preds = %430
  %438 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %439 = load i32, i32* @SZ_32M, align 4
  %440 = load i32, i32* %5, align 4
  %441 = mul nsw i32 2, %440
  %442 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %438, i32 %439, i32 %441)
  store i32 %442, i32* %6, align 4
  %443 = load i32, i32* %6, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %437
  %446 = load i32, i32* %6, align 4
  %447 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %446)
  %448 = load i32, i32* %6, align 4
  store i32 %448, i32* %3, align 4
  br label %576

449:                                              ; preds = %437
  %450 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %451 = load i32, i32* @SZ_128M, align 4
  %452 = load i32, i32* @SZ_128K, align 4
  %453 = call i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache* %450, i32 %451, i32 %452)
  store i32 %453, i32* %6, align 4
  %454 = load i32, i32* %6, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %449
  %457 = load i32, i32* %6, align 4
  %458 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %457)
  %459 = load i32, i32* %6, align 4
  store i32 %459, i32* %3, align 4
  br label %576

460:                                              ; preds = %449
  %461 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %462 = load i32, i32* @SZ_128M, align 4
  %463 = load i32, i32* @SZ_128K, align 4
  %464 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %461, i32 %462, i32 %463)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %470, label %466

466:                                              ; preds = %460
  %467 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %468 = load i32, i32* @ENOENT, align 4
  %469 = sub nsw i32 0, %468
  store i32 %469, i32* %3, align 4
  br label %576

470:                                              ; preds = %460
  %471 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %472 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %471, i32 2, i32 1)
  store i32 %472, i32* %6, align 4
  %473 = load i32, i32* %6, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %477

475:                                              ; preds = %470
  %476 = load i32, i32* %6, align 4
  store i32 %476, i32* %3, align 4
  br label %576

477:                                              ; preds = %470
  %478 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %479 = load i32, i32* @SZ_128M, align 4
  %480 = load i32, i32* @SZ_1K, align 4
  %481 = mul nsw i32 768, %480
  %482 = sub nsw i32 %479, %481
  %483 = load i32, i32* @SZ_1M, align 4
  %484 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %478, i32 %482, i32 %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %490, label %486

486:                                              ; preds = %477
  %487 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %488 = load i32, i32* @ENOENT, align 4
  %489 = sub nsw i32 0, %488
  store i32 %489, i32* %3, align 4
  br label %576

490:                                              ; preds = %477
  %491 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %492 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %491, i32 0, i32 0
  %493 = load %struct.TYPE_2__*, %struct.TYPE_2__** %492, align 8
  %494 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 8
  %496 = load i32, i32* @SZ_1M, align 4
  %497 = load i32, i32* %5, align 4
  %498 = mul nsw i32 2, %497
  %499 = add nsw i32 %496, %498
  %500 = icmp ne i32 %495, %499
  br i1 %500, label %501, label %507

501:                                              ; preds = %490
  %502 = load i32, i32* %5, align 4
  %503 = mul nsw i32 2, %502
  %504 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i32 %503)
  %505 = load i32, i32* @EINVAL, align 4
  %506 = sub nsw i32 0, %505
  store i32 %506, i32* %3, align 4
  br label %576

507:                                              ; preds = %490
  %508 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %509 = load i32, i32* @SZ_1M, align 4
  %510 = call i32 @btrfs_find_space_for_alloc(%struct.btrfs_block_group_cache* %508, i32 0, i32 %509, i32 0, i32* %8)
  store i32 %510, i32* %7, align 4
  %511 = load i32, i32* %7, align 4
  %512 = load i32, i32* @SZ_128M, align 4
  %513 = load i32, i32* @SZ_1K, align 4
  %514 = mul nsw i32 768, %513
  %515 = sub nsw i32 %512, %514
  %516 = icmp ne i32 %511, %515
  br i1 %516, label %517, label %522

517:                                              ; preds = %507
  %518 = load i32, i32* %7, align 4
  %519 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0), i32 %518)
  %520 = load i32, i32* @EINVAL, align 4
  %521 = sub nsw i32 0, %520
  store i32 %521, i32* %3, align 4
  br label %576

522:                                              ; preds = %507
  %523 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %524 = call i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache* %523, i32 1, i32 1)
  store i32 %524, i32* %6, align 4
  %525 = load i32, i32* %6, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %529

527:                                              ; preds = %522
  %528 = load i32, i32* %6, align 4
  store i32 %528, i32* %3, align 4
  br label %576

529:                                              ; preds = %522
  %530 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %531 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %530, i32 0, i32 0
  %532 = load %struct.TYPE_2__*, %struct.TYPE_2__** %531, align 8
  %533 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = load i32, i32* %5, align 4
  %536 = mul nsw i32 2, %535
  %537 = icmp ne i32 %534, %536
  br i1 %537, label %538, label %544

538:                                              ; preds = %529
  %539 = load i32, i32* %5, align 4
  %540 = mul nsw i32 2, %539
  %541 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %540)
  %542 = load i32, i32* @EINVAL, align 4
  %543 = sub nsw i32 0, %542
  store i32 %543, i32* %3, align 4
  br label %576

544:                                              ; preds = %529
  %545 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %546 = load i32, i32* %5, align 4
  %547 = mul nsw i32 2, %546
  %548 = call i32 @btrfs_find_space_for_alloc(%struct.btrfs_block_group_cache* %545, i32 0, i32 %547, i32 0, i32* %8)
  store i32 %548, i32* %7, align 4
  %549 = load i32, i32* %7, align 4
  %550 = load i32, i32* @SZ_32M, align 4
  %551 = icmp ne i32 %549, %550
  br i1 %551, label %552, label %559

552:                                              ; preds = %544
  %553 = load i32, i32* %5, align 4
  %554 = mul nsw i32 2, %553
  %555 = load i32, i32* %7, align 4
  %556 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %554, i32 %555)
  %557 = load i32, i32* @EINVAL, align 4
  %558 = sub nsw i32 0, %557
  store i32 %558, i32* %3, align 4
  br label %576

559:                                              ; preds = %544
  %560 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %561 = call i32 @check_cache_empty(%struct.btrfs_block_group_cache* %560)
  store i32 %561, i32* %6, align 4
  %562 = load i32, i32* %6, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %566

564:                                              ; preds = %559
  %565 = load i32, i32* %6, align 4
  store i32 %565, i32* %3, align 4
  br label %576

566:                                              ; preds = %559
  %567 = load %struct.btrfs_free_space_op*, %struct.btrfs_free_space_op** %10, align 8
  %568 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %569 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %568, i32 0, i32 0
  %570 = load %struct.TYPE_2__*, %struct.TYPE_2__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %570, i32 0, i32 1
  store %struct.btrfs_free_space_op* %567, %struct.btrfs_free_space_op** %571, align 8
  %572 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %573 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %572, i32 0, i32 0
  %574 = load %struct.TYPE_2__*, %struct.TYPE_2__** %573, align 8
  %575 = call i32 @__btrfs_remove_free_space_cache(%struct.TYPE_2__* %574)
  store i32 0, i32* %3, align 4
  br label %576

576:                                              ; preds = %566, %564, %552, %538, %527, %517, %501, %486, %475, %466, %456, %445, %435, %426, %414, %401, %389, %377, %364, %352, %341, %332, %320, %305, %294, %280, %270, %260, %246, %232, %222, %213, %201, %190, %181, %170, %161, %151, %140, %130, %118, %102, %90, %78, %63, %54, %39
  %577 = load i32, i32* %3, align 4
  ret i32 %577
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache*, i32, i32, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @check_num_extents_and_bitmaps(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i64 @test_check_exists(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @btrfs_add_free_space(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @btrfs_find_space_for_alloc(%struct.btrfs_block_group_cache*, i32, i32, i32, i32*) #1

declare dso_local i32 @check_cache_empty(%struct.btrfs_block_group_cache*) #1

declare dso_local i32 @__btrfs_remove_free_space_cache(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
