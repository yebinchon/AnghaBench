; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_super.c_affs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_super.c_affs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.super_block = type { i32, i32, i32*, i32, i32*, i32, %struct.TYPE_7__*, %struct.affs_sb_info*, i64, i64, i32, i32*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.affs_sb_info = type { i64, i32, i32, i32, i32, i32, i32, %struct.buffer_head*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"read_super(%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"no options\00", align 1
@AFFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@affs_sops = common dso_local global i32 0, align 4
@SB_NODIRATIME = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@AFFS_EPOCH_DELTA = common dso_local global i64 0, align 8
@U32_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@flush_superblock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Error parsing options\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"initial blocksize=%d, #blocks=%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"setting blocksize to %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Dev %s, trying root=%u, bs=%d, size=%d, reserved=%d\0A\00", align 1
@T_SHORT = common dso_local global i64 0, align 8
@ST_ROOT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"No valid root block on device %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Cannot read boot block\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Dircache FS - mounting %s read only\0A\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@SF_MUFS = common dso_local global i32 0, align 4
@SF_INTL = common dso_local global i32 0, align 4
@SF_OFS = common dso_local global i32 0, align 4
@SB_NOEXEC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"Unknown filesystem on device %s: %08X\0A\00", align 1
@SF_VERBOSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [52 x i8] c"Mounting volume \22%.*s\22: Type=%.3s\\%c, Blocksize=%d\0A\00", align 1
@SB_NODEV = common dso_local global i32 0, align 4
@SB_NOSUID = common dso_local global i32 0, align 4
@affs_intl_dentry_operations = common dso_local global i32 0, align 4
@affs_dentry_operations = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"AFFS: Get root inode failed\0A\00", align 1
@affs_export_ops = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"s_flags=%lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @affs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @affs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.affs_sb_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca [4 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i8*, i8** %6, align 8
  br label %32

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %31 ]
  %34 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* @AFFS_SUPER_MAGIC, align 4
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 12
  store i32 %35, i32* %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 11
  store i32* @affs_sops, i32** %39, align 8
  %40 = load i32, i32* @SB_NODIRATIME, align 4
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @NSEC_PER_SEC, align 4
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sys_tz, i32 0, i32 0), align 4
  %49 = mul nsw i32 %48, 60
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* @AFFS_EPOCH_DELTA, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = getelementptr inbounds %struct.super_block, %struct.super_block* %53, i32 0, i32 8
  store i64 %52, i64* %54, align 8
  %55 = load i64, i64* @U32_MAX, align 8
  %56 = mul nsw i64 86400, %55
  %57 = add nsw i64 %56, 86400
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 8
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = getelementptr inbounds %struct.super_block, %struct.super_block* %62, i32 0, i32 9
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.affs_sb_info* @kzalloc(i32 80, i32 %64)
  store %struct.affs_sb_info* %65, %struct.affs_sb_info** %8, align 8
  %66 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %67 = icmp ne %struct.affs_sb_info* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %32
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %488

71:                                               ; preds = %32
  %72 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %73 = load %struct.super_block*, %struct.super_block** %5, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 7
  store %struct.affs_sb_info* %72, %struct.affs_sb_info** %74, align 8
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %77 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %76, i32 0, i32 16
  store %struct.super_block* %75, %struct.super_block** %77, align 8
  %78 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %79 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %78, i32 0, i32 15
  %80 = call i32 @mutex_init(i32* %79)
  %81 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %82 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %81, i32 0, i32 14
  %83 = call i32 @spin_lock_init(i32* %82)
  %84 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %85 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %84, i32 0, i32 13
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %88 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %87, i32 0, i32 12
  %89 = load i32, i32* @flush_superblock, align 4
  %90 = call i32 @INIT_DELAYED_WORK(i32* %88, i32 %89)
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %93 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %92, i32 0, i32 11
  %94 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %95 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @parse_options(i8* %91, i32* %19, i32* %20, i32* %17, i32* %21, i32* %12, i32* %14, i32* %93, i32 %96, i64* %22)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %71
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %488

