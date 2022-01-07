; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_finishing.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_finishing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__*, i32, %struct.btrfs_root*, %struct.btrfs_dev_replace }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_dev_replace = type { i64, i32, i32, i32, i32, %struct.btrfs_device*, %struct.btrfs_device* }
%struct.btrfs_device = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.btrfs_trans_handle = type { i32 }

@BTRFS_UUID_SIZE = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED = common dso_local global i64 0, align 8
@U64_MAX = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED = common dso_local global i64 0, align 8
@BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED = common dso_local global i64 0, align 8
@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"btrfs_scrub_dev(%s, %llu, %s) failed %d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"dev_replace from %s (devid %llu) to %s finished\00", align 1
@BTRFS_DEV_STATE_REPLACE_TGT = common dso_local global i32 0, align 4
@BTRFS_DEV_REPLACE_DEVID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @btrfs_dev_replace_finishing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_dev_replace_finishing(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_dev_replace*, align 8
  %7 = alloca %struct.btrfs_device*, align 8
  %8 = alloca %struct.btrfs_device*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.btrfs_trans_handle*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 3
  store %struct.btrfs_dev_replace* %16, %struct.btrfs_dev_replace** %6, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %18 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %17, i32 0, i32 2
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %18, align 8
  store %struct.btrfs_root* %19, %struct.btrfs_root** %9, align 8
  %20 = load i32, i32* @BTRFS_UUID_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %25 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %28 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %27, i32 0, i32 3
  %29 = call i32 @down_read(i32* %28)
  %30 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %31 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BTRFS_IOCTL_DEV_REPLACE_STATE_STARTED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %2
  %36 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %37 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %36, i32 0, i32 3
  %38 = call i32 @up_read(i32* %37)
  %39 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %39, i32 0, i32 2
  %41 = call i32 @mutex_unlock(i32* %40)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %296

42:                                               ; preds = %2
  %43 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %44 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %43, i32 0, i32 6
  %45 = load %struct.btrfs_device*, %struct.btrfs_device** %44, align 8
  store %struct.btrfs_device* %45, %struct.btrfs_device** %7, align 8
  %46 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %47 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %46, i32 0, i32 5
  %48 = load %struct.btrfs_device*, %struct.btrfs_device** %47, align 8
  store %struct.btrfs_device* %48, %struct.btrfs_device** %8, align 8
  %49 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %50 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %49, i32 0, i32 3
  %51 = call i32 @up_read(i32* %50)
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %53 = call i32 @btrfs_start_delalloc_roots(%struct.btrfs_fs_info* %52, i32 -1)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %58 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %296

61:                                               ; preds = %42
  %62 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %63 = load i32, i32* @U64_MAX, align 4
  %64 = call i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info* %62, i32 %63, i32 0, i32 -1)
  br label %65

65:                                               ; preds = %105, %61
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %68 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %67, i32 0)
  store %struct.btrfs_trans_handle* %68, %struct.btrfs_trans_handle** %12, align 8
  %69 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %70 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %74 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %77 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %76)
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %296

