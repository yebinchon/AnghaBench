; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_test_extent_accounting.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_inode-tests.c_test_extent_accounting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.btrfs_root* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"running outstanding_extents tests\00", align 1
@TEST_ALLOC_INODE = common dso_local global i32 0, align 4
@TEST_ALLOC_FS_INFO = common dso_local global i32 0, align 4
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4
@BTRFS_MAX_EXTENT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"btrfs_set_extent_delalloc returned %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"miscount, wanted 1, got %u\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"miscount, wanted 2, got %u\00", align 1
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_UPTODATE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"clear_extent_bit returned %d\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"miscount, wanted 4, got %u\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"miscount, wanted 3, got %u\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"miscount, wanted 0, got %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_extent_accounting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_extent_accounting(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  store %struct.btrfs_root* null, %struct.btrfs_root** %8, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = call i32 @test_msg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = call %struct.inode* (...) @btrfs_new_test_inode()
  store %struct.inode* %13, %struct.inode** %7, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = icmp ne %struct.inode* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @TEST_ALLOC_INODE, align 4
  %18 = call i32 @test_std_err(i32 %17)
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %332

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32 %21, i32 %22)
  store %struct.btrfs_fs_info* %23, %struct.btrfs_fs_info** %6, align 8
  %24 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %25 = icmp ne %struct.btrfs_fs_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @TEST_ALLOC_FS_INFO, align 4
  %28 = call i32 @test_std_err(i32 %27)
  br label %313

29:                                               ; preds = %20
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %31 = call %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info* %30)
  store %struct.btrfs_root* %31, %struct.btrfs_root** %8, align 8
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %33 = call i64 @IS_ERR(%struct.btrfs_root* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %37 = call i32 @test_std_err(i32 %36)
  br label %313

38:                                               ; preds = %29
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %7, align 8
  %41 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store %struct.btrfs_root* %39, %struct.btrfs_root** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i32 @btrfs_test_inode_set_ops(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %45, i32 0, i32 %47, i32 0, i32* null)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %313

54:                                               ; preds = %38
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %9, align 4
  %63 = load %struct.inode*, %struct.inode** %7, align 8
  %64 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %313

68:                                               ; preds = %54
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %71 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %73, 1
  %75 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %69, i32 %70, i32 %74, i32 0, i32* null)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %313

81:                                               ; preds = %68
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 2
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %90)
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %313

95:                                               ; preds = %81
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %100 = ashr i32 %99, 1
  %101 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %102 = ashr i32 %101, 1
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %102, %103
  %105 = sub nsw i32 %104, 1
  %106 = load i32, i32* @EXTENT_DELALLOC, align 4
  %107 = load i32, i32* @EXTENT_UPTODATE, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @clear_extent_bit(i32* %98, i32 %100, i32 %105, i32 %108, i32 0, i32 0, i32* null)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %95
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %113)
  br label %313

115:                                              ; preds = %95
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %116)
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 2
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %9, align 4
  %124 = load %struct.inode*, %struct.inode** %7, align 8
  %125 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %124)
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %127)
  br label %313

129:                                              ; preds = %115
  %130 = load %struct.inode*, %struct.inode** %7, align 8
  %131 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %132 = ashr i32 %131, 1
  %133 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %134 = ashr i32 %133, 1
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %134, %135
  %137 = sub nsw i32 %136, 1
  %138 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %130, i32 %132, i32 %137, i32 0, i32* null)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %129
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %142)
  br label %313

144:                                              ; preds = %129
  %145 = load %struct.inode*, %struct.inode** %7, align 8
  %146 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %145)
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 2
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %9, align 4
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %153)
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %156)
  br label %313

158:                                              ; preds = %144
  %159 = load %struct.inode*, %struct.inode** %7, align 8
  %160 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %161 = load i32, i32* %4, align 4
  %162 = mul nsw i32 2, %161
  %163 = add nsw i32 %160, %162
  %164 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %165 = shl i32 %164, 1
  %166 = load i32, i32* %4, align 4
  %167 = mul nsw i32 3, %166
  %168 = add nsw i32 %165, %167
  %169 = sub nsw i32 %168, 1
  %170 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %159, i32 %163, i32 %169, i32 0, i32* null)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %158
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  br label %313

176:                                              ; preds = %158
  %177 = load %struct.inode*, %struct.inode** %7, align 8
  %178 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %177)
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 4
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %9, align 4
  %185 = load %struct.inode*, %struct.inode** %7, align 8
  %186 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %185)
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  br label %313

190:                                              ; preds = %176
  %191 = load %struct.inode*, %struct.inode** %7, align 8
  %192 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %193 = load i32, i32* %4, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %196 = load i32, i32* %4, align 4
  %197 = mul nsw i32 2, %196
  %198 = add nsw i32 %195, %197
  %199 = sub nsw i32 %198, 1
  %200 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %191, i32 %194, i32 %199, i32 0, i32* null)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %190
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  br label %313

206:                                              ; preds = %190
  %207 = load %struct.inode*, %struct.inode** %7, align 8
  %208 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %207)
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 3
  br i1 %211, label %212, label %220

212:                                              ; preds = %206
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %9, align 4
  %215 = load %struct.inode*, %struct.inode** %7, align 8
  %216 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %215)
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %218)
  br label %313

