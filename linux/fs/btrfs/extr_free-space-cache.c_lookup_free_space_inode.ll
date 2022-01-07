; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_lookup_free_space_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_lookup_free_space_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_block_group_cache = type { i32, i32, %struct.inode*, i32, %struct.TYPE_3__, %struct.btrfs_fs_info* }
%struct.TYPE_3__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BTRFS_INODE_NODATASUM = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Old style space inode found, converting.\00", align 1
@BTRFS_DC_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @lookup_free_space_inode(%struct.btrfs_block_group_cache* %0, %struct.btrfs_path* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_block_group_cache*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_block_group_cache* %0, %struct.btrfs_block_group_cache** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  %9 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %9, i32 0, i32 5
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  %12 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %13 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %18, i32 0, i32 2
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  %21 = icmp ne %struct.inode* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %24 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %23, i32 0, i32 2
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  %26 = call i8* @igrab(%struct.inode* %25)
  %27 = bitcast i8* %26 to %struct.inode*
  store %struct.inode* %27, %struct.inode** %7, align 8
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = icmp ne %struct.inode* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %35, %struct.inode** %3, align 8
  br label %95

36:                                               ; preds = %28
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %38 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %41 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.inode* @__lookup_free_space_inode(i32 %39, %struct.btrfs_path* %40, i32 %44)
  store %struct.inode* %45, %struct.inode** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i64 @IS_ERR(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %50, %struct.inode** %3, align 8
  br label %95

51:                                               ; preds = %36
  %52 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %53 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %52, i32 0, i32 1
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %8, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %51
  %64 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %65 = call i32 @btrfs_info(%struct.btrfs_fs_info* %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @BTRFS_INODE_NODATASUM, align 4
  %67 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @BTRFS_DC_CLEAR, align 4
  %75 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %63, %51
  %78 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %79 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load %struct.inode*, %struct.inode** %7, align 8
  %84 = call i8* @igrab(%struct.inode* %83)
  %85 = bitcast i8* %84 to %struct.inode*
  %86 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %87 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %86, i32 0, i32 2
  store %struct.inode* %85, %struct.inode** %87, align 8
  %88 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %89 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %90

90:                                               ; preds = %82, %77
  %91 = load %struct.btrfs_block_group_cache*, %struct.btrfs_block_group_cache** %4, align 8
  %92 = getelementptr inbounds %struct.btrfs_block_group_cache, %struct.btrfs_block_group_cache* %91, i32 0, i32 1
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %94, %struct.inode** %3, align 8
  br label %95

95:                                               ; preds = %90, %49, %34
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @igrab(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @__lookup_free_space_inode(i32, %struct.btrfs_path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_info(%struct.btrfs_fs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
