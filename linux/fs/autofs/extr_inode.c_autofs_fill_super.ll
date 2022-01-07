; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, %struct.autofs_sb_info*, %struct.dentry*, i32*, i32*, i32 }
%struct.autofs_sb_info = type { i32, i64, i64, i64, i32*, i32, %struct.file*, i32, i64, i32, i32, i32, i32*, i32, i32, i32, %struct.super_block*, i64, i32 }
%struct.file = type { i32 }
%struct.dentry = type { %struct.autofs_info* }
%struct.autofs_info = type { i32 }
%struct.inode = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"starting up, sbi = %p\0A\00", align 1
@AUTOFS_SBI_MAGIC = common dso_local global i32 0, align 4
@AUTOFS_SBI_CATATONIC = common dso_local global i32 0, align 4
@AUTOFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@autofs_sops = common dso_local global i32 0, align 4
@autofs_dentry_operations = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"called with bogus options\0A\00", align 1
@AUTOFS_MIN_PROTO_VERSION = common dso_local global i64 0, align 8
@AUTOFS_MAX_PROTO_VERSION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [70 x i8] c"kernel does not match daemon version daemon (%d, %d) kernel (%d, %d)\0A\00", align 1
@AUTOFS_PROTO_SUBVERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"could not find process group %d\0A\00", align 1
@current = common dso_local global i32 0, align 4
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@autofs_root_operations = common dso_local global i32 0, align 4
@autofs_dir_inode_operations = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"pipe fd = %d, pgrp = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"could not open pipe file descriptor\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"pipe file descriptor does not contain proper ops\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.autofs_sb_info*, align 8
  %12 = alloca %struct.autofs_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.autofs_sb_info* @kzalloc(i32 136, i32 %18)
  store %struct.autofs_sb_info* %19, %struct.autofs_sb_info** %11, align 8
  %20 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %21 = icmp ne %struct.autofs_sb_info* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %255

25:                                               ; preds = %3
  %26 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.autofs_sb_info* %26)
  %28 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 3
  store %struct.autofs_sb_info* %28, %struct.autofs_sb_info** %30, align 8
  %31 = load i32, i32* @AUTOFS_SBI_MAGIC, align 4
  %32 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %33 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %32, i32 0, i32 18
  store i32 %31, i32* %33, align 8
  %34 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %35 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %34, i32 0, i32 0
  store i32 -1, i32* %35, align 8
  %36 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %37 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %36, i32 0, i32 6
  store %struct.file* null, %struct.file** %37, align 8
  %38 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %39 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %38, i32 0, i32 17
  store i64 0, i64* %39, align 8
  %40 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %41 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %44 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %43, i32 0, i32 16
  store %struct.super_block* %42, %struct.super_block** %44, align 8
  %45 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %46 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %48 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %47, i32 0, i32 8
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %50 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %51 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %53 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %52, i32 0, i32 7
  %54 = call i32 @set_autofs_type_indirect(i32* %53)
  %55 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %56 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %58 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %60 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %59, i32 0, i32 15
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %63 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %62, i32 0, i32 14
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %66 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %65, i32 0, i32 13
  %67 = call i32 @spin_lock_init(i32* %66)
  %68 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %69 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %68, i32 0, i32 12
  store i32* null, i32** %69, align 8
  %70 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %71 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %70, i32 0, i32 11
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %74 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %73, i32 0, i32 10
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %77 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %76, i32 0, i32 9
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.super_block*, %struct.super_block** %5, align 8
  %80 = getelementptr inbounds %struct.super_block, %struct.super_block* %79, i32 0, i32 0
  store i32 1024, i32* %80, align 8
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 1
  store i32 10, i32* %82, align 4
  %83 = load i32, i32* @AUTOFS_SUPER_MAGIC, align 4
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 7
  store i32 %83, i32* %85, align 8
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 6
  store i32* @autofs_sops, i32** %87, align 8
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 5
  store i32* @autofs_dentry_operations, i32** %89, align 8
  %90 = load %struct.super_block*, %struct.super_block** %5, align 8
  %91 = getelementptr inbounds %struct.super_block, %struct.super_block* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %93 = call %struct.autofs_info* @autofs_new_ino(%struct.autofs_sb_info* %92)
  store %struct.autofs_info* %93, %struct.autofs_info** %12, align 8
  %94 = load %struct.autofs_info*, %struct.autofs_info** %12, align 8
  %95 = icmp ne %struct.autofs_info* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %25
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %15, align 4
  br label %249