220:                                              ; preds = %206
  %221 = load %struct.inode*, %struct.inode** %7, align 8
  %222 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 1
  %224 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %228 = load i32, i32* %4, align 4
  %229 = mul nsw i32 2, %228
  %230 = add nsw i32 %227, %229
  %231 = sub nsw i32 %230, 1
  %232 = load i32, i32* @EXTENT_DELALLOC, align 4
  %233 = load i32, i32* @EXTENT_UPTODATE, align 4
  %234 = or i32 %232, %233
  %235 = call i32 @clear_extent_bit(i32* %223, i32 %226, i32 %231, i32 %234, i32 0, i32 0, i32* null)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %220
  %239 = load i32, i32* %9, align 4
  %240 = call i32 @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  br label %313

241:                                              ; preds = %220
  %242 = load %struct.inode*, %struct.inode** %7, align 8
  %243 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %242)
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 4
  br i1 %246, label %247, label %255

247:                                              ; preds = %241
  %248 = load i32, i32* @EINVAL, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %9, align 4
  %250 = load %struct.inode*, %struct.inode** %7, align 8
  %251 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %250)
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %253)
  br label %313

255:                                              ; preds = %241
  %256 = load %struct.inode*, %struct.inode** %7, align 8
  %257 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %258 = load i32, i32* %4, align 4
  %259 = add nsw i32 %257, %258
  %260 = load i32, i32* @BTRFS_MAX_EXTENT_SIZE, align 4
  %261 = load i32, i32* %4, align 4
  %262 = mul nsw i32 2, %261
  %263 = add nsw i32 %260, %262
  %264 = sub nsw i32 %263, 1
  %265 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %256, i32 %259, i32 %264, i32 0, i32* null)
  store i32 %265, i32* %9, align 4
  %266 = load i32, i32* %9, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %255
  %269 = load i32, i32* %9, align 4
  %270 = call i32 @test_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %269)
  br label %313

271:                                              ; preds = %255
  %272 = load %struct.inode*, %struct.inode** %7, align 8
  %273 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %272)
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 3
  br i1 %276, label %277, label %285

277:                                              ; preds = %271
  %278 = load i32, i32* @EINVAL, align 4
  %279 = sub nsw i32 0, %278
  store i32 %279, i32* %9, align 4
  %280 = load %struct.inode*, %struct.inode** %7, align 8
  %281 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %280)
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %283)
  br label %313

285:                                              ; preds = %271
  %286 = load %struct.inode*, %struct.inode** %7, align 8
  %287 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %286)
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 1
  %289 = load i32, i32* @EXTENT_DELALLOC, align 4
  %290 = load i32, i32* @EXTENT_UPTODATE, align 4
  %291 = or i32 %289, %290
  %292 = call i32 @clear_extent_bit(i32* %288, i32 0, i32 -1, i32 %291, i32 0, i32 0, i32* null)
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %285
  %296 = load i32, i32* %9, align 4
  %297 = call i32 @test_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %296)
  br label %313

298:                                              ; preds = %285
  %299 = load %struct.inode*, %struct.inode** %7, align 8
  %300 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %299)
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %312

304:                                              ; preds = %298
  %305 = load i32, i32* @EINVAL, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %9, align 4
  %307 = load %struct.inode*, %struct.inode** %7, align 8
  %308 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %307)
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @test_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %310)
  br label %313

312:                                              ; preds = %298
  store i32 0, i32* %9, align 4
  br label %313

313:                                              ; preds = %312, %304, %295, %277, %268, %247, %238, %212, %203, %182, %173, %150, %141, %121, %112, %87, %78, %60, %51, %35, %26
  %314 = load i32, i32* %9, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %313
  %317 = load %struct.inode*, %struct.inode** %7, align 8
  %318 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %317)
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  %320 = load i32, i32* @EXTENT_DELALLOC, align 4
  %321 = load i32, i32* @EXTENT_UPTODATE, align 4
  %322 = or i32 %320, %321
  %323 = call i32 @clear_extent_bit(i32* %319, i32 0, i32 -1, i32 %322, i32 0, i32 0, i32* null)
  br label %324

324:                                              ; preds = %316, %313
  %325 = load %struct.inode*, %struct.inode** %7, align 8
  %326 = call i32 @iput(%struct.inode* %325)
  %327 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %328 = call i32 @btrfs_free_dummy_root(%struct.btrfs_root* %327)
  %329 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %330 = call i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info* %329)
  %331 = load i32, i32* %9, align 4
  store i32 %331, i32* %3, align 4
  br label %332

332:                                              ; preds = %324, %16
  %333 = load i32, i32* %3, align 4
  ret i32 %333
}

declare dso_local i32 @test_msg(i8*) #1

declare dso_local %struct.inode* @btrfs_new_test_inode(...) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_alloc_dummy_fs_info(i32, i32) #1

declare dso_local %struct.btrfs_root* @btrfs_alloc_dummy_root(%struct.btrfs_fs_info*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_root*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_test_inode_set_ops(%struct.inode*) #1

declare dso_local i32 @btrfs_set_extent_delalloc(%struct.inode*, i32, i32, i32, i32*) #1

declare dso_local i32 @test_err(i8*, i32) #1

declare dso_local i32 @clear_extent_bit(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @btrfs_free_dummy_root(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_free_dummy_fs_info(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