103:                                              ; preds = %71
  %104 = load i64, i64* %22, align 8
  %105 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %106 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %17, align 4
  %108 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %109 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %112 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* %20, align 4
  %114 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %115 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %114, i32 0, i32 8
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* %21, align 4
  %117 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %118 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.super_block*, %struct.super_block** %5, align 8
  %120 = getelementptr inbounds %struct.super_block, %struct.super_block* %119, i32 0, i32 6
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @i_size_read(i32 %123)
  %125 = ashr i32 %124, 9
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 512, i32 %126)
  %128 = load %struct.super_block*, %struct.super_block** %5, align 8
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = call i32 @affs_set_blocksize(%struct.super_block* %128, i32 %129)
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = getelementptr inbounds %struct.super_block, %struct.super_block* %131, i32 0, i32 6
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = call i32 @bdev_logical_block_size(%struct.TYPE_7__* %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %103
  %139 = load i32, i32* %14, align 4
  store i32 %139, i32* %18, align 4
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %14, align 4
  %142 = sdiv i32 %141, 512
  %143 = sdiv i32 %140, %142
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %138, %103
  %145 = load i32, i32* %17, align 4
  store i32 %145, i32* %14, align 4
  br label %146

146:                                              ; preds = %239, %144
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp sle i32 %147, %148
  br i1 %149, label %150, label %244

150:                                              ; preds = %146
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %153 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 8
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %157, %158
  %160 = sub nsw i32 %159, 1
  %161 = sdiv i32 %160, 2
  %162 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %163 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %156, %150
  %165 = load i32, i32* %14, align 4
  %166 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %165)
  %167 = load %struct.super_block*, %struct.super_block** %5, align 8
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @affs_set_blocksize(%struct.super_block* %167, i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %172 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 4
  store i32 0, i32* %16, align 4
  br label %173

173:                                              ; preds = %235, %164
  %174 = load i32, i32* %16, align 4
  %175 = icmp slt i32 %174, 2
  br i1 %175, label %176, label %238

176:                                              ; preds = %173
  %177 = load %struct.super_block*, %struct.super_block** %5, align 8
  %178 = getelementptr inbounds %struct.super_block, %struct.super_block* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %181 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %182, %183
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %21, align 4
  %188 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %179, i32 %184, i32 %185, i32 %186, i32 %187)
  %189 = load %struct.super_block*, %struct.super_block** %5, align 8
  %190 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %191 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = add nsw i32 %192, %193
  %195 = call %struct.buffer_head* @affs_bread(%struct.super_block* %189, i32 %194)
  store %struct.buffer_head* %195, %struct.buffer_head** %9, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %197 = icmp ne %struct.buffer_head* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %176
  br label %235