99:                                               ; preds = %25
  %100 = load %struct.super_block*, %struct.super_block** %5, align 8
  %101 = load i32, i32* @S_IFDIR, align 4
  %102 = or i32 %101, 493
  %103 = call %struct.inode* @autofs_get_inode(%struct.super_block* %100, i32 %102)
  store %struct.inode* %103, %struct.inode** %8, align 8
  %104 = load %struct.inode*, %struct.inode** %8, align 8
  %105 = call %struct.dentry* @d_make_root(%struct.inode* %104)
  store %struct.dentry* %105, %struct.dentry** %9, align 8
  %106 = load %struct.dentry*, %struct.dentry** %9, align 8
  %107 = icmp ne %struct.dentry* %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %99
  %109 = load i32, i32* @ENOMEM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %246

111:                                              ; preds = %99
  store %struct.file* null, %struct.file** %10, align 8
  %112 = load %struct.autofs_info*, %struct.autofs_info** %12, align 8
  %113 = load %struct.dentry*, %struct.dentry** %9, align 8
  %114 = getelementptr inbounds %struct.dentry, %struct.dentry* %113, i32 0, i32 0
  store %struct.autofs_info* %112, %struct.autofs_info** %114, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load %struct.inode*, %struct.inode** %8, align 8
  %117 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %118 = call i64 @parse_options(i8* %115, %struct.inode* %116, i32* %13, i32* %14, %struct.autofs_sb_info* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %243

122:                                              ; preds = %111
  %123 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %124 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AUTOFS_MIN_PROTO_VERSION, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %130 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %133 = icmp sgt i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128, %122
  %135 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %136 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %139 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AUTOFS_MIN_PROTO_VERSION, align 8
  %142 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i64 %137, i64 %140, i64 %141, i64 %142)
  br label %243

144:                                              ; preds = %128
  %145 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %146 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i64, i64* @AUTOFS_MAX_PROTO_VERSION, align 8
  %152 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %153 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %160

154:                                              ; preds = %144
  %155 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %156 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %159 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %158, i32 0, i32 1
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %150
  %161 = load i64, i64* @AUTOFS_PROTO_SUBVERSION, align 8
  %162 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %163 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %162, i32 0, i32 8
  store i64 %161, i64* %163, align 8
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %160
  %167 = load i32, i32* %13, align 4
  %168 = call i32* @find_get_pid(i32 %167)
  %169 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %170 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %169, i32 0, i32 4
  store i32* %168, i32** %170, align 8
  %171 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %172 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %171, i32 0, i32 4
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %166
  %176 = load i32, i32* %13, align 4
  %177 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  br label %243

178:                                              ; preds = %166
  br label %185

179:                                              ; preds = %160
  %180 = load i32, i32* @current, align 4
  %181 = load i32, i32* @PIDTYPE_PGID, align 4
  %182 = call i32* @get_task_pid(i32 %180, i32 %181)
  %183 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %184 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %183, i32 0, i32 4
  store i32* %182, i32** %184, align 8
  br label %185

