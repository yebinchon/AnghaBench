; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_check_reserved_leak.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_check_reserved_leak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_changeset = type { i32, i32 }
%struct.ulist_node = type { i32, i32 }
%struct.ulist_iterator = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@EXTENT_QGROUP_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"leaking qgroup reserved space, ino: %lu, start: %llu, end: %llu\00", align 1
@BTRFS_QGROUP_RSV_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_qgroup_check_reserved_leak(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.extent_changeset, align 4
  %4 = alloca %struct.ulist_node*, align 8
  %5 = alloca %struct.ulist_iterator, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = call i32 @extent_changeset_init(%struct.extent_changeset* %3)
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* @EXTENT_QGROUP_RESERVED, align 4
  %12 = call i32 @clear_record_extent_bits(i32* %10, i32 0, i32 -1, i32 %11, %struct.extent_changeset* %3)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %3, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %1
  %22 = call i32 @ULIST_ITER_INIT(%struct.ulist_iterator* %5)
  br label %23

23:                                               ; preds = %27, %21
  %24 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %3, i32 0, i32 1
  %25 = call %struct.ulist_node* @ulist_next(i32* %24, %struct.ulist_iterator* %5)
  store %struct.ulist_node* %25, %struct.ulist_node** %4, align 8
  %26 = icmp ne %struct.ulist_node* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ulist_node*, %struct.ulist_node** %4, align 8
  %38 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ulist_node*, %struct.ulist_node** %4, align 8
  %41 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @btrfs_warn(i32 %33, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %42)
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.inode*, %struct.inode** %2, align 8
  %52 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %51)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %3, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BTRFS_QGROUP_RSV_DATA, align 4
  %61 = call i32 @btrfs_qgroup_free_refroot(i32 %50, i32 %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %44, %1
  %63 = call i32 @extent_changeset_release(%struct.extent_changeset* %3)
  ret void
}

declare dso_local i32 @extent_changeset_init(%struct.extent_changeset*) #1

declare dso_local i32 @clear_record_extent_bits(i32*, i32, i32, i32, %struct.extent_changeset*) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ULIST_ITER_INIT(%struct.ulist_iterator*) #1

declare dso_local %struct.ulist_node* @ulist_next(i32*, %struct.ulist_iterator*) #1

declare dso_local i32 @btrfs_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @btrfs_qgroup_free_refroot(i32, i32, i32, i32) #1

declare dso_local i32 @extent_changeset_release(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
