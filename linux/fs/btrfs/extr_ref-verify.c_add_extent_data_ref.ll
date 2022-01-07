; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_extent_data_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_add_extent_data_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_extent_data_ref = type { i32 }
%struct.block_entry = type { i32, i32, i32 }
%struct.ref_entry = type { i64, i8*, i8*, i8*, i64 }
%struct.root_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"existing ref when reading from disk?\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"missing root in new block entry?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.extent_buffer*, %struct.btrfs_extent_data_ref*, i8*, i8*)* @add_extent_data_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_extent_data_ref(%struct.btrfs_fs_info* %0, %struct.extent_buffer* %1, %struct.btrfs_extent_data_ref* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca %struct.btrfs_extent_data_ref*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.block_entry*, align 8
  %13 = alloca %struct.ref_entry*, align 8
  %14 = alloca %struct.root_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %8, align 8
  store %struct.btrfs_extent_data_ref* %2, %struct.btrfs_extent_data_ref** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %20 = load %struct.btrfs_extent_data_ref*, %struct.btrfs_extent_data_ref** %9, align 8
  %21 = call i8* @btrfs_extent_data_ref_root(%struct.extent_buffer* %19, %struct.btrfs_extent_data_ref* %20)
  store i8* %21, i8** %15, align 8
  %22 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %23 = load %struct.btrfs_extent_data_ref*, %struct.btrfs_extent_data_ref** %9, align 8
  %24 = call i8* @btrfs_extent_data_ref_objectid(%struct.extent_buffer* %22, %struct.btrfs_extent_data_ref* %23)
  store i8* %24, i8** %16, align 8
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %26 = load %struct.btrfs_extent_data_ref*, %struct.btrfs_extent_data_ref** %9, align 8
  %27 = call i8* @btrfs_extent_data_ref_offset(%struct.extent_buffer* %25, %struct.btrfs_extent_data_ref* %26)
  store i8* %27, i8** %17, align 8
  %28 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %29 = load %struct.btrfs_extent_data_ref*, %struct.btrfs_extent_data_ref** %9, align 8
  %30 = call i64 @btrfs_extent_data_ref_count(%struct.extent_buffer* %28, %struct.btrfs_extent_data_ref* %29)
  store i64 %30, i64* %18, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ref_entry* @kzalloc(i32 40, i32 %31)
  store %struct.ref_entry* %32, %struct.ref_entry** %13, align 8
  %33 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %34 = icmp ne %struct.ref_entry* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %5
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %115

38:                                               ; preds = %5
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = call %struct.block_entry* @add_block_entry(%struct.btrfs_fs_info* %39, i8* %40, i8* %41, i8* %42)
  store %struct.block_entry* %43, %struct.block_entry** %12, align 8
  %44 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %45 = call i64 @IS_ERR(%struct.block_entry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %49 = call i32 @kfree(%struct.ref_entry* %48)
  %50 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %51 = call i32 @PTR_ERR(%struct.block_entry* %50)
  store i32 %51, i32* %6, align 4
  br label %115

52:                                               ; preds = %38
  %53 = load i64, i64* %18, align 8
  %54 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %55 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %61 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %60, i32 0, i32 4
  store i64 0, i64* %61, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %64 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %67 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %70 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %73 = getelementptr inbounds %struct.ref_entry, %struct.ref_entry* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %75 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %74, i32 0, i32 1
  %76 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %77 = call i64 @insert_ref_entry(i32* %75, %struct.ref_entry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %52
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %81 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %84 = call i32 @btrfs_err(%struct.btrfs_fs_info* %83, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.ref_entry*, %struct.ref_entry** %13, align 8
  %86 = call i32 @kfree(%struct.ref_entry* %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %115

89:                                               ; preds = %52
  %90 = load %struct.block_entry*, %struct.block_entry** %12, align 8
  %91 = getelementptr inbounds %struct.block_entry, %struct.block_entry* %90, i32 0, i32 0
  %92 = load i8*, i8** %15, align 8
  %93 = call %struct.root_entry* @lookup_root_entry(i32* %91, i8* %92)
  store %struct.root_entry* %93, %struct.root_entry** %14, align 8
  %94 = load %struct.root_entry*, %struct.root_entry** %14, align 8
  %95 = icmp ne %struct.root_entry* %94, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %98 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %101 = call i32 @btrfs_err(%struct.btrfs_fs_info* %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %6, align 4
  br label %115

104:                                              ; preds = %89
  %105 = load i64, i64* %18, align 8
  %106 = load %struct.root_entry*, %struct.root_entry** %14, align 8
  %107 = getelementptr inbounds %struct.root_entry, %struct.root_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %113 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock(i32* %113)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %104, %96, %79, %47, %35
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i8* @btrfs_extent_data_ref_root(%struct.extent_buffer*, %struct.btrfs_extent_data_ref*) #1

declare dso_local i8* @btrfs_extent_data_ref_objectid(%struct.extent_buffer*, %struct.btrfs_extent_data_ref*) #1

declare dso_local i8* @btrfs_extent_data_ref_offset(%struct.extent_buffer*, %struct.btrfs_extent_data_ref*) #1

declare dso_local i64 @btrfs_extent_data_ref_count(%struct.extent_buffer*, %struct.btrfs_extent_data_ref*) #1

declare dso_local %struct.ref_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.block_entry* @add_block_entry(%struct.btrfs_fs_info*, i8*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.block_entry*) #1

declare dso_local i32 @kfree(%struct.ref_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.block_entry*) #1

declare dso_local i64 @insert_ref_entry(i32*, %struct.ref_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*) #1

declare dso_local %struct.root_entry* @lookup_root_entry(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
