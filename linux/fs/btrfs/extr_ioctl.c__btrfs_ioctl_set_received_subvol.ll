; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c__btrfs_ioctl_set_received_subvol.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ioctl.c__btrfs_ioctl_set_received_subvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.btrfs_ioctl_received_subvol_args = type { i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.btrfs_root = type { %struct.TYPE_8__, %struct.btrfs_root_item }
%struct.TYPE_8__ = type { i32 }
%struct.btrfs_root_item = type { i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.timespec64 = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.btrfs_root* }

@EPERM = common dso_local global i64 0, align 8
@BTRFS_FIRST_FREE_OBJECTID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@BTRFS_UUID_KEY_RECEIVED_SUBVOL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.btrfs_ioctl_received_subvol_args*)* @_btrfs_ioctl_set_received_subvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_btrfs_ioctl_set_received_subvol(%struct.file* %0, %struct.btrfs_ioctl_received_subvol_args* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.btrfs_ioctl_received_subvol_args*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_root_item*, align 8
  %10 = alloca %struct.btrfs_trans_handle*, align 8
  %11 = alloca %struct.timespec64, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.btrfs_ioctl_received_subvol_args* %1, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = call %struct.inode* @file_inode(%struct.file* %14)
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %18)
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load %struct.btrfs_root*, %struct.btrfs_root** %22, align 8
  store %struct.btrfs_root* %23, %struct.btrfs_root** %8, align 8
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 1
  store %struct.btrfs_root_item* %25, %struct.btrfs_root_item** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i64 @current_time(%struct.inode* %26)
  %28 = bitcast %struct.timespec64* %11 to i64*
  store i64 %27, i64* %28, align 4
  store i32 0, i32* %12, align 4
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @inode_owner_or_capable(%struct.inode* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i64, i64* @EPERM, align 8
  %34 = sub nsw i64 0, %33
  store i64 %34, i64* %3, align 8
  br label %234

35:                                               ; preds = %2
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = call i32 @mnt_want_write_file(%struct.file* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %3, align 8
  br label %234

43:                                               ; preds = %35
  %44 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %45 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %44, i32 0, i32 0
  %46 = call i32 @down_write(i32* %45)
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call %struct.TYPE_9__* @BTRFS_I(%struct.inode* %47)
  %49 = call i64 @btrfs_ino(%struct.TYPE_9__* %48)
  %50 = load i64, i64* @BTRFS_FIRST_FREE_OBJECTID, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %12, align 4
  br label %226

55:                                               ; preds = %43
  %56 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %57 = call i64 @btrfs_root_readonly(%struct.btrfs_root* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EROFS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %226

62:                                               ; preds = %55
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %64 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %63, i32 3)
  store %struct.btrfs_trans_handle* %64, %struct.btrfs_trans_handle** %10, align 8
  %65 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %66 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %70 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %69)
  store i32 %70, i32* %12, align 4
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %10, align 8
  br label %226

71:                                               ; preds = %62
  %72 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %73 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %76 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %80 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %85 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %88 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %91 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %94 = call i32 @memcmp(i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %128

97:                                               ; preds = %71
  %98 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %99 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @btrfs_is_empty_uuid(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %128, label %103

103:                                              ; preds = %97
  %104 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %105 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %106 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @BTRFS_UUID_KEY_RECEIVED_SUBVOL, align 4
  %109 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %110 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @btrfs_uuid_tree_remove(%struct.btrfs_trans_handle* %104, i32 %107, i32 %108, i32 %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %103
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @ENOENT, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %122, i32 %123)
  %125 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %126 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %125)
  br label %226

127:                                              ; preds = %116, %103
  br label %128

128:                                              ; preds = %127, %97, %71
  %129 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %130 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %133 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %136 = call i32 @memcpy(i32 %131, i32 %134, i32 %135)
  %137 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %138 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %139 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @btrfs_set_root_stransid(%struct.btrfs_root_item* %137, i32 %140)
  %142 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %143 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %144 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @btrfs_set_root_rtransid(%struct.btrfs_root_item* %142, i32 %145)
  %147 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %148 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %147, i32 0, i32 1
  %149 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %150 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @btrfs_set_stack_timespec_sec(i32* %148, i32 %152)
  %154 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %155 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %154, i32 0, i32 1
  %156 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %157 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @btrfs_set_stack_timespec_nsec(i32* %155, i32 %159)
  %161 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %162 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %161, i32 0, i32 0
  %163 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %164 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @btrfs_set_stack_timespec_sec(i32* %162, i32 %166)
  %168 = load %struct.btrfs_root_item*, %struct.btrfs_root_item** %9, align 8
  %169 = getelementptr inbounds %struct.btrfs_root_item, %struct.btrfs_root_item* %168, i32 0, i32 0
  %170 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %171 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @btrfs_set_stack_timespec_nsec(i32* %169, i32 %173)
  %175 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %176 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %177 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %180 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %179, i32 0, i32 0
  %181 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %182 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %181, i32 0, i32 1
  %183 = call i32 @btrfs_update_root(%struct.btrfs_trans_handle* %175, i32 %178, %struct.TYPE_8__* %180, %struct.btrfs_root_item* %182)
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %12, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %128
  %187 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %188 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %187)
  br label %226

189:                                              ; preds = %128
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %223

192:                                              ; preds = %189
  %193 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %194 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @btrfs_is_empty_uuid(i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %223, label %198

198:                                              ; preds = %192
  %199 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %200 = load %struct.btrfs_ioctl_received_subvol_args*, %struct.btrfs_ioctl_received_subvol_args** %5, align 8
  %201 = getelementptr inbounds %struct.btrfs_ioctl_received_subvol_args, %struct.btrfs_ioctl_received_subvol_args* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @BTRFS_UUID_KEY_RECEIVED_SUBVOL, align 4
  %204 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %205 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @btrfs_uuid_tree_add(%struct.btrfs_trans_handle* %199, i32 %202, i32 %203, i32 %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %198
  %212 = load i32, i32* %12, align 4
  %213 = load i32, i32* @EEXIST, align 4
  %214 = sub nsw i32 0, %213
  %215 = icmp ne i32 %212, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %218 = load i32, i32* %12, align 4
  %219 = call i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle* %217, i32 %218)
  %220 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %221 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %220)
  br label %226

222:                                              ; preds = %211, %198
  br label %223

223:                                              ; preds = %222, %192, %189
  %224 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %10, align 8
  %225 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %224)
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %223, %216, %186, %121, %68, %59, %52
  %227 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %228 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %227, i32 0, i32 0
  %229 = call i32 @up_write(i32* %228)
  %230 = load %struct.file*, %struct.file** %4, align 8
  %231 = call i32 @mnt_drop_write_file(%struct.file* %230)
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  store i64 %233, i64* %3, align 8
  br label %234

234:                                              ; preds = %226, %40, %32
  %235 = load i64, i64* %3, align 8
  ret i64 %235
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_9__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i64 @btrfs_ino(%struct.TYPE_9__*) #1

declare dso_local i64 @btrfs_root_readonly(%struct.btrfs_root*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @btrfs_is_empty_uuid(i32) #1

declare dso_local i32 @btrfs_uuid_tree_remove(%struct.btrfs_trans_handle*, i32, i32, i32) #1

declare dso_local i32 @btrfs_abort_transaction(%struct.btrfs_trans_handle*, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btrfs_set_root_stransid(%struct.btrfs_root_item*, i32) #1

declare dso_local i32 @btrfs_set_root_rtransid(%struct.btrfs_root_item*, i32) #1

declare dso_local i32 @btrfs_set_stack_timespec_sec(i32*, i32) #1

declare dso_local i32 @btrfs_set_stack_timespec_nsec(i32*, i32) #1

declare dso_local i32 @btrfs_update_root(%struct.btrfs_trans_handle*, i32, %struct.TYPE_8__*, %struct.btrfs_root_item*) #1

declare dso_local i32 @btrfs_uuid_tree_add(%struct.btrfs_trans_handle*, i32, i32, i32) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