199:                                              ; preds = %176
  %200 = load %struct.super_block*, %struct.super_block** %5, align 8
  %201 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %202 = call i32 @affs_checksum_block(%struct.super_block* %200, %struct.buffer_head* %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %232, label %204

204:                                              ; preds = %199
  %205 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %206 = call %struct.TYPE_10__* @AFFS_ROOT_HEAD(%struct.buffer_head* %205)
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @be32_to_cpu(i32 %208)
  %210 = load i64, i64* @T_SHORT, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %212, label %232

212:                                              ; preds = %204
  %213 = load %struct.super_block*, %struct.super_block** %5, align 8
  %214 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %215 = call %struct.TYPE_9__* @AFFS_ROOT_TAIL(%struct.super_block* %213, %struct.buffer_head* %214)
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @be32_to_cpu(i32 %217)
  %219 = load i64, i64* @ST_ROOT, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %212
  %222 = load i32, i32* %14, align 4
  %223 = sdiv i32 %222, 4
  %224 = sub nsw i32 %223, 56
  %225 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %226 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %225, i32 0, i32 5
  store i32 %224, i32* %226, align 8
  %227 = load i32, i32* %16, align 4
  %228 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %229 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %255

232:                                              ; preds = %212, %204, %199
  %233 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %234 = call i32 @affs_brelse(%struct.buffer_head* %233)
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  br label %235

235:                                              ; preds = %232, %198
  %236 = load i32, i32* %16, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  br label %173

238:                                              ; preds = %173
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %14, align 4
  %241 = shl i32 %240, 1
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %13, align 4
  %243 = ashr i32 %242, 1
  store i32 %243, i32* %13, align 4
  br label %146

244:                                              ; preds = %146
  %245 = load i32, i32* %7, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %244
  %248 = load %struct.super_block*, %struct.super_block** %5, align 8
  %249 = getelementptr inbounds %struct.super_block, %struct.super_block* %248, i32 0, i32 5
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %247, %244
  %253 = load i32, i32* @EINVAL, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %4, align 4
  br label %488

255:                                              ; preds = %221
  %256 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %257 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %258 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %257, i32 0, i32 7
  store %struct.buffer_head* %256, %struct.buffer_head** %258, align 8
  %259 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %260 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  store i32 %261, i32* %12, align 4
  %262 = load %struct.super_block*, %struct.super_block** %5, align 8
  %263 = call %struct.buffer_head* @sb_bread(%struct.super_block* %262, i32 0)
  store %struct.buffer_head* %263, %struct.buffer_head** %10, align 8
  %264 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %265 = icmp ne %struct.buffer_head* %264, null
  br i1 %265, label %270, label %266

266:                                              ; preds = %255
  %267 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %268 = load i32, i32* @EINVAL, align 4
  %269 = sub nsw i32 0, %268
  store i32 %269, i32* %4, align 4
  br label %488

270:                                              ; preds = %255
  %271 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %272 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %273 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @memcpy(i32* %271, i32 %274, i32 4)
  %276 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %277 = call i32 @brelse(%struct.buffer_head* %276)
  %278 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %279 = load i32, i32* %278, align 16
  %280 = call i64 @be32_to_cpu(i32 %279)
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %15, align 4
  %282 = load i32, i32* %15, align 4
  %283 = icmp eq i32 %282, 140
  br i1 %283, label %293, label %284

284:                                              ; preds = %270
  %285 = load i32, i32* %15, align 4
  %286 = icmp eq i32 %285, 134
  br i1 %286, label %293, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* %15, align 4
  %289 = icmp eq i32 %288, 139
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load i32, i32* %15, align 4
  %292 = icmp eq i32 %291, 133
  br i1 %292, label %293, label %307

293:                                              ; preds = %290, %287, %284, %270
  %294 = load %struct.super_block*, %struct.super_block** %5, align 8
  %295 = call i32 @sb_rdonly(%struct.super_block* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %307, label %297

297:                                              ; preds = %293
  %298 = load %struct.super_block*, %struct.super_block** %5, align 8
  %299 = getelementptr inbounds %struct.super_block, %struct.super_block* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 8
  %301 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %300)
  %302 = load i32, i32* @SB_RDONLY, align 4
  %303 = load %struct.super_block*, %struct.super_block** %5, align 8
  %304 = getelementptr inbounds %struct.super_block, %struct.super_block* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = or i32 %305, %302
  store i32 %306, i32* %304, align 8
  br label %307

307:                                              ; preds = %297, %293, %290
  %308 = load i32, i32* %15, align 4
  switch i32 %308, label %367 [
    i32 131, label %309
    i32 130, label %309
    i32 134, label %309
    i32 137, label %315
    i32 140, label %315
    i32 132, label %321
    i32 138, label %327
    i32 128, label %328
    i32 135, label %334
    i32 133, label %345
    i32 129, label %345
    i32 139, label %351
    i32 136, label %351
  ]

309:                                              ; preds = %307, %307, %307
  %310 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %311 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = load i32, i32* @SF_MUFS, align 4
  %314 = call i32 @affs_set_opt(i64 %312, i32 %313)
  br label %315

315:                                              ; preds = %307, %307, %309
  %316 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %317 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i32, i32* @SF_INTL, align 4
  %320 = call i32 @affs_set_opt(i64 %318, i32 %319)
  br label %375

321:                                              ; preds = %307
  %322 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %323 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* @SF_MUFS, align 4
  %326 = call i32 @affs_set_opt(i64 %324, i32 %325)
  br label %375

327:                                              ; preds = %307
  br label %375

328:                                              ; preds = %307
  %329 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %330 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* @SF_MUFS, align 4
  %333 = call i32 @affs_set_opt(i64 %331, i32 %332)
  br label %334

334:                                              ; preds = %307, %328
  %335 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %336 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i32, i32* @SF_OFS, align 4
  %339 = call i32 @affs_set_opt(i64 %337, i32 %338)
  %340 = load i32, i32* @SB_NOEXEC, align 4
  %341 = load %struct.super_block*, %struct.super_block** %5, align 8
  %342 = getelementptr inbounds %struct.super_block, %struct.super_block* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = or i32 %343, %340
  store i32 %344, i32* %342, align 8
  br label %375

345:                                              ; preds = %307, %307
  %346 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %347 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i32, i32* @SF_MUFS, align 4
  %350 = call i32 @affs_set_opt(i64 %348, i32 %349)
  br label %351

351:                                              ; preds = %307, %307, %345
  %352 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %353 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* @SF_INTL, align 4
  %356 = call i32 @affs_set_opt(i64 %354, i32 %355)
  %357 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %358 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i32, i32* @SF_OFS, align 4
  %361 = call i32 @affs_set_opt(i64 %359, i32 %360)
  %362 = load i32, i32* @SB_NOEXEC, align 4
  %363 = load %struct.super_block*, %struct.super_block** %5, align 8
  %364 = getelementptr inbounds %struct.super_block, %struct.super_block* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = or i32 %365, %362
  store i32 %366, i32* %364, align 8
  br label %375

367:                                              ; preds = %307
  %368 = load %struct.super_block*, %struct.super_block** %5, align 8
  %369 = getelementptr inbounds %struct.super_block, %struct.super_block* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* %15, align 4
  %372 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %370, i32 %371)
  %373 = load i32, i32* @EINVAL, align 4
  %374 = sub nsw i32 0, %373
  store i32 %374, i32* %4, align 4
  br label %488

