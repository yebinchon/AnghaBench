; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_bitmaps_and_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_free-space-tests.c_test_bitmaps_and_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_block_group_cache = type { i32 }

@BITS_PER_BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"running bitmap and extent tests\00", align 1
@SZ_4M = common dso_local global i32 0, align 4
@SZ_1M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"couldn't create bitmap entry %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"couldn't add extent entry %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"couldn't remove extent entry %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"left remnants after our remove\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"couldn't re-add extent entry %d\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"couldn't remove from bitmap %d\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"left remnants in the bitmap\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"couldn't add to a bitmap %d\00", align 1
@SZ_512K = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"couldn't remove overlapping space %d\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"left over pieces after removing overlapping\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"couldn't add space to the bitmap %d\00", align 1
@SZ_2M = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"couldn't add extent to the cache %d\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"problem removing overlapping space %d\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"left something behind when removing space\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"couldn't add bitmap %d\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"failed to free our space %d\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"left stuff over\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"couldn't add bitmap entry %d\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"error removing bitmap and extent overlapping %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_block_group_cache*, i32)* @test_bitmaps_and_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_bitmaps_and_extents(%struct.btrfs_block_group_cache* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @BITS_PER_BITMAP, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = call i32 @test_msg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %13 = load i32, i32* @SZ_4M, align 4
  %14 = load i32, i32* @SZ_1M, align 4
  %15 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %12, i32 %13, i32 %14, i32 1)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %257

22:                                               ; preds = %2
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %24 = load i32, i32* @SZ_1M, align 4
  %25 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %23, i32 0, i32 %24, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %257

32:                                               ; preds = %22
  %33 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %34 = load i32, i32* @SZ_1M, align 4
  %35 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %33, i32 0, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %257

42:                                               ; preds = %32
  %43 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %44 = load i32, i32* @SZ_1M, align 4
  %45 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %43, i32 0, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %257

49:                                               ; preds = %42
  %50 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %51 = load i32, i32* @SZ_1M, align 4
  %52 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %50, i32 0, i32 %51, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %257

59:                                               ; preds = %49
  %60 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %61 = load i32, i32* @SZ_4M, align 4
  %62 = load i32, i32* @SZ_1M, align 4
  %63 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %60, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %3, align 4
  br label %257

70:                                               ; preds = %59
  %71 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %72 = load i32, i32* @SZ_4M, align 4
  %73 = load i32, i32* @SZ_1M, align 4
  %74 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %71, i32 %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %257

78:                                               ; preds = %70
  %79 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %80 = load i32, i32* @SZ_1M, align 4
  %81 = load i32, i32* @SZ_4M, align 4
  %82 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %79, i32 %80, i32 %81, i32 1)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %257

89:                                               ; preds = %78
  %90 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %91 = load i32, i32* @SZ_512K, align 4
  %92 = load i32, i32* @SZ_1M, align 4
  %93 = mul nsw i32 3, %92
  %94 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %90, i32 %91, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %257

101:                                              ; preds = %89
  %102 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %103 = load i32, i32* @SZ_512K, align 4
  %104 = load i32, i32* @SZ_1M, align 4
  %105 = mul nsw i32 3, %104
  %106 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %102, i32 %103, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %257

110:                                              ; preds = %101
  %111 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %112 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @__btrfs_remove_free_space_cache(i32 %113)
  %115 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %116 = load i32, i32* @SZ_4M, align 4
  %117 = load i32, i32* @SZ_4M, align 4
  %118 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %115, i32 %116, i32 %117, i32 1)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load i32, i32* %7, align 4
  %123 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %257

125:                                              ; preds = %110
  %126 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %127 = load i32, i32* @SZ_2M, align 4
  %128 = load i32, i32* @SZ_2M, align 4
  %129 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %126, i32 %127, i32 %128, i32 0)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %3, align 4
  br label %257

