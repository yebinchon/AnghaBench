; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_free_reserved_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_qgroup_free_reserved_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_changeset = type { i64, i32 }
%struct.btrfs_root = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ulist_node = type { i64, i64 }
%struct.ulist_iterator = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.btrfs_root* }

@EXTENT_QGROUP_RESERVED = common dso_local global i32 0, align 4
@BTRFS_QGROUP_RSV_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.extent_changeset*, i64, i64)* @qgroup_free_reserved_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qgroup_free_reserved_data(%struct.inode* %0, %struct.extent_changeset* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.extent_changeset*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.ulist_node*, align 8
  %11 = alloca %struct.ulist_iterator, align 4
  %12 = alloca %struct.extent_changeset, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.extent_changeset* %1, %struct.extent_changeset** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = load %struct.inode*, %struct.inode** %5, align 8
  %20 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %21, align 8
  store %struct.btrfs_root* %22, %struct.btrfs_root** %9, align 8
  store i32 0, i32* %13, align 4
  %23 = call i32 @extent_changeset_init(%struct.extent_changeset* %12)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %28 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @round_up(i64 %26, i32 %31)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @round_down(i64 %33, i32 %38)
  store i64 %39, i64* %7, align 8
  %40 = call i32 @ULIST_ITER_INIT(%struct.ulist_iterator* %11)
  br label %41

41:                                               ; preds = %95, %68, %4
  %42 = load %struct.extent_changeset*, %struct.extent_changeset** %6, align 8
  %43 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %42, i32 0, i32 1
  %44 = call %struct.ulist_node* @ulist_next(i32* %43, %struct.ulist_iterator* %11)
  store %struct.ulist_node* %44, %struct.ulist_node** %10, align 8
  %45 = icmp ne %struct.ulist_node* %44, null
  br i1 %45, label %46, label %102

46:                                               ; preds = %41
  %47 = load %struct.ulist_node*, %struct.ulist_node** %10, align 8
  %48 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %15, align 8
  %50 = load %struct.ulist_node*, %struct.ulist_node** %10, align 8
  %51 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %15, align 8
  %54 = sub nsw i64 %52, %53
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %16, align 8
  %56 = call i32 @extent_changeset_release(%struct.extent_changeset* %12)
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = add nsw i64 %58, %59
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %46
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %16, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* %7, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %46
  br label %41

69:                                               ; preds = %62
  %70 = load i64, i64* %15, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @max(i64 %70, i64 %71)
  store i64 %72, i64* %17, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %16, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @min(i64 %75, i64 %78)
  %80 = load i64, i64* %17, align 8
  %81 = sub nsw i64 %79, %80
  store i64 %81, i64* %18, align 8
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %17, align 8
  %87 = load i64, i64* %18, align 8
  %88 = add nsw i64 %86, %87
  %89 = sub nsw i64 %88, 1
  %90 = load i32, i32* @EXTENT_QGROUP_RESERVED, align 4
  %91 = call i32 @clear_record_extent_bits(i32* %84, i64 %85, i64 %89, i32 %90, %struct.extent_changeset* %12)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %69
  br label %114

95:                                               ; preds = %69
  %96 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %12, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %13, align 4
  br label %41

102:                                              ; preds = %41
  %103 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %104 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %103, i32 0, i32 1
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %107 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @BTRFS_QGROUP_RSV_DATA, align 4
  %112 = call i32 @btrfs_qgroup_free_refroot(%struct.TYPE_5__* %105, i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %102, %94
  %115 = call i32 @extent_changeset_release(%struct.extent_changeset* %12)
  %116 = load i32, i32* %14, align 4
  ret i32 %116
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @extent_changeset_init(%struct.extent_changeset*) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i64 @round_down(i64, i32) #1

declare dso_local i32 @ULIST_ITER_INIT(%struct.ulist_iterator*) #1

declare dso_local %struct.ulist_node* @ulist_next(i32*, %struct.ulist_iterator*) #1

declare dso_local i32 @extent_changeset_release(%struct.extent_changeset*) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @clear_record_extent_bits(i32*, i64, i64, i32, %struct.extent_changeset*) #1

declare dso_local i32 @btrfs_qgroup_free_refroot(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