375:                                              ; preds = %351, %334, %327, %321, %315
  %376 = load i64, i64* %22, align 8
  %377 = load i32, i32* @SF_VERBOSE, align 4
  %378 = call i64 @affs_test_opt(i64 %376, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %407

380:                                              ; preds = %375
  %381 = load %struct.super_block*, %struct.super_block** %5, align 8
  %382 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %383 = call %struct.TYPE_9__* @AFFS_ROOT_TAIL(%struct.super_block* %381, %struct.buffer_head* %382)
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  %387 = load i32, i32* %386, align 4
  store i32 %387, i32* %26, align 4
  %388 = load i32, i32* %26, align 4
  %389 = icmp sgt i32 %388, 31
  br i1 %389, label %390, label %391

390:                                              ; preds = %380
  br label %393

391:                                              ; preds = %380
  %392 = load i32, i32* %26, align 4
  br label %393

393:                                              ; preds = %391, %390
  %394 = phi i32 [ 31, %390 ], [ %392, %391 ]
  %395 = load %struct.super_block*, %struct.super_block** %5, align 8
  %396 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %397 = call %struct.TYPE_9__* @AFFS_ROOT_TAIL(%struct.super_block* %395, %struct.buffer_head* %396)
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 1
  %401 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 0
  %402 = getelementptr inbounds [4 x i32], [4 x i32]* %24, i64 0, i64 3
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, 48
  %405 = load i32, i32* %14, align 4
  %406 = call i32 (i8*, i32, ...) @pr_notice(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i32 %394, i32* %400, i32* %401, i32 %404, i32 %405)
  br label %407

407:                                              ; preds = %393, %375
  %408 = load i32, i32* @SB_NODEV, align 4
  %409 = load i32, i32* @SB_NOSUID, align 4
  %410 = or i32 %408, %409
  %411 = load %struct.super_block*, %struct.super_block** %5, align 8
  %412 = getelementptr inbounds %struct.super_block, %struct.super_block* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 8
  %415 = load %struct.super_block*, %struct.super_block** %5, align 8
  %416 = getelementptr inbounds %struct.super_block, %struct.super_block* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %419 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %418, i32 0, i32 6
  store i32 %417, i32* %419, align 4
  %420 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %421 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %420, i32 0, i32 0
  %422 = load i64, i64* %421, align 8
  %423 = load i32, i32* @SF_OFS, align 4
  %424 = call i64 @affs_test_opt(i64 %422, i32 %423)
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %431

426:                                              ; preds = %407
  %427 = load %struct.affs_sb_info*, %struct.affs_sb_info** %8, align 8
  %428 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %427, i32 0, i32 6
  %429 = load i32, i32* %428, align 4
  %430 = sub nsw i32 %429, 24
  store i32 %430, i32* %428, align 4
  br label %431

431:                                              ; preds = %426, %407
  %432 = load %struct.super_block*, %struct.super_block** %5, align 8
  %433 = getelementptr inbounds %struct.super_block, %struct.super_block* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  store i32 %434, i32* %23, align 4
  %435 = load %struct.super_block*, %struct.super_block** %5, align 8
  %436 = call i32 @affs_init_bitmap(%struct.super_block* %435, i32* %23)
  store i32 %436, i32* %25, align 4
  %437 = load i32, i32* %25, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %431
  %440 = load i32, i32* %25, align 4
  store i32 %440, i32* %4, align 4
  br label %488

441:                                              ; preds = %431
  %442 = load i32, i32* %23, align 4
  %443 = load %struct.super_block*, %struct.super_block** %5, align 8
  %444 = getelementptr inbounds %struct.super_block, %struct.super_block* %443, i32 0, i32 0
  store i32 %442, i32* %444, align 8
  %445 = load %struct.super_block*, %struct.super_block** %5, align 8
  %446 = load i32, i32* %12, align 4
  %447 = call %struct.inode* @affs_iget(%struct.super_block* %445, i32 %446)
  store %struct.inode* %447, %struct.inode** %11, align 8
  %448 = load %struct.inode*, %struct.inode** %11, align 8
  %449 = call i64 @IS_ERR(%struct.inode* %448)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %441
  %452 = load %struct.inode*, %struct.inode** %11, align 8
  %453 = call i32 @PTR_ERR(%struct.inode* %452)
  store i32 %453, i32* %4, align 4
  br label %488

454:                                              ; preds = %441
  %455 = load %struct.super_block*, %struct.super_block** %5, align 8
  %456 = call %struct.TYPE_8__* @AFFS_SB(%struct.super_block* %455)
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = load i32, i32* @SF_INTL, align 4
  %460 = call i64 @affs_test_opt(i64 %458, i32 %459)
  %461 = icmp ne i64 %460, 0
  br i1 %461, label %462, label %465

462:                                              ; preds = %454
  %463 = load %struct.super_block*, %struct.super_block** %5, align 8
  %464 = getelementptr inbounds %struct.super_block, %struct.super_block* %463, i32 0, i32 4
  store i32* @affs_intl_dentry_operations, i32** %464, align 8
  br label %468

465:                                              ; preds = %454
  %466 = load %struct.super_block*, %struct.super_block** %5, align 8
  %467 = getelementptr inbounds %struct.super_block, %struct.super_block* %466, i32 0, i32 4
  store i32* @affs_dentry_operations, i32** %467, align 8
  br label %468

468:                                              ; preds = %465, %462
  %469 = load %struct.inode*, %struct.inode** %11, align 8
  %470 = call i32 @d_make_root(%struct.inode* %469)
  %471 = load %struct.super_block*, %struct.super_block** %5, align 8
  %472 = getelementptr inbounds %struct.super_block, %struct.super_block* %471, i32 0, i32 3
  store i32 %470, i32* %472, align 8
  %473 = load %struct.super_block*, %struct.super_block** %5, align 8
  %474 = getelementptr inbounds %struct.super_block, %struct.super_block* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 8
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %468
  %478 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %479 = load i32, i32* @ENOMEM, align 4
  %480 = sub nsw i32 0, %479
  store i32 %480, i32* %4, align 4
  br label %488

481:                                              ; preds = %468
  %482 = load %struct.super_block*, %struct.super_block** %5, align 8
  %483 = getelementptr inbounds %struct.super_block, %struct.super_block* %482, i32 0, i32 2
  store i32* @affs_export_ops, i32** %483, align 8
  %484 = load %struct.super_block*, %struct.super_block** %5, align 8
  %485 = getelementptr inbounds %struct.super_block, %struct.super_block* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %486)
  store i32 0, i32* %4, align 4
  br label %488

488:                                              ; preds = %481, %477, %451, %439, %367, %266, %252, %99, %68
  %489 = load i32, i32* %4, align 4
  ret i32 %489
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.affs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @parse_options(i8*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i64*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @affs_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.TYPE_7__*) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @affs_checksum_block(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_10__* @AFFS_ROOT_HEAD(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_9__* @AFFS_ROOT_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @pr_notice(i8*, i32, ...) #1

declare dso_local i32 @affs_set_opt(i64, i32) #1

declare dso_local i64 @affs_test_opt(i64, i32) #1

declare dso_local i32 @affs_init_bitmap(%struct.super_block*, i32*) #1

declare dso_local %struct.inode* @affs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_8__* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