136:                                              ; preds = %125
  %137 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %138 = load i32, i32* @SZ_1M, align 4
  %139 = mul nsw i32 3, %138
  %140 = load i32, i32* @SZ_4M, align 4
  %141 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %137, i32 %139, i32 %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %136
  %145 = load i32, i32* %7, align 4
  %146 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %3, align 4
  br label %257

148:                                              ; preds = %136
  %149 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %150 = load i32, i32* @SZ_1M, align 4
  %151 = mul nsw i32 3, %150
  %152 = load i32, i32* @SZ_4M, align 4
  %153 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %149, i32 %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %257

157:                                              ; preds = %148
  %158 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %159 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @__btrfs_remove_free_space_cache(i32 %160)
  %162 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @SZ_4M, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* @SZ_4M, align 4
  %167 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %162, i32 %165, i32 %166, i32 1)
  store i32 %167, i32* %7, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %157
  %171 = load i32, i32* %7, align 4
  %172 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %3, align 4
  br label %257

174:                                              ; preds = %157
  %175 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* @SZ_1M, align 4
  %178 = sub nsw i32 %176, %177
  %179 = load i32, i32* @SZ_1M, align 4
  %180 = mul nsw i32 5, %179
  %181 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %175, i32 %178, i32 %180, i32 0)
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %174
  %185 = load i32, i32* %7, align 4
  %186 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %3, align 4
  br label %257

188:                                              ; preds = %174
  %189 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load i32, i32* @SZ_1M, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* @SZ_1M, align 4
  %194 = mul nsw i32 5, %193
  %195 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %189, i32 %192, i32 %194)
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %188
  %199 = load i32, i32* %7, align 4
  %200 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %7, align 4
  store i32 %201, i32* %3, align 4
  br label %257

202:                                              ; preds = %188
  %203 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @SZ_1M, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* @SZ_1M, align 4
  %208 = mul nsw i32 5, %207
  %209 = call i64 @test_check_exists(%struct.btrfs_block_group_cache* %203, i32 %206, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %202
  %212 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %257

213:                                              ; preds = %202
  %214 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %215 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @__btrfs_remove_free_space_cache(i32 %216)
  %218 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %219 = load i32, i32* @SZ_1M, align 4
  %220 = load i32, i32* @SZ_2M, align 4
  %221 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %218, i32 %219, i32 %220, i32 1)
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %7, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %213
  %225 = load i32, i32* %7, align 4
  %226 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %225)
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %3, align 4
  br label %257

228:                                              ; preds = %213
  %229 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %230 = load i32, i32* @SZ_1M, align 4
  %231 = mul nsw i32 3, %230
  %232 = load i32, i32* @SZ_1M, align 4
  %233 = call i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache* %229, i32 %231, i32 %232, i32 0)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %228
  %237 = load i32, i32* %7, align 4
  %238 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %7, align 4
  store i32 %239, i32* %3, align 4
  br label %257

240:                                              ; preds = %228
  %241 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %242 = load i32, i32* @SZ_1M, align 4
  %243 = load i32, i32* @SZ_1M, align 4
  %244 = mul nsw i32 3, %243
  %245 = call i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache* %241, i32 %242, i32 %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %240
  %249 = load i32, i32* %7, align 4
  %250 = call i32 (i8*, ...) @test_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* %7, align 4
  store i32 %251, i32* %3, align 4
  br label %257

252:                                              ; preds = %240
  %253 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %254 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @__btrfs_remove_free_space_cache(i32 %255)
  store i32 0, i32* %3, align 4
  br label %257

257:                                              ; preds = %252, %248, %236, %224, %211, %198, %184, %170, %155, %144, %132, %121, %108, %97, %85, %76, %66, %55, %47, %38, %28, %18
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local i32 @test_add_free_space_entry(%struct.btrfs_block_group_cache*, i32, i32, i32) #1

declare dso_local i32 @test_err(i8*, ...) #1

declare dso_local i32 @btrfs_remove_free_space(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i64 @test_check_exists(%struct.btrfs_block_group_cache*, i32, i32) #1

declare dso_local i32 @__btrfs_remove_free_space_cache(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
