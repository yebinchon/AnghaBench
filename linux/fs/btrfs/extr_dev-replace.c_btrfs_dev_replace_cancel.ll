; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_dev-replace.c_btrfs_dev_replace_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, %struct.btrfs_root*, %struct.btrfs_dev_replace }
%struct.btrfs_root = type { i32 }
%struct.btrfs_dev_replace = type { i32, i32, i32, i32, i32, %struct.btrfs_device*, %struct.btrfs_device* }
%struct.btrfs_device = type { i32 }
%struct.btrfs_trans_handle = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED = common dso_local global i32 0, align 4
@BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"dev_replace from %s (devid %llu) to %s canceled\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"suspended dev_replace from %s (devid %llu) to %s canceled\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_dev_replace_cancel(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_dev_replace*, align 8
  %5 = alloca %struct.btrfs_device*, align 8
  %6 = alloca %struct.btrfs_device*, align 8
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 2
  store %struct.btrfs_dev_replace* %12, %struct.btrfs_dev_replace** %4, align 8
  store %struct.btrfs_device* null, %struct.btrfs_device** %5, align 8
  store %struct.btrfs_device* null, %struct.btrfs_device** %6, align 8
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %14 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %13, i32 0, i32 1
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %8, align 8
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @sb_rdonly(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EROFS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %139

24:                                               ; preds = %1
  %25 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %26 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %28, i32 0, i32 3
  %30 = call i32 @down_write(i32* %29)
  %31 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %32 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %128 [
    i32 130, label %34
    i32 131, label %34
    i32 132, label %34
    i32 129, label %39
    i32 128, label %67
  ]

34:                                               ; preds = %24, %24, %24
  %35 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %36, i32 0, i32 3
  %38 = call i32 @up_write(i32* %37)
  br label %134

39:                                               ; preds = %24
  %40 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %41 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %40, i32 0, i32 6
  %42 = load %struct.btrfs_device*, %struct.btrfs_device** %41, align 8
  store %struct.btrfs_device* %42, %struct.btrfs_device** %5, align 8
  %43 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %43, i32 0, i32 5
  %45 = load %struct.btrfs_device*, %struct.btrfs_device** %44, align 8
  store %struct.btrfs_device* %45, %struct.btrfs_device** %6, align 8
  %46 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %47 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %46, i32 0, i32 3
  %48 = call i32 @up_write(i32* %47)
  %49 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %50 = call i32 @btrfs_scrub_cancel(%struct.btrfs_fs_info* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_NOT_STARTED, align 4
  store i32 %54, i32* %9, align 4
  br label %66

55:                                               ; preds = %39
  %56 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %58 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %59 = call i32 @btrfs_dev_name(%struct.btrfs_device* %58)
  %60 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %61 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %64 = call i32 @btrfs_dev_name(%struct.btrfs_device* %63)
  %65 = call i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info* %57, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %55, %53
  br label %134

67:                                               ; preds = %24
  %68 = load i32, i32* @BTRFS_IOCTL_DEV_REPLACE_RESULT_NO_ERROR, align 4
  store i32 %68, i32* %9, align 4
  %69 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %70 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %69, i32 0, i32 6
  %71 = load %struct.btrfs_device*, %struct.btrfs_device** %70, align 8
  store %struct.btrfs_device* %71, %struct.btrfs_device** %5, align 8
  %72 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %73 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %72, i32 0, i32 5
  %74 = load %struct.btrfs_device*, %struct.btrfs_device** %73, align 8
  store %struct.btrfs_device* %74, %struct.btrfs_device** %6, align 8
  %75 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %75, i32 0, i32 6
  store %struct.btrfs_device* null, %struct.btrfs_device** %76, align 8
  %77 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %78 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %77, i32 0, i32 5
  store %struct.btrfs_device* null, %struct.btrfs_device** %78, align 8
  %79 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %80 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %79, i32 0, i32 0
  store i32 132, i32* %80, align 8
  %81 = call i32 (...) @ktime_get_real_seconds()
  %82 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %83 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %85 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %87 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %86, i32 0, i32 3
  %88 = call i32 @up_write(i32* %87)
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %90 = call i32 @btrfs_scrub_cancel(%struct.btrfs_fs_info* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @ENOTCONN, align 4
  %93 = sub nsw i32 0, %92
  %94 = icmp ne i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %98 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %97, i32 0)
  store %struct.btrfs_trans_handle* %98, %struct.btrfs_trans_handle** %7, align 8
  %99 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %100 = call i32 @IS_ERR(%struct.btrfs_trans_handle* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %67
  %103 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %104 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %103, i32 0, i32 2
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %107 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %106)
  store i32 %107, i32* %2, align 4
  br label %139

108:                                              ; preds = %67
  %109 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %110 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @WARN_ON(i32 %111)
  %113 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %114 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %115 = call i32 @btrfs_dev_name(%struct.btrfs_device* %114)
  %116 = load %struct.btrfs_device*, %struct.btrfs_device** %6, align 8
  %117 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %120 = call i32 @btrfs_dev_name(%struct.btrfs_device* %119)
  %121 = call i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info* %113, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %118, i32 %120)
  %122 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %123 = icmp ne %struct.btrfs_device* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %126 = call i32 @btrfs_destroy_dev_replace_tgtdev(%struct.btrfs_device* %125)
  br label %127

127:                                              ; preds = %124, %108
  br label %134

128:                                              ; preds = %24
  %129 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %130 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %129, i32 0, i32 3
  %131 = call i32 @up_write(i32* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %128, %127, %66, %34
  %135 = load %struct.btrfs_dev_replace*, %struct.btrfs_dev_replace** %4, align 8
  %136 = getelementptr inbounds %struct.btrfs_dev_replace, %struct.btrfs_dev_replace* %135, i32 0, i32 2
  %137 = call i32 @mutex_unlock(i32* %136)
  %138 = load i32, i32* %9, align 4
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %134, %102, %21
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i64 @sb_rdonly(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @btrfs_scrub_cancel(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_info_in_rcu(%struct.btrfs_fs_info*, i8*, i32, i32, i32) #1

declare dso_local i32 @btrfs_dev_name(%struct.btrfs_device*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @btrfs_destroy_dev_replace_tgtdev(%struct.btrfs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