78:                                               ; preds = %66
  %79 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %80 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @WARN_ON(i32 %81)
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %84 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @mutex_lock(i32* %86)
  %88 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %89 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %88, i32 0, i32 1
  %90 = call i32 @mutex_lock(i32* %89)
  %91 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %92 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %91, i32 0, i32 10
  %93 = call i32 @list_empty(i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %78
  %96 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %97 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %102 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  br label %105

104:                                              ; preds = %78
  br label %106

105:                                              ; preds = %95
  br label %65

106:                                              ; preds = %104
  %107 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %108 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %107, i32 0, i32 3
  %109 = call i32 @down_write(i32* %108)
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i64, i64* @BTRFS_IOCTL_DEV_REPLACE_STATE_CANCELED, align 8
  br label %116

114:                                              ; preds = %106
  %115 = load i64, i64* @BTRFS_IOCTL_DEV_REPLACE_STATE_FINISHED, align 8
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i64 [ %113, %112 ], [ %115, %114 ]
  %118 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %119 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %118, i32 0, i32 0
  store i64 %117, i64* %119, align 8
  %120 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %121 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %120, i32 0, i32 6
  store %struct.btrfs_device* null, %struct.btrfs_device** %121, align 8
  %122 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %123 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %122, i32 0, i32 5
  store %struct.btrfs_device* null, %struct.btrfs_device** %123, align 8
  %124 = call i32 (...) @ktime_get_real_seconds()
  %125 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %126 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 4
  %127 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %128 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %127, i32 0, i32 1
  store i32 1, i32* %128, align 8
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %116
  %132 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %133 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %134 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %135 = call i32 @btrfs_dev_replace_update_device_in_mapping_tree(%struct.btrfs_fs_info* %132, %struct.btrfs_device* %133, %struct.btrfs_device* %134)
  br label %180

136:                                              ; preds = %116
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @ECANCELED, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %143 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %144 = call i32 @btrfs_dev_name(%struct.btrfs_device* %143)
  %145 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %146 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %149 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @rcu_str_deref(i32 %150)
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @btrfs_err_in_rcu(%struct.btrfs_fs_info* %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %147, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %141, %136
  %155 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %156 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %155, i32 0, i32 3
  %157 = call i32 @up_write(i32* %156)
  %158 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %159 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %162 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %161, i32 0, i32 0
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %167 = call i32 @btrfs_rm_dev_replace_blocked(%struct.btrfs_fs_info* %166)
  %168 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %169 = icmp ne %struct.btrfs_device* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %154
  %171 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %172 = call i32 @btrfs_destroy_dev_replace_tgtdev(%struct.btrfs_device* %171)
  br label %173

173:                                              ; preds = %170, %154
  %174 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %175 = call i32 @btrfs_rm_dev_replace_unblocked(%struct.btrfs_fs_info* %174)
  %176 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %177 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %176, i32 0, i32 2
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %296

180:                                              ; preds = %131
  %181 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %182 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %183 = call i32 @btrfs_dev_name(%struct.btrfs_device* %182)
  %184 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %185 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %188 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @rcu_str_deref(i32 %189)
  %191 = call i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info* %181, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %186, i32 %190)
  %192 = load i32, i32* @BTRFS_DEV_STATE_REPLACE_TGT, align 4
  %193 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %194 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %193, i32 0, i32 8
  %195 = call i32 @clear_bit(i32 %192, i32* %194)
  %196 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %197 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %200 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %199, i32 0, i32 7
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* @BTRFS_DEV_REPLACE_DEVID, align 4
  %202 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %203 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 8
  %204 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %205 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %204, i32 0, i32 6
  %206 = load i32*, i32** %205, align 8
  %207 = mul nuw i64 4, %21
  %208 = trunc i64 %207 to i32
  %209 = call i32 @memcpy(i32* %23, i32* %206, i32 %208)
  %210 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %211 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %214 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %213, i32 0, i32 6
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @memcpy(i32* %212, i32* %215, i32 8)
  %217 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %218 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %217, i32 0, i32 6
  %219 = load i32*, i32** %218, align 8
  %220 = call i32 @memcpy(i32* %219, i32* %23, i32 8)
  %221 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %222 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %223 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @btrfs_device_set_total_bytes(%struct.btrfs_device* %221, i32 %224)
  %226 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %227 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %228 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @btrfs_device_set_disk_total_bytes(%struct.btrfs_device* %226, i32 %229)
  %231 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %232 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %233 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @btrfs_device_set_bytes_used(%struct.btrfs_device* %231, i32 %234)
  %236 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %237 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %240 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  %241 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %242 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %243 = call i32 @btrfs_assign_next_active_device(%struct.btrfs_device* %241, %struct.btrfs_device* %242)
  %244 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %245 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %244, i32 0, i32 1
  %246 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %247 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %246, i32 0, i32 0
  %248 = load %struct.TYPE_2__*, %struct.TYPE_2__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 2
  %250 = call i32 @list_add(i32* %245, i32* %249)
  %251 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %252 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %251, i32 0, i32 0
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  %257 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %258 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %257, i32 0, i32 3
  %259 = call i32 @up_write(i32* %258)
  %260 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %261 = call i32 @btrfs_rm_dev_replace_blocked(%struct.btrfs_fs_info* %260)
  %262 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %263 = call i32 @btrfs_rm_dev_replace_remove_srcdev(%struct.btrfs_device* %262)
  %264 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %265 = call i32 @btrfs_rm_dev_replace_unblocked(%struct.btrfs_fs_info* %264)
  %266 = load %struct.btrfs_device*, %struct.btrfs_device** %7, align 8
  %267 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %266, i32 0, i32 0
  %268 = call i32 @atomic_inc(i32* %267)
  %269 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %270 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %269, i32 0, i32 1
  %271 = call i32 @mutex_unlock(i32* %270)
  %272 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %273 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %272, i32 0, i32 0
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 0
  %276 = call i32 @mutex_unlock(i32* %275)
  %277 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %278 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %277, i32 0, i32 0
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %281 = call i32 @btrfs_sysfs_rm_device_link(%struct.TYPE_2__* %279, %struct.btrfs_device* %280)
  %282 = load %struct.btrfs_device*, %struct.btrfs_device** %8, align 8
  %283 = call i32 @btrfs_rm_dev_replace_free_srcdev(%struct.btrfs_device* %282)
  %284 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %285 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %284, i32 0)
  store %struct.btrfs_trans_handle* %285, %struct.btrfs_trans_handle** %12, align 8
  %286 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %287 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %180
  %290 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %12, align 8
  %291 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %290)
  br label %292

