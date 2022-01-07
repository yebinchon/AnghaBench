; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_dev_replace, %struct.btrfs_root* }
%struct.btrfs_dev_replace = type { i32, i32, i32, i32, i32, i32, %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle*, i32, i32, i64, i64, i64, i64, i32 }
%struct.btrfs_trans_handle = type { i32, i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"cannot replace device %s (devid %llu) due to active swapfile\00", align 1
@ETXTBSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_RESULT_ALREADY_STARTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"dev_replace from %s (devid %llu) to %s started\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"kobj add dev failed %d\00", align 1
@U64_MAX = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i8*, i32, i8*, i32)* @btrfs_dev_replace_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_dev_replace_start(%struct.btrfs_fs_info* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_root*, align 8
  %13 = alloca %struct.btrfs_trans_handle*, align 8
  %14 = alloca %struct.btrfs_dev_replace*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_device*, align 8
  %17 = alloca %struct.btrfs_device*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 1
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %12, align 8
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 0
  store %struct.btrfs_dev_replace* %22, %struct.btrfs_dev_replace** %14, align 8
  store %struct.btrfs_device* null, %struct.btrfs_device** %16, align 8
  store %struct.btrfs_device* null, %struct.btrfs_device** %17, align 8
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = call %struct.btrfs_trans_handle* @btrfs_find_device_by_devspec(%struct.btrfs_fs_info* %23, i32 %24, i8* %25)
  %27 = bitcast %struct.btrfs_trans_handle* %26 to %struct.btrfs_device*
  store %struct.btrfs_device* %27, %struct.btrfs_device** %17, align 8
  %28 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %29 = bitcast %struct.btrfs_device* %28 to %struct.btrfs_trans_handle*
  %30 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %34 = bitcast %struct.btrfs_device* %33 to %struct.btrfs_trans_handle*
  %35 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %34)
  store i32 %35, i32* %6, align 4
  br label %228

36:                                               ; preds = %5
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %38 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %39 = bitcast %struct.btrfs_device* %38 to %struct.btrfs_trans_handle*
  %40 = call i64 @btrfs_pinned_by_swapfile(%struct.btrfs_fs_info* %37, %struct.btrfs_trans_handle* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %44 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %45 = bitcast %struct.btrfs_device* %44 to %struct.btrfs_trans_handle*
  %46 = call i32 @btrfs_dev_name(%struct.btrfs_trans_handle* %45)
  %47 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %48 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @btrfs_warn_in_rcu(%struct.btrfs_fs_info* %43, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load i32, i32* @ETXTBSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %228

53:                                               ; preds = %36
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %55 = call %struct.btrfs_trans_handle* @btrfs_attach_transaction(%struct.btrfs_root* %54)
  store %struct.btrfs_trans_handle* %55, %struct.btrfs_trans_handle** %13, align 8
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %57 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %61 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %6, align 4
  br label %228

66:                                               ; preds = %59
  br label %77

67:                                               ; preds = %53
  %68 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %69 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %68)
  %70 = load i32, i32* @ENOENT, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp ne i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %75 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %74)
  store i32 %75, i32* %6, align 4
  br label %228

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %81 = bitcast %struct.btrfs_device* %80 to %struct.btrfs_trans_handle*
  %82 = bitcast %struct.btrfs_device** %16 to %struct.btrfs_trans_handle**
  %83 = call i32 @btrfs_init_dev_replace_tgtdev(%struct.btrfs_fs_info* %78, i8* %79, %struct.btrfs_trans_handle* %81, %struct.btrfs_trans_handle** %82)
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %15, align 4
  store i32 %87, i32* %6, align 4
  br label %228

88:                                               ; preds = %77
  %89 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %90 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %89, i32 0, i32 5
  %91 = call i32 @down_write(i32* %90)
  %92 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %93 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %102 [
    i32 130, label %95
    i32 131, label %95
    i32 132, label %95
    i32 129, label %96
    i32 128, label %96
  ]

95:                                               ; preds = %88, %88, %88
  br label %102

96:                                               ; preds = %88, %88
  %97 = call i32 @ASSERT(i32 0)
  %98 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_ALREADY_STARTED, align 4
  store i32 %98, i32* %15, align 4
  %99 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %100 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %99, i32 0, i32 5
  %101 = call i32 @up_write(i32* %100)
  br label %223

