; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_validate_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_validate_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_super_block = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@BTRFS_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"no valid FS found\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BTRFS_SUPER_FLAG_SUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"unrecognized or unsupported super flag: %llu\00", align 1
@BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"tree_root level too big: %d >= %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"chunk_root level too big: %d >= %d\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"log_root level too big: %d >= %d\00", align 1
@BTRFS_MAX_METADATA_BLOCKSIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"invalid sectorsize %llu\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"sectorsize %llu not supported yet, only support %lu\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid nodesize %llu\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"invalid leafsize %u, should be %llu\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"tree_root block unaligned: %llu\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"chunk_root block unaligned: %llu\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"log_root block unaligned: %llu\00", align 1
@BTRFS_FSID_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"dev_item UUID does not match metadata fsid: %pU != %pU\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"bytes_used is too small %llu\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid stripesize %u\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"suspicious number of devices: %llu\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"number of devices is 0\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"super offset mismatch %llu != %u\00", align 1
@BTRFS_SUPER_INFO_OFFSET = common dso_local global i32 0, align 4
@BTRFS_SYSTEM_CHUNK_ARRAY_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [35 x i8] c"system chunk array too big %u > %u\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"system chunk array too small %u < %zu\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"suspicious: generation < chunk_root_generation: %llu < %llu\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"suspicious: generation < cache_generation: %llu < %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_super_block*, i32)* @validate_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_super(%struct.btrfs_fs_info* %0, %struct.btrfs_super_block* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_super_block* %1, %struct.btrfs_super_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %11 = call i32 @btrfs_super_nodesize(%struct.btrfs_super_block* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %13 = call i32 @btrfs_super_sectorsize(%struct.btrfs_super_block* %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %15 = call i64 @btrfs_super_magic(%struct.btrfs_super_block* %14)
  %16 = load i64, i64* @BTRFS_MAGIC, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %20 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %18, %3
  %24 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %25 = call i32 @btrfs_super_flags(%struct.btrfs_super_block* %24)
  %26 = load i32, i32* @BTRFS_SUPER_FLAG_SUPP, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %32 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %33 = call i32 @btrfs_super_flags(%struct.btrfs_super_block* %32)
  %34 = load i32, i32* @BTRFS_SUPER_FLAG_SUPP, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %30, %23
  %41 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %42 = call i32 @btrfs_super_root_level(%struct.btrfs_super_block* %41)
  %43 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %47 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %48 = call i32 @btrfs_super_root_level(%struct.btrfs_super_block* %47)
  %49 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %50 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45, %40
  %54 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %55 = call i32 @btrfs_super_chunk_root_level(%struct.btrfs_super_block* %54)
  %56 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %60 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %61 = call i32 @btrfs_super_chunk_root_level(%struct.btrfs_super_block* %60)
  %62 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %63 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %58, %53
  %67 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %68 = call i32 @btrfs_super_log_root_level(%struct.btrfs_super_block* %67)
  %69 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %73 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %74 = call i32 @btrfs_super_log_root_level(%struct.btrfs_super_block* %73)
  %75 = load i32, i32* @BTRFS_MAX_LEVEL, align 4
  %76 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %72, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %71, %66
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @is_power_of_2(i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 4096
  br i1 %85, label %90, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @BTRFS_MAX_METADATA_BLOCKSIZE, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %86, %83, %79
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %90, %86
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %101, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %100, %96
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @is_power_of_2(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @BTRFS_MAX_METADATA_BLOCKSIZE, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115, %111, %107
  %120 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %119, %115
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %128 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @le32_to_cpu(i32 %129)
  %131 = icmp ne i32 %126, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %125
  %133 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %134 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %135 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @le32_to_cpu(i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %133, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %137, i32 %138)
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %132, %125
  %143 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %144 = call i32 @btrfs_super_root(%struct.btrfs_super_block* %143)
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @IS_ALIGNED(i32 %144, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %142
  %149 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %150 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %151 = call i32 @btrfs_super_root(%struct.btrfs_super_block* %150)
  %152 = call i32 (%struct.btrfs_fs_info*, i8*, i32, ...) @btrfs_warn(%struct.btrfs_fs_info* %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %148, %142
  %156 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %157 = call i32 @btrfs_super_chunk_root(%struct.btrfs_super_block* %156)
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @IS_ALIGNED(i32 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %155
  %162 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %163 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %164 = call i32 @btrfs_super_chunk_root(%struct.btrfs_super_block* %163)
  %165 = call i32 (%struct.btrfs_fs_info*, i8*, i32, ...) @btrfs_warn(%struct.btrfs_fs_info* %162, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %161, %155
  %169 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %170 = call i32 @btrfs_super_log_root(%struct.btrfs_super_block* %169)
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @IS_ALIGNED(i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %181, label %174

174:                                              ; preds = %168
  %175 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %176 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %177 = call i32 @btrfs_super_log_root(%struct.btrfs_super_block* %176)
  %178 = call i32 (%struct.btrfs_fs_info*, i8*, i32, ...) @btrfs_warn(%struct.btrfs_fs_info* %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i32 %177)
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %9, align 4
  br label %181

181:                                              ; preds = %174, %168
  %182 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %183 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %182, i32 0, i32 0
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %188 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %192 = call i64 @memcmp(i32 %186, i32 %190, i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %181
  %195 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %196 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %197 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %196, i32 0, i32 0
  %198 = load %struct.TYPE_3__*, %struct.TYPE_3__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %202 = getelementptr inbounds %struct.btrfs_super_block, %struct.btrfs_super_block* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %195, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %200, i32 %204)
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %194, %181
  %209 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %210 = call i32 @btrfs_super_bytes_used(%struct.btrfs_super_block* %209)
  %211 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %212 = call i32 @btrfs_super_nodesize(%struct.btrfs_super_block* %211)
  %213 = mul nsw i32 6, %212
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %208
  %216 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %217 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %218 = call i32 @btrfs_super_bytes_used(%struct.btrfs_super_block* %217)
  %219 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %216, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32 %218)
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %9, align 4
  br label %222

222:                                              ; preds = %215, %208
  %223 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %224 = call i32 @btrfs_super_stripesize(%struct.btrfs_super_block* %223)
  %225 = call i32 @is_power_of_2(i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %222
  %228 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %229 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %230 = call i32 @btrfs_super_stripesize(%struct.btrfs_super_block* %229)
  %231 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %228, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* @EINVAL, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %9, align 4
  br label %234

234:                                              ; preds = %227, %222
  %235 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %236 = call i64 @btrfs_super_num_devices(%struct.btrfs_super_block* %235)
  %237 = icmp ugt i64 %236, 2147483648
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %240 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %241 = call i64 @btrfs_super_num_devices(%struct.btrfs_super_block* %240)
  %242 = trunc i64 %241 to i32
  %243 = call i32 (%struct.btrfs_fs_info*, i8*, i32, ...) @btrfs_warn(%struct.btrfs_fs_info* %239, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %238, %234
  %245 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %246 = call i64 @btrfs_super_num_devices(%struct.btrfs_super_block* %245)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %244
  %249 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %250 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %249, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0))
  %251 = load i32, i32* @EINVAL, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %9, align 4
  br label %253

253:                                              ; preds = %248, %244
  %254 = load i32, i32* %6, align 4
  %255 = icmp sge i32 %254, 0
  br i1 %255, label %256, label %270

256:                                              ; preds = %253
  %257 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %258 = call i32 @btrfs_super_bytenr(%struct.btrfs_super_block* %257)
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @btrfs_sb_offset(i32 %259)
  %261 = icmp ne i32 %258, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %256
  %263 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %264 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %265 = call i32 @btrfs_super_bytenr(%struct.btrfs_super_block* %264)
  %266 = load i32, i32* @BTRFS_SUPER_INFO_OFFSET, align 4
  %267 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %263, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %265, i32 %266)
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %9, align 4
  br label %270

270:                                              ; preds = %262, %256, %253
  %271 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %272 = call i32 @btrfs_super_sys_array_size(%struct.btrfs_super_block* %271)
  %273 = load i32, i32* @BTRFS_SYSTEM_CHUNK_ARRAY_SIZE, align 4
  %274 = icmp sgt i32 %272, %273
  br i1 %274, label %275, label %283

275:                                              ; preds = %270
  %276 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %277 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %278 = call i32 @btrfs_super_sys_array_size(%struct.btrfs_super_block* %277)
  %279 = load i32, i32* @BTRFS_SYSTEM_CHUNK_ARRAY_SIZE, align 4
  %280 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %276, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %278, i32 %279)
  %281 = load i32, i32* @EINVAL, align 4
  %282 = sub nsw i32 0, %281
  store i32 %282, i32* %9, align 4
  br label %283

283:                                              ; preds = %275, %270
  %284 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %285 = call i32 @btrfs_super_sys_array_size(%struct.btrfs_super_block* %284)
  %286 = sext i32 %285 to i64
  %287 = icmp ult i64 %286, 8
  br i1 %287, label %288, label %295

288:                                              ; preds = %283
  %289 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %290 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %291 = call i32 @btrfs_super_sys_array_size(%struct.btrfs_super_block* %290)
  %292 = call i32 (%struct.btrfs_fs_info*, i8*, ...) @btrfs_err(%struct.btrfs_fs_info* %289, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %291, i64 8)
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %9, align 4
  br label %295

295:                                              ; preds = %288, %283
  %296 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %297 = call i32 @btrfs_super_generation(%struct.btrfs_super_block* %296)
  %298 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %299 = call i32 @btrfs_super_chunk_root_generation(%struct.btrfs_super_block* %298)
  %300 = icmp slt i32 %297, %299
  br i1 %300, label %301, label %308

301:                                              ; preds = %295
  %302 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %303 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %304 = call i32 @btrfs_super_generation(%struct.btrfs_super_block* %303)
  %305 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %306 = call i32 @btrfs_super_chunk_root_generation(%struct.btrfs_super_block* %305)
  %307 = call i32 (%struct.btrfs_fs_info*, i8*, i32, ...) @btrfs_warn(%struct.btrfs_fs_info* %302, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.20, i64 0, i64 0), i32 %304, i32 %306)
  br label %308

308:                                              ; preds = %301, %295
  %309 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %310 = call i32 @btrfs_super_generation(%struct.btrfs_super_block* %309)
  %311 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %312 = call i32 @btrfs_super_cache_generation(%struct.btrfs_super_block* %311)
  %313 = icmp slt i32 %310, %312
  br i1 %313, label %314, label %325

314:                                              ; preds = %308
  %315 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %316 = call i32 @btrfs_super_cache_generation(%struct.btrfs_super_block* %315)
  %317 = icmp ne i32 %316, -1
  br i1 %317, label %318, label %325

318:                                              ; preds = %314
  %319 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %320 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %321 = call i32 @btrfs_super_generation(%struct.btrfs_super_block* %320)
  %322 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %5, align 8
  %323 = call i32 @btrfs_super_cache_generation(%struct.btrfs_super_block* %322)
  %324 = call i32 (%struct.btrfs_fs_info*, i8*, i32, ...) @btrfs_warn(%struct.btrfs_fs_info* %319, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i64 0, i64 0), i32 %321, i32 %323)
  br label %325

325:                                              ; preds = %318, %314, %308
  %326 = load i32, i32* %9, align 4
  ret i32 %326
}

declare dso_local i32 @btrfs_super_nodesize(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_sectorsize(%struct.btrfs_super_block*) #1

declare dso_local i64 @btrfs_super_magic(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, ...) #1

declare dso_local i32 @btrfs_super_flags(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_root_level(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_chunk_root_level(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_log_root_level(%struct.btrfs_super_block*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @btrfs_super_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*, i32, ...) #1

declare dso_local i32 @btrfs_super_chunk_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_log_root(%struct.btrfs_super_block*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @btrfs_super_bytes_used(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_stripesize(%struct.btrfs_super_block*) #1

declare dso_local i64 @btrfs_super_num_devices(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_bytenr(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_sb_offset(i32) #1

declare dso_local i32 @btrfs_super_sys_array_size(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_generation(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_chunk_root_generation(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_cache_generation(%struct.btrfs_super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
