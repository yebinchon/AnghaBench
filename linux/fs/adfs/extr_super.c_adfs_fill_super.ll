; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_super.c_adfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.adfs_sb_info*, i32, i32, i32*, i32*, i32, i32 }
%struct.adfs_sb_info = type { i32, i32, %struct.adfs_sb_info*, %struct.buffer_head*, i64, i32*, i32, i64, i32, i32, i32, i32, i32 }
%struct.buffer_head = type { i8* }
%struct.adfs_discrecord = type { i32, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.object_info = type { i32, i32, i32, i8*, i64, i8*, i8* }
%struct.inode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ADFS_SB_FLAGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@ADFS_DEFAULT_OWNER_MASK = common dso_local global i32 0, align 4
@ADFS_DEFAULT_OTHER_MASK = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@ADFS_DISCRECORD = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error: unable to read superblock\00", align 1
@EIO = common dso_local global i32 0, align 4
@ADFS_DR_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"error: couldn't read superblock on 2nd try.\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"error: disc record mismatch, very weird!\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error: unsupported blocksize\00", align 1
@ADFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@adfs_sops = common dso_local global i32 0, align 4
@ADFS_NEWDIR_SIZE = common dso_local global i8* null, align 8
@ADFS_NDA_DIRECTORY = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_READ = common dso_local global i32 0, align 4
@ADFS_NDA_OWNER_WRITE = common dso_local global i32 0, align 4
@ADFS_NDA_PUBLIC_READ = common dso_local global i32 0, align 4
@adfs_fplus_dir_ops = common dso_local global i32 0, align 4
@ADFS_FPLUS_NAME_LEN = common dso_local global i32 0, align 4
@adfs_f_dir_ops = common dso_local global i32 0, align 4
@ADFS_F_NAME_LEN = common dso_local global i32 0, align 4
@adfs_dentry_operations = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"get root inode failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"error: can't find an ADFS filesystem on dev %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @adfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adfs_discrecord*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.object_info, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.adfs_sb_info*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* @ADFS_SB_FLAGS, align 4
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.adfs_sb_info* @kzalloc(i32 80, i32 %24)
  store %struct.adfs_sb_info* %25, %struct.adfs_sb_info** %13, align 8
  %26 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %27 = icmp ne %struct.adfs_sb_info* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %332

31:                                               ; preds = %3
  %32 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 1
  store %struct.adfs_sb_info* %32, %struct.adfs_sb_info** %34, align 8
  %35 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %36 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %37 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %39 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %40 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @ADFS_DEFAULT_OWNER_MASK, align 4
  %42 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %43 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %42, i32 0, i32 10
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @ADFS_DEFAULT_OTHER_MASK, align 4
  %45 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %46 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %48 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 @parse_options(%struct.super_block* %49, %struct.adfs_sb_info* %50, i8* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %31
  br label %326

55:                                               ; preds = %31
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load i32, i32* @BLOCK_SIZE, align 4
  %58 = call i64 @sb_set_blocksize(%struct.super_block* %56, i32 %57)
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = load i32, i32* @ADFS_DISCRECORD, align 4
  %61 = load i32, i32* @BLOCK_SIZE, align 4
  %62 = sdiv i32 %60, %61
  %63 = call %struct.buffer_head* @sb_bread(%struct.super_block* %59, i32 %62)
  store %struct.buffer_head* %63, %struct.buffer_head** %9, align 8
  %64 = icmp ne %struct.buffer_head* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %55
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = call i32 (%struct.super_block*, i32, i8*, ...) @adfs_msg(%struct.super_block* %66, i32 %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %15, align 4
  br label %326

71:                                               ; preds = %55
  %72 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %73 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @ADFS_DISCRECORD, align 4
  %76 = load i32, i32* @BLOCK_SIZE, align 4
  %77 = srem i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = call i64 @adfs_checkbblk(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %15, align 4
  br label %312

86:                                               ; preds = %71
  %87 = load i8*, i8** %11, align 8
  %88 = load i32, i32* @ADFS_DR_OFFSET, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = bitcast i8* %90 to %struct.adfs_discrecord*
  store %struct.adfs_discrecord* %91, %struct.adfs_discrecord** %8, align 8
  %92 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %93 = call i64 @adfs_checkdiscrecord(%struct.adfs_discrecord* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %15, align 4
  br label %312

98:                                               ; preds = %86
  %99 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %100 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 1, %101
  store i32 %102, i32* %12, align 4
  %103 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %104 = call i32 @brelse(%struct.buffer_head* %103)
  %105 = load %struct.super_block*, %struct.super_block** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i64 @sb_set_blocksize(%struct.super_block* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %98
  %110 = load %struct.super_block*, %struct.super_block** %5, align 8
  %111 = load i32, i32* @ADFS_DISCRECORD, align 4
  %112 = load %struct.super_block*, %struct.super_block** %5, align 8
  %113 = getelementptr inbounds %struct.super_block, %struct.super_block* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sdiv i32 %111, %114
  %116 = call %struct.buffer_head* @sb_bread(%struct.super_block* %110, i32 %115)
  store %struct.buffer_head* %116, %struct.buffer_head** %9, align 8
  %117 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %118 = icmp ne %struct.buffer_head* %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %109
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = call i32 (%struct.super_block*, i32, i8*, ...) @adfs_msg(%struct.super_block* %120, i32 %121, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %15, align 4
  br label %326

125:                                              ; preds = %109
  %126 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %127 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @ADFS_DISCRECORD, align 4
  %130 = load %struct.super_block*, %struct.super_block** %5, align 8
  %131 = getelementptr inbounds %struct.super_block, %struct.super_block* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = srem i32 %129, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %128, i64 %134
  store i8* %135, i8** %11, align 8
  %136 = load i8*, i8** %11, align 8
  %137 = call i64 @adfs_checkbblk(i8* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %125
  %140 = load %struct.super_block*, %struct.super_block** %5, align 8
  %141 = load i32, i32* @KERN_ERR, align 4
  %142 = call i32 (%struct.super_block*, i32, i8*, ...) @adfs_msg(%struct.super_block* %140, i32 %141, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %15, align 4
  br label %323

145:                                              ; preds = %125
  %146 = load i8*, i8** %11, align 8
  %147 = load i32, i32* @ADFS_DR_OFFSET, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = bitcast i8* %149 to %struct.adfs_discrecord*
  store %struct.adfs_discrecord* %150, %struct.adfs_discrecord** %8, align 8
  br label %161

151:                                              ; preds = %98
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %158, label %154

154:                                              ; preds = %151
  %155 = load %struct.super_block*, %struct.super_block** %5, align 8
  %156 = load i32, i32* @KERN_ERR, align 4
  %157 = call i32 (%struct.super_block*, i32, i8*, ...) @adfs_msg(%struct.super_block* %155, i32 %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %158

158:                                              ; preds = %154, %151
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %15, align 4
  br label %326

161:                                              ; preds = %145
  %162 = load i32, i32* @ADFS_SUPER_MAGIC, align 4
  %163 = load %struct.super_block*, %struct.super_block** %5, align 8
  %164 = getelementptr inbounds %struct.super_block, %struct.super_block* %163, i32 0, i32 6
  store i32 %162, i32* %164, align 8
  %165 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %166 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %169 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %168, i32 0, i32 8
  store i32 %167, i32* %169, align 8
  %170 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %171 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %174 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 %175, 8
  %177 = or i32 %172, %176
  %178 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %179 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %181 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %184 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = sub nsw i64 %182, %186
  %188 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %189 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %188, i32 0, i32 7
  store i64 %187, i64* %189, align 8
  %190 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %191 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %194 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %193, i32 0, i32 6
  store i32 %192, i32* %194, align 8
  %195 = load %struct.super_block*, %struct.super_block** %5, align 8
  %196 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %197 = call %struct.adfs_sb_info* @adfs_read_map(%struct.super_block* %195, %struct.adfs_discrecord* %196)
  %198 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %199 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %198, i32 0, i32 2
  store %struct.adfs_sb_info* %197, %struct.adfs_sb_info** %199, align 8
  %200 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %201 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %200, i32 0, i32 2
  %202 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %201, align 8
  %203 = call i64 @IS_ERR(%struct.adfs_sb_info* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %161
  %206 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %207 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %206, i32 0, i32 2
  %208 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %207, align 8
  %209 = call i32 @PTR_ERR(%struct.adfs_sb_info* %208)
  store i32 %209, i32* %15, align 4
  br label %323

210:                                              ; preds = %161
  %211 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %212 = call i32 @brelse(%struct.buffer_head* %211)
  %213 = load %struct.super_block*, %struct.super_block** %5, align 8
  %214 = getelementptr inbounds %struct.super_block, %struct.super_block* %213, i32 0, i32 5
  store i32* @adfs_sops, i32** %214, align 8
  %215 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %216 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %215, i32 0, i32 2
  %217 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %216, align 8
  %218 = call %struct.adfs_discrecord* @adfs_map_discrecord(%struct.adfs_sb_info* %217)
  store %struct.adfs_discrecord* %218, %struct.adfs_discrecord** %8, align 8
  %219 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %220 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = call i8* @le32_to_cpu(i32 %221)
  %223 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 5
  store i8* %222, i8** %223, align 8
  %224 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 6
  store i8* %222, i8** %224, align 8
  %225 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 4
  store i64 0, i64* %225, align 8
  %226 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 0
  store i32 -1048513, i32* %226, align 8
  %227 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 1
  store i32 -333266944, i32* %227, align 4
  %228 = load i8*, i8** @ADFS_NEWDIR_SIZE, align 8
  %229 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 3
  store i8* %228, i8** %229, align 8
  %230 = load i32, i32* @ADFS_NDA_DIRECTORY, align 4
  %231 = load i32, i32* @ADFS_NDA_OWNER_READ, align 4
  %232 = or i32 %230, %231
  %233 = load i32, i32* @ADFS_NDA_OWNER_WRITE, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @ADFS_NDA_PUBLIC_READ, align 4
  %236 = or i32 %234, %235
  %237 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 2
  store i32 %236, i32* %237, align 8
  %238 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %239 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %210
  %243 = load %struct.adfs_discrecord*, %struct.adfs_discrecord** %8, align 8
  %244 = getelementptr inbounds %struct.adfs_discrecord, %struct.adfs_discrecord* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i8* @le32_to_cpu(i32 %245)
  %247 = getelementptr inbounds %struct.object_info, %struct.object_info* %10, i32 0, i32 3
  store i8* %246, i8** %247, align 8
  %248 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %249 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %248, i32 0, i32 5
  store i32* @adfs_fplus_dir_ops, i32** %249, align 8
  %250 = load i32, i32* @ADFS_FPLUS_NAME_LEN, align 4
  %251 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %252 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %251, i32 0, i32 1
  store i32 %250, i32* %252, align 4
  br label %259

253:                                              ; preds = %210
  %254 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %255 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %254, i32 0, i32 5
  store i32* @adfs_f_dir_ops, i32** %255, align 8
  %256 = load i32, i32* @ADFS_F_NAME_LEN, align 4
  %257 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %258 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %253, %242
  %260 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %261 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %259
  %265 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %266 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, 4
  store i32 %268, i32* %266, align 4
  br label %269

269:                                              ; preds = %264, %259
  %270 = load %struct.super_block*, %struct.super_block** %5, align 8
  %271 = getelementptr inbounds %struct.super_block, %struct.super_block* %270, i32 0, i32 4
  store i32* @adfs_dentry_operations, i32** %271, align 8
  %272 = load %struct.super_block*, %struct.super_block** %5, align 8
  %273 = call %struct.inode* @adfs_iget(%struct.super_block* %272, %struct.object_info* %10)
  store %struct.inode* %273, %struct.inode** %14, align 8
  %274 = load %struct.inode*, %struct.inode** %14, align 8
  %275 = call i32 @d_make_root(%struct.inode* %274)
  %276 = load %struct.super_block*, %struct.super_block** %5, align 8
  %277 = getelementptr inbounds %struct.super_block, %struct.super_block* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load %struct.super_block*, %struct.super_block** %5, align 8
  %279 = getelementptr inbounds %struct.super_block, %struct.super_block* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %311, label %282

282:                                              ; preds = %269
  store i32 0, i32* %16, align 4
  br label %283

283:                                              ; preds = %299, %282
  %284 = load i32, i32* %16, align 4
  %285 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %286 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %302

289:                                              ; preds = %283
  %290 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %291 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %290, i32 0, i32 2
  %292 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %291, align 8
  %293 = load i32, i32* %16, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %292, i64 %294
  %296 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %295, i32 0, i32 3
  %297 = load %struct.buffer_head*, %struct.buffer_head** %296, align 8
  %298 = call i32 @brelse(%struct.buffer_head* %297)
  br label %299

299:                                              ; preds = %289
  %300 = load i32, i32* %16, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %16, align 4
  br label %283

302:                                              ; preds = %283
  %303 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %304 = getelementptr inbounds %struct.adfs_sb_info, %struct.adfs_sb_info* %303, i32 0, i32 2
  %305 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %304, align 8
  %306 = call i32 @kfree(%struct.adfs_sb_info* %305)
  %307 = load %struct.super_block*, %struct.super_block** %5, align 8
  %308 = call i32 @adfs_error(%struct.super_block* %307, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %309 = load i32, i32* @EIO, align 4
  %310 = sub nsw i32 0, %309
  store i32 %310, i32* %15, align 4
  br label %326

311:                                              ; preds = %269
  store i32 0, i32* %4, align 4
  br label %332

312:                                              ; preds = %95, %83
  %313 = load i32, i32* %7, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %312
  %316 = load %struct.super_block*, %struct.super_block** %5, align 8
  %317 = load i32, i32* @KERN_ERR, align 4
  %318 = load %struct.super_block*, %struct.super_block** %5, align 8
  %319 = getelementptr inbounds %struct.super_block, %struct.super_block* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = call i32 (%struct.super_block*, i32, i8*, ...) @adfs_msg(%struct.super_block* %316, i32 %317, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %315, %312
  br label %323

323:                                              ; preds = %322, %205, %139
  %324 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %325 = call i32 @brelse(%struct.buffer_head* %324)
  br label %326

326:                                              ; preds = %323, %302, %158, %119, %65, %54
  %327 = load %struct.super_block*, %struct.super_block** %5, align 8
  %328 = getelementptr inbounds %struct.super_block, %struct.super_block* %327, i32 0, i32 1
  store %struct.adfs_sb_info* null, %struct.adfs_sb_info** %328, align 8
  %329 = load %struct.adfs_sb_info*, %struct.adfs_sb_info** %13, align 8
  %330 = call i32 @kfree(%struct.adfs_sb_info* %329)
  %331 = load i32, i32* %15, align 4
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %326, %311, %28
  %333 = load i32, i32* %4, align 4
  ret i32 %333
}

declare dso_local %struct.adfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i64 @parse_options(%struct.super_block*, %struct.adfs_sb_info*, i8*) #1

declare dso_local i64 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @adfs_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i64 @adfs_checkbblk(i8*) #1

declare dso_local i64 @adfs_checkdiscrecord(%struct.adfs_discrecord*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.adfs_sb_info* @adfs_read_map(%struct.super_block*, %struct.adfs_discrecord*) #1

declare dso_local i64 @IS_ERR(%struct.adfs_sb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.adfs_sb_info*) #1

declare dso_local %struct.adfs_discrecord* @adfs_map_discrecord(%struct.adfs_sb_info*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local %struct.inode* @adfs_iget(%struct.super_block*, %struct.object_info*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.adfs_sb_info*) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