292:                                              ; preds = %289, %180
  %293 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %6, align 8
  %294 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %293, i32 0, i32 2
  %295 = call i32 @mutex_unlock(i32* %294)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %296

296:                                              ; preds = %292, %173, %72, %56, %35
  %297 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @down_read(i32*) #2

declare dso_local i32 @up_read(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @btrfs_start_delalloc_roots(%struct.btrfs_fs_info*, i32) #2

declare dso_local i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info*, i32, i32, i32) #2

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #2

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #2

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #2

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @list_empty(i32*) #2

declare dso_local i32 @down_write(i32*) #2

declare dso_local i32 @ktime_get_real_seconds(...) #2

declare dso_local i32 @btrfs_dev_replace_update_device_in_mapping_tree(%struct.btrfs_fs_info*, %struct.btrfs_device*, %struct.btrfs_device*) #2

declare dso_local i32 @btrfs_err_in_rcu(%struct.btrfs_fs_info*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @btrfs_dev_name(%struct.btrfs_device*) #2

declare dso_local i32 @rcu_str_deref(i32) #2

declare dso_local i32 @up_write(i32*) #2

declare dso_local i32 @btrfs_rm_dev_replace_blocked(%struct.btrfs_fs_info*) #2

declare dso_local i32 @btrfs_destroy_dev_replace_tgtdev(%struct.btrfs_device*) #2

declare dso_local i32 @btrfs_rm_dev_replace_unblocked(%struct.btrfs_fs_info*) #2

declare dso_local i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @btrfs_device_set_total_bytes(%struct.btrfs_device*, i32) #2

declare dso_local i32 @btrfs_device_set_disk_total_bytes(%struct.btrfs_device*, i32) #2

declare dso_local i32 @btrfs_device_set_bytes_used(%struct.btrfs_device*, i32) #2

declare dso_local i32 @btrfs_assign_next_active_device(%struct.btrfs_device*, %struct.btrfs_device*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @btrfs_rm_dev_replace_remove_srcdev(%struct.btrfs_device*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @btrfs_sysfs_rm_device_link(%struct.TYPE_2__*, %struct.btrfs_device*) #2

declare dso_local i32 @btrfs_rm_dev_replace_free_srcdev(%struct.btrfs_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