102:                                              ; preds = %88, %95
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %105 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %107 = bitcast %struct.btrfs_device* %106 to %struct.btrfs_trans_handle*
  %108 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %109 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %108, i32 0, i32 7
  store %struct.btrfs_trans_handle* %107, %struct.btrfs_trans_handle** %109, align 8
  %110 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %111 = bitcast %struct.btrfs_device* %110 to %struct.btrfs_trans_handle*
  %112 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %113 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %112, i32 0, i32 6
  store %struct.btrfs_trans_handle* %111, %struct.btrfs_trans_handle** %113, align 8
  %114 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %115 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %116 = bitcast %struct.btrfs_device* %115 to %struct.btrfs_trans_handle*
  %117 = call i32 @btrfs_dev_name(%struct.btrfs_trans_handle* %116)
  %118 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %119 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %122 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @rcu_str_deref(i32 %123)
  %125 = call i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info* %114, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %120, i32 %124)
  %126 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %127 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %126, i32 0, i32 0
  store i32 129, i32* %127, align 8
  %128 = call i32 (...) @ktime_get_real_seconds()
  %129 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %130 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %129, i32 0, i32 14
  store i32 %128, i32* %130, align 8
  %131 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %132 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %131, i32 0, i32 13
  store i64 0, i64* %132, align 8
  %133 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %134 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %133, i32 0, i32 12
  store i64 0, i64* %134, align 8
  %135 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %136 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %135, i32 0, i32 11
  store i64 0, i64* %136, align 8
  %137 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %138 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %137, i32 0, i32 10
  store i64 0, i64* %138, align 8
  %139 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %140 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %142 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %141, i32 0, i32 3
  store i32 1, i32* %142, align 4
  %143 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %144 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %143, i32 0, i32 9
  %145 = call i32 @atomic64_set(i32* %144, i32 0)
  %146 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %147 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %146, i32 0, i32 8
  %148 = call i32 @atomic64_set(i32* %147, i32 0)
  %149 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %150 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %149, i32 0, i32 5
  %151 = call i32 @up_write(i32* %150)
  %152 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %153 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %156 = bitcast %struct.btrfs_device* %155 to %struct.btrfs_trans_handle*
  %157 = call i32 @btrfs_sysfs_add_device_link(i32 %154, %struct.btrfs_trans_handle* %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %102
  %161 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 @btrfs_err(%struct.btrfs_fs_info* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %160, %102
  %165 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %166 = load i32, i32* @U64_MAX, align 4
  %167 = call i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info* %165, i32 %166, i32 0, i32 -1)
  %168 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %169 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %168, i32 1)
  store %struct.btrfs_trans_handle* %169, %struct.btrfs_trans_handle** %13, align 8
  %170 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %171 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %188

173:                                              ; preds = %164
  %174 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %175 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %174)
  store i32 %175, i32* %15, align 4
  %176 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %177 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %176, i32 0, i32 5
  %178 = call i32 @down_write(i32* %177)
  %179 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %180 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %179, i32 0, i32 0
  store i32 130, i32* %180, align 8
  %181 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %182 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %181, i32 0, i32 7
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %182, align 8
  %183 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %184 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %183, i32 0, i32 6
  store %struct.btrfs_trans_handle* null, %struct.btrfs_trans_handle** %184, align 8
  %185 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %186 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %185, i32 0, i32 5
  %187 = call i32 @up_write(i32* %186)
  br label %223

188:                                              ; preds = %164
  %189 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %13, align 8
  %190 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %189)
  store i32 %190, i32* %15, align 4
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @WARN_ON(i32 %191)
  %193 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %194 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %195 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.btrfs_device*, %struct.btrfs_device** %17, align 8
  %198 = bitcast %struct.btrfs_device* %197 to %struct.btrfs_trans_handle*
  %199 = call i32 @btrfs_device_get_total_bytes(%struct.btrfs_trans_handle* %198)
  %200 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %14, align 8
  %201 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %200, i32 0, i32 4
  %202 = call i32 @btrfs_scrub_dev(%struct.btrfs_fs_info* %193, i32 %196, i32 0, i32 %199, i32* %201, i32 0, i32 1)
  store i32 %202, i32* %15, align 4
  %203 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %204 = load i32, i32* %15, align 4
  %205 = call i32 @btrfs_dev_replace_finishing(%struct.btrfs_fs_info* %203, i32 %204)
  store i32 %205, i32* %15, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* @EINPROGRESS, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %188
  %211 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_SCRUB_INPROGRESS, align 4
  store i32 %211, i32* %15, align 4
  br label %221

212:                                              ; preds = %188
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* @ECANCELED, align 4
  %215 = sub nsw i32 0, %214
  %216 = icmp ne i32 %213, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @WARN_ON(i32 %218)
  br label %220

220:                                              ; preds = %217, %212
  br label %221

221:                                              ; preds = %220, %210
  %222 = load i32, i32* %15, align 4
  store i32 %222, i32* %6, align 4
  br label %228

223:                                              ; preds = %173, %96
  %224 = load %struct.btrfs_device*, %struct.btrfs_device** %16, align 8
  %225 = bitcast %struct.btrfs_device* %224 to %struct.btrfs_trans_handle*
  %226 = call i32 @btrfs_destroy_dev_replace_tgtdev(%struct.btrfs_trans_handle* %225)
  %227 = load i32, i32* %15, align 4
  store i32 %227, i32* %6, align 4
  br label %228

228:                                              ; preds = %223, %221, %86, %73, %64, %42, %32
  %229 = load i32, i32* %6, align 4
  ret i32 %229
}

declare dso_local %struct.btrfs_trans_handle* @btrfs_find_device_by_devspec(%struct.btrfs_fs_info*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i64 @btrfs_pinned_by_swapfile(%struct.btrfs_fs_info*, %struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_warn_in_rcu(%struct.btrfs_fs_info*, i8*, i32, i32) #1

declare dso_local i32 @btrfs_dev_name(%struct.btrfs_trans_handle*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_attach_transaction(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_init_dev_replace_tgtdev(%struct.btrfs_fs_info*, i8*, %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle**) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @rcu_str_deref(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @btrfs_sysfs_add_device_link(i32, %struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @btrfs_wait_ordered_roots(%struct.btrfs_fs_info*, i32, i32, i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_scrub_dev(%struct.btrfs_fs_info*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @btrfs_device_get_total_bytes(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_dev_replace_finishing(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @btrfs_destroy_dev_replace_tgtdev(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
