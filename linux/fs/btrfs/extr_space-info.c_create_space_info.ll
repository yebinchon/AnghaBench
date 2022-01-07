; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_create_space_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_create_space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_space_info*, i32 }
%struct.btrfs_space_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BTRFS_NR_RAID_TYPES = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_TYPE_MASK = common dso_local global i32 0, align 4
@CHUNK_ALLOC_NO_FORCE = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, i32)* @create_space_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_space_info(%struct.btrfs_fs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btrfs_space_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = call %struct.btrfs_space_info* @kzalloc(i32 56, i32 %9)
  store %struct.btrfs_space_info* %10, %struct.btrfs_space_info** %6, align 8
  %11 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %12 = icmp ne %struct.btrfs_space_info* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %93

16:                                               ; preds = %2
  %17 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %17, i32 0, i32 10
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @percpu_counter_init(i32* %18, i32 0, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %25 = call i32 @kfree(%struct.btrfs_space_info* %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %93

27:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @BTRFS_NR_RAID_TYPES, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %33, i32 0, i32 9
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %45 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %44, i32 0, i32 8
  %46 = call i32 @init_rwsem(i32* %45)
  %47 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %48 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %47, i32 0, i32 7
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BTRFS_BLOCK_GROUP_TYPE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %54 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @CHUNK_ALLOC_NO_FORCE, align 4
  %56 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %57 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %59 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %58, i32 0, i32 5
  %60 = call i32 @init_waitqueue_head(i32* %59)
  %61 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %62 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %61, i32 0, i32 4
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  %64 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %65 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %64, i32 0, i32 3
  %66 = call i32 @INIT_LIST_HEAD(i32* %65)
  %67 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %68 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %67, i32 0, i32 2
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %71 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %72 = call i32 @btrfs_sysfs_add_space_info_type(%struct.btrfs_fs_info* %70, %struct.btrfs_space_info* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %43
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %93

77:                                               ; preds = %43
  %78 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %79 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %78, i32 0, i32 1
  %80 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %81 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %80, i32 0, i32 1
  %82 = call i32 @list_add_rcu(i32* %79, i32* %81)
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @BTRFS_BLOCK_GROUP_DATA, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %77
  %88 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %6, align 8
  %89 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %90 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %89, i32 0, i32 0
  store %struct.btrfs_space_info* %88, %struct.btrfs_space_info** %90, align 8
  br label %91

91:                                               ; preds = %87, %77
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %75, %23, %13
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.btrfs_space_info* @kzalloc(i32, i32) #1

declare dso_local i32 @percpu_counter_init(i32*, i32, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_space_info*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @btrfs_sysfs_add_space_info_type(%struct.btrfs_fs_info*, %struct.btrfs_space_info*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
