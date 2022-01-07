; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_destroy_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_destroy_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_ordered_extent = type { i32, i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.btrfs_root* }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"found ordered extent %llu %llu on inode cleanup\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_destroy_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.btrfs_ordered_extent*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %8)
  store %struct.btrfs_fs_info* %9, %struct.btrfs_fs_info** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 6
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = call i32 @hlist_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WARN_ON(i32 %30)
  %32 = load %struct.inode*, %struct.inode** %2, align 8
  %33 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @WARN_ON(i32 %36)
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @WARN_ON(i32 %46)
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @WARN_ON(i32 %56)
  %58 = load %struct.inode*, %struct.inode** %2, align 8
  %59 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @WARN_ON(i32 %61)
  %63 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %64 = icmp ne %struct.btrfs_root* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %1
  br label %98

66:                                               ; preds = %1
  br label %67

67:                                               ; preds = %66, %89
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = call %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode* %68, i32 -1)
  store %struct.btrfs_ordered_extent* %69, %struct.btrfs_ordered_extent** %4, align 8
  %70 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %71 = icmp ne %struct.btrfs_ordered_extent* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %90

73:                                               ; preds = %67
  %74 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %75 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %76 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %79 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @btrfs_err(%struct.btrfs_fs_info* %74, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load %struct.inode*, %struct.inode** %2, align 8
  %83 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %84 = call i32 @btrfs_remove_ordered_extent(%struct.inode* %82, %struct.btrfs_ordered_extent* %83)
  %85 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %86 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %85)
  %87 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %4, align 8
  %88 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %87)
  br label %89

89:                                               ; preds = %73
  br label %67

90:                                               ; preds = %72
  %91 = load %struct.inode*, %struct.inode** %2, align 8
  %92 = call i32 @btrfs_qgroup_check_reserved_leak(%struct.inode* %91)
  %93 = load %struct.inode*, %struct.inode** %2, align 8
  %94 = call i32 @inode_tree_del(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %2, align 8
  %96 = call %struct.TYPE_7__* @BTRFS_I(%struct.inode* %95)
  %97 = call i32 @btrfs_drop_extent_cache(%struct.TYPE_7__* %96, i32 0, i32 -1, i32 0)
  br label %98

98:                                               ; preds = %90, %65
  ret void
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local %struct.TYPE_7__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_first_ordered_extent(%struct.inode*, i32) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32, i32) #1

declare dso_local i32 @btrfs_remove_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @btrfs_qgroup_check_reserved_leak(%struct.inode*) #1

declare dso_local i32 @inode_tree_del(%struct.inode*) #1

declare dso_local i32 @btrfs_drop_extent_cache(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
