; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_mount_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_super.c_btrfs_mount_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.file_system_type = type { i32 }
%struct.block_device = type { i32 }
%struct.super_block = type { i32, i64, i32, %struct.btrfs_fs_devices* }
%struct.btrfs_fs_devices = type { i64, %struct.block_device* }
%struct.btrfs_device = type { i32, i64, i32, %struct.btrfs_fs_devices* }
%struct.btrfs_fs_info = type { i32, %struct.btrfs_fs_devices*, i8*, i8* }
%struct.TYPE_2__ = type { %struct.file_system_type* }

@FMODE_READ = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_SUPER_INFO_SIZE = common dso_local global i32 0, align 4
@uuid_mutex = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@btrfs_test_super = common dso_local global i32 0, align 4
@btrfs_set_super = common dso_local global i32 0, align 4
@SB_NOSEC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%pg\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@BTRFS_FS_CSUM_IMPL_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)* @btrfs_mount_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @btrfs_mount_root(%struct.file_system_type* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.file_system_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.block_device*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %struct.btrfs_device*, align 8
  %13 = alloca %struct.btrfs_fs_devices*, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file_system_type* %0, %struct.file_system_type** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.block_device* null, %struct.block_device** %10, align 8
  store %struct.btrfs_device* null, %struct.btrfs_device** %12, align 8
  store %struct.btrfs_fs_devices* null, %struct.btrfs_fs_devices** %13, align 8
  store %struct.btrfs_fs_info* null, %struct.btrfs_fs_info** %14, align 8
  store i8* null, i8** %15, align 8
  %18 = load i32, i32* @FMODE_READ, align 4
  store i32 %18, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SB_RDONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @FMODE_WRITE, align 4
  %25 = load i32, i32* %16, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %23, %4
  %28 = load i8*, i8** %9, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @security_sb_eat_lsm_opts(i8* %31, i8** %15)
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %17, align 4
  %37 = call %struct.dentry* @ERR_PTR(i32 %36)
  store %struct.dentry* %37, %struct.dentry** %5, align 8
  br label %217

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.btrfs_fs_info* @kvzalloc(i32 32, i32 %40)
  store %struct.btrfs_fs_info* %41, %struct.btrfs_fs_info** %14, align 8
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %43 = icmp ne %struct.btrfs_fs_info* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %17, align 4
  br label %213

47:                                               ; preds = %39
  %48 = load i32, i32* @BTRFS_SUPER_INFO_SIZE, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @kzalloc(i32 %48, i32 %49)
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @BTRFS_SUPER_INFO_SIZE, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kzalloc(i32 %53, i32 %54)
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %57 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %59 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %47
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %64 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62, %47
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %17, align 4
  br label %210

70:                                               ; preds = %62
  %71 = call i32 @mutex_lock(i32* @uuid_mutex)
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %75 = call i32 @btrfs_parse_device_options(i8* %72, i32 %73, %struct.file_system_type* %74)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = call i32 @mutex_unlock(i32* @uuid_mutex)
  br label %210

80:                                               ; preds = %70
  %81 = load i8*, i8** %8, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %84 = call %struct.super_block* @btrfs_scan_one_device(i8* %81, i32 %82, %struct.file_system_type* %83)
  %85 = bitcast %struct.super_block* %84 to %struct.btrfs_device*
  store %struct.btrfs_device* %85, %struct.btrfs_device** %12, align 8
  %86 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %87 = bitcast %struct.btrfs_device* %86 to %struct.super_block*
  %88 = call i64 @IS_ERR(%struct.super_block* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = call i32 @mutex_unlock(i32* @uuid_mutex)
  %92 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %93 = bitcast %struct.btrfs_device* %92 to %struct.super_block*
  %94 = call i32 @PTR_ERR(%struct.super_block* %93)
  store i32 %94, i32* %17, align 4
  br label %210

95:                                               ; preds = %80
  %96 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  %97 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %96, i32 0, i32 3
  %98 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %97, align 8
  store %struct.btrfs_fs_devices* %98, %struct.btrfs_fs_devices** %13, align 8
  %99 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  %100 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %101 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %100, i32 0, i32 1
  store %struct.btrfs_fs_devices* %99, %struct.btrfs_fs_devices** %101, align 8
  %102 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  %103 = load i32, i32* %16, align 4
  %104 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %105 = call i32 @btrfs_open_devices(%struct.btrfs_fs_devices* %102, i32 %103, %struct.file_system_type* %104)
  store i32 %105, i32* %17, align 4
  %106 = call i32 @mutex_unlock(i32* @uuid_mutex)
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %210

110:                                              ; preds = %95
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @SB_RDONLY, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  %117 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @EACCES, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %17, align 4
  br label %207

123:                                              ; preds = %115, %110
  %124 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  %125 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %124, i32 0, i32 1
  %126 = load %struct.block_device*, %struct.block_device** %125, align 8
  store %struct.block_device* %126, %struct.block_device** %10, align 8
  %127 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %128 = load i32, i32* @btrfs_test_super, align 4
  %129 = load i32, i32* @btrfs_set_super, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @SB_NOSEC, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %134 = call %struct.super_block* @sget(%struct.file_system_type* %127, i32 %128, i32 %129, i32 %132, %struct.btrfs_fs_info* %133)
  store %struct.super_block* %134, %struct.super_block** %11, align 8
  %135 = load %struct.super_block*, %struct.super_block** %11, align 8
  %136 = call i64 @IS_ERR(%struct.super_block* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %123
  %139 = load %struct.super_block*, %struct.super_block** %11, align 8
  %140 = call i32 @PTR_ERR(%struct.super_block* %139)
  store i32 %140, i32* %17, align 4
  br label %207

141:                                              ; preds = %123
  %142 = load %struct.super_block*, %struct.super_block** %11, align 8
  %143 = getelementptr inbounds %struct.super_block, %struct.super_block* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %141
  %147 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  %148 = call i32 @btrfs_close_devices(%struct.btrfs_fs_devices* %147)
  %149 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %150 = call i32 @free_fs_info(%struct.btrfs_fs_info* %149)
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.super_block*, %struct.super_block** %11, align 8
  %153 = getelementptr inbounds %struct.super_block, %struct.super_block* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = xor i32 %151, %154
  %156 = load i32, i32* @SB_RDONLY, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %146
  %160 = load i32, i32* @EBUSY, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %159, %146
  br label %186

163:                                              ; preds = %141
  %164 = load %struct.super_block*, %struct.super_block** %11, align 8
  %165 = getelementptr inbounds %struct.super_block, %struct.super_block* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.block_device*, %struct.block_device** %10, align 8
  %168 = call i32 @snprintf(i32 %166, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.block_device* %167)
  %169 = load %struct.file_system_type*, %struct.file_system_type** %6, align 8
  %170 = load %struct.super_block*, %struct.super_block** %11, align 8
  %171 = call %struct.TYPE_2__* @btrfs_sb(%struct.super_block* %170)
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  store %struct.file_system_type* %169, %struct.file_system_type** %172, align 8
  %173 = call i32 (...) @crc32c_impl()
  %174 = call i32 @strstr(i32 %173, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %181, label %176

176:                                              ; preds = %163
  %177 = load i32, i32* @BTRFS_FS_CSUM_IMPL_FAST, align 4
  %178 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %179 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %178, i32 0, i32 0
  %180 = call i32 @set_bit(i32 %177, i32* %179)
  br label %181

181:                                              ; preds = %176, %163
  %182 = load %struct.super_block*, %struct.super_block** %11, align 8
  %183 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  %184 = load i8*, i8** %9, align 8
  %185 = call i32 @btrfs_fill_super(%struct.super_block* %182, %struct.btrfs_fs_devices* %183, i8* %184)
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %181, %162
  %187 = load i32, i32* %17, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %186
  %190 = load %struct.super_block*, %struct.super_block** %11, align 8
  %191 = load i8*, i8** %15, align 8
  %192 = call i32 @security_sb_set_mnt_opts(%struct.super_block* %190, i8* %191, i32 0, i32* null)
  store i32 %192, i32* %17, align 4
  br label %193

193:                                              ; preds = %189, %186
  %194 = call i32 @security_free_mnt_opts(i8** %15)
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load %struct.super_block*, %struct.super_block** %11, align 8
  %199 = call i32 @deactivate_locked_super(%struct.super_block* %198)
  %200 = load i32, i32* %17, align 4
  %201 = call %struct.dentry* @ERR_PTR(i32 %200)
  store %struct.dentry* %201, %struct.dentry** %5, align 8
  br label %217

202:                                              ; preds = %193
  %203 = load %struct.super_block*, %struct.super_block** %11, align 8
  %204 = getelementptr inbounds %struct.super_block, %struct.super_block* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = call %struct.dentry* @dget(i64 %205)
  store %struct.dentry* %206, %struct.dentry** %5, align 8
  br label %217

207:                                              ; preds = %138, %120
  %208 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %13, align 8
  %209 = call i32 @btrfs_close_devices(%struct.btrfs_fs_devices* %208)
  br label %210

210:                                              ; preds = %207, %109, %90, %78, %67
  %211 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %212 = call i32 @free_fs_info(%struct.btrfs_fs_info* %211)
  br label %213

213:                                              ; preds = %210, %44
  %214 = call i32 @security_free_mnt_opts(i8** %15)
  %215 = load i32, i32* %17, align 4
  %216 = call %struct.dentry* @ERR_PTR(i32 %215)
  store %struct.dentry* %216, %struct.dentry** %5, align 8
  br label %217

217:                                              ; preds = %213, %202, %197, %35
  %218 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %218
}

declare dso_local i32 @security_sb_eat_lsm_opts(i8*, i8**) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.btrfs_fs_info* @kvzalloc(i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @btrfs_parse_device_options(i8*, i32, %struct.file_system_type*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.super_block* @btrfs_scan_one_device(i8*, i32, %struct.file_system_type*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local i32 @btrfs_open_devices(%struct.btrfs_fs_devices*, i32, %struct.file_system_type*) #1

declare dso_local %struct.super_block* @sget(%struct.file_system_type*, i32, i32, i32, %struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_close_devices(%struct.btrfs_fs_devices*) #1

declare dso_local i32 @free_fs_info(%struct.btrfs_fs_info*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, %struct.block_device*) #1

declare dso_local %struct.TYPE_2__* @btrfs_sb(%struct.super_block*) #1

declare dso_local i32 @strstr(i32, i8*) #1

declare dso_local i32 @crc32c_impl(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @btrfs_fill_super(%struct.super_block*, %struct.btrfs_fs_devices*, i8*) #1

declare dso_local i32 @security_sb_set_mnt_opts(%struct.super_block*, i8*, i32, i32*) #1

declare dso_local i32 @security_free_mnt_opts(i8**) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local %struct.dentry* @dget(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
