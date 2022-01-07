; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_add_inode_defrag.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_add_inode_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_inode = type { i32, %struct.btrfs_root* }
%struct.btrfs_root = type { %struct.TYPE_2__, i32, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.inode_defrag = type { i32, i32, i32 }

@BTRFS_INODE_IN_DEFRAG = common dso_local global i32 0, align 4
@btrfs_inode_defrag_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_add_inode_defrag(%struct.btrfs_trans_handle* %0, %struct.btrfs_inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_inode*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca %struct.inode_defrag*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_inode* %1, %struct.btrfs_inode** %5, align 8
  %11 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %11, i32 0, i32 1
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %6, align 8
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 2
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %7, align 8
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %18 = call i32 @__need_auto_defrag(%struct.btrfs_fs_info* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  %22 = load i32, i32* @BTRFS_INODE_IN_DEFRAG, align 4
  %23 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %24 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %23, i32 0, i32 0
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %91

28:                                               ; preds = %21
  %29 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %30 = icmp ne %struct.btrfs_trans_handle* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %33 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %41

35:                                               ; preds = %28
  %36 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %37 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %36, i32 0, i32 1
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %37, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i32, i32* @btrfs_inode_defrag_cachep, align 4
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call %struct.inode_defrag* @kmem_cache_zalloc(i32 %42, i32 %43)
  store %struct.inode_defrag* %44, %struct.inode_defrag** %8, align 8
  %45 = load %struct.inode_defrag*, %struct.inode_defrag** %8, align 8
  %46 = icmp ne %struct.inode_defrag* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %91

50:                                               ; preds = %41
  %51 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %52 = call i32 @btrfs_ino(%struct.btrfs_inode* %51)
  %53 = load %struct.inode_defrag*, %struct.inode_defrag** %8, align 8
  %54 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.inode_defrag*, %struct.inode_defrag** %8, align 8
  %57 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.inode_defrag*, %struct.inode_defrag** %8, align 8
  %63 = getelementptr inbounds %struct.inode_defrag, %struct.inode_defrag* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %65 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load i32, i32* @BTRFS_INODE_IN_DEFRAG, align 4
  %68 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %69 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %68, i32 0, i32 0
  %70 = call i64 @test_bit(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %50
  %73 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %74 = load %struct.inode_defrag*, %struct.inode_defrag** %8, align 8
  %75 = call i32 @__btrfs_add_inode_defrag(%struct.btrfs_inode* %73, %struct.inode_defrag* %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* @btrfs_inode_defrag_cachep, align 4
  %80 = load %struct.inode_defrag*, %struct.inode_defrag** %8, align 8
  %81 = call i32 @kmem_cache_free(i32 %79, %struct.inode_defrag* %80)
  br label %82

82:                                               ; preds = %78, %72
  br label %87

83:                                               ; preds = %50
  %84 = load i32, i32* @btrfs_inode_defrag_cachep, align 4
  %85 = load %struct.inode_defrag*, %struct.inode_defrag** %8, align 8
  %86 = call i32 @kmem_cache_free(i32 %84, %struct.inode_defrag* %85)
  br label %87

87:                                               ; preds = %83, %82
  %88 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %89 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %47, %27, %20
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @__need_auto_defrag(%struct.btrfs_fs_info*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.inode_defrag* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @btrfs_ino(%struct.btrfs_inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__btrfs_add_inode_defrag(%struct.btrfs_inode*, %struct.inode_defrag*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.inode_defrag*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
