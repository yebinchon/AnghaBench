; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_replay_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_replay_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i64, %struct.btrfs_super_block* }
%struct.btrfs_super_block = type { i32 }
%struct.btrfs_fs_devices = type { i64 }
%struct.btrfs_root = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"log replay required on RO media\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_TREE_LOG_OBJECTID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to read log tree\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to recover log tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.btrfs_fs_devices*)* @btrfs_replay_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_replay_log(%struct.btrfs_fs_info* %0, %struct.btrfs_fs_devices* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_fs_devices*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_fs_devices* %1, %struct.btrfs_fs_devices** %5, align 8
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 2
  %13 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %12, align 8
  store %struct.btrfs_super_block* %13, %struct.btrfs_super_block** %8, align 8
  %14 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %8, align 8
  %15 = call i32 @btrfs_super_log_root(%struct.btrfs_super_block* %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.btrfs_super_block*, %struct.btrfs_super_block** %8, align 8
  %17 = call i32 @btrfs_super_log_root_level(%struct.btrfs_super_block* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.btrfs_fs_devices*, %struct.btrfs_fs_devices** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_devices, %struct.btrfs_fs_devices* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %115

27:                                               ; preds = %2
  %28 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info* %28, i32 %29)
  store %struct.btrfs_root* %30, %struct.btrfs_root** %7, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %32 = icmp ne %struct.btrfs_root* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %115

36:                                               ; preds = %27
  %37 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %39 = load i32, i32* @BTRFS_TREE_LOG_OBJECTID, align 4
  %40 = call i32 @__setup_root(%struct.btrfs_root* %37, %struct.btrfs_fs_info* %38, i32 %39)
  %41 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %44 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @read_tree_block(%struct.btrfs_fs_info* %41, i32 %42, i64 %46, i32 %47, i32* null)
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %36
  %57 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %58 = call i32 @btrfs_warn(%struct.btrfs_fs_info* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %60 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PTR_ERR(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %64 = call i32 @kfree(%struct.btrfs_root* %63)
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %115

66:                                               ; preds = %36
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %68 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @extent_buffer_uptodate(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %66
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %74 = call i32 @btrfs_err(%struct.btrfs_fs_info* %73, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %76 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @free_extent_buffer(i32 %77)
  %79 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %80 = call i32 @kfree(%struct.btrfs_root* %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %115

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %86 = call i32 @btrfs_recover_log_trees(%struct.btrfs_root* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %100

89:                                               ; preds = %84
  %90 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info* %90, i32 %91, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %94 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @free_extent_buffer(i32 %95)
  %97 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %98 = call i32 @kfree(%struct.btrfs_root* %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %115

100:                                              ; preds = %84
  %101 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %102 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @sb_rdonly(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %108 = call i32 @btrfs_commit_super(%struct.btrfs_fs_info* %107)
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %113, %100
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %111, %89, %72, %56, %33, %22
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @btrfs_super_log_root(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_super_log_root_level(%struct.btrfs_super_block*) #1

declare dso_local i32 @btrfs_warn(%struct.btrfs_fs_info*, i8*) #1

declare dso_local %struct.btrfs_root* @btrfs_alloc_root(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @__setup_root(%struct.btrfs_root*, %struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @read_tree_block(%struct.btrfs_fs_info*, i32, i64, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kfree(%struct.btrfs_root*) #1

declare dso_local i32 @extent_buffer_uptodate(i32) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @btrfs_recover_log_trees(%struct.btrfs_root*) #1

declare dso_local i32 @btrfs_handle_fs_error(%struct.btrfs_fs_info*, i32, i8*) #1

declare dso_local i64 @sb_rdonly(i32) #1

declare dso_local i32 @btrfs_commit_super(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