185:                                              ; preds = %179, %178
  %186 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %187 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 8
  %189 = call i64 @autofs_type_trigger(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load %struct.dentry*, %struct.dentry** %9, align 8
  %193 = call i32 @__managed_dentry_set_managed(%struct.dentry* %192)
  br label %194

194:                                              ; preds = %191, %185
  %195 = load %struct.inode*, %struct.inode** %8, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 1
  store i32* @autofs_root_operations, i32** %196, align 8
  %197 = load %struct.inode*, %struct.inode** %8, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  store i32* @autofs_dir_inode_operations, i32** %198, align 8
  %199 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %200 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %203 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %202, i32 0, i32 4
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @pid_nr(i32* %204)
  %206 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %201, i32 %205)
  %207 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %208 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call %struct.file* @fget(i32 %209)
  store %struct.file* %210, %struct.file** %10, align 8
  %211 = load %struct.file*, %struct.file** %10, align 8
  %212 = icmp ne %struct.file* %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %194
  %214 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %238

215:                                              ; preds = %194
  %216 = load %struct.file*, %struct.file** %10, align 8
  %217 = call i32 @autofs_prepare_pipe(%struct.file* %216)
  store i32 %217, i32* %15, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp slt i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  br label %234

221:                                              ; preds = %215
  %222 = load %struct.file*, %struct.file** %10, align 8
  %223 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %224 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %223, i32 0, i32 6
  store %struct.file* %222, %struct.file** %224, align 8
  %225 = load i32, i32* @AUTOFS_SBI_CATATONIC, align 4
  %226 = xor i32 %225, -1
  %227 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %228 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 8
  %230 = and i32 %229, %226
  store i32 %230, i32* %228, align 8
  %231 = load %struct.dentry*, %struct.dentry** %9, align 8
  %232 = load %struct.super_block*, %struct.super_block** %5, align 8
  %233 = getelementptr inbounds %struct.super_block, %struct.super_block* %232, i32 0, i32 4
  store %struct.dentry* %231, %struct.dentry** %233, align 8
  store i32 0, i32* %4, align 4
  br label %255

234:                                              ; preds = %220
  %235 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %236 = load %struct.file*, %struct.file** %10, align 8
  %237 = call i32 @fput(%struct.file* %236)
  br label %238

238:                                              ; preds = %234, %213
  %239 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %240 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @put_pid(i32* %241)
  br label %243

243:                                              ; preds = %238, %175, %134, %120
  %244 = load %struct.dentry*, %struct.dentry** %9, align 8
  %245 = call i32 @dput(%struct.dentry* %244)
  br label %249

246:                                              ; preds = %108
  %247 = load %struct.autofs_info*, %struct.autofs_info** %12, align 8
  %248 = call i32 @autofs_free_ino(%struct.autofs_info* %247)
  br label %249

249:                                              ; preds = %246, %243, %96
  %250 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %11, align 8
  %251 = call i32 @kfree(%struct.autofs_sb_info* %250)
  %252 = load %struct.super_block*, %struct.super_block** %5, align 8
  %253 = getelementptr inbounds %struct.super_block, %struct.super_block* %252, i32 0, i32 3
  store %struct.autofs_sb_info* null, %struct.autofs_sb_info** %253, align 8
  %254 = load i32, i32* %15, align 4
  store i32 %254, i32* %4, align 4
  br label %255

255:                                              ; preds = %249, %221, %22
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local %struct.autofs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @set_autofs_type_indirect(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.autofs_info* @autofs_new_ino(%struct.autofs_sb_info*) #1

declare dso_local %struct.inode* @autofs_get_inode(%struct.super_block*, i32) #1

declare dso_local %struct.dentry* @d_make_root(%struct.inode*) #1

declare dso_local i64 @parse_options(i8*, %struct.inode*, i32*, i32*, %struct.autofs_sb_info*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32* @find_get_pid(i32) #1

declare dso_local i32* @get_task_pid(i32, i32) #1

declare dso_local i64 @autofs_type_trigger(i32) #1

declare dso_local i32 @__managed_dentry_set_managed(%struct.dentry*) #1

declare dso_local i32 @pid_nr(i32*) #1

declare dso_local %struct.file* @fget(i32) #1

declare dso_local i32 @autofs_prepare_pipe(%struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @put_pid(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @autofs_free_ino(%struct.autofs_info*) #1

declare dso_local i32 @kfree(%struct.autofs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
