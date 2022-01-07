; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_reserve_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_btrfs_qgroup_reserve_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_changeset = type { i64, i32 }
%struct.btrfs_root = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ulist_node = type { i32, i32 }
%struct.ulist_iterator = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.btrfs_root* }

@BTRFS_FS_QUOTA_ENABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXTENT_QGROUP_RESERVED = common dso_local global i32 0, align 4
@QGROUP_RESERVE = common dso_local global i32 0, align 4
@BTRFS_QGROUP_RSV_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_qgroup_reserve_data(%struct.inode* %0, %struct.extent_changeset** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.extent_changeset**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  %11 = alloca %struct.ulist_node*, align 8
  %12 = alloca %struct.ulist_iterator, align 4
  %13 = alloca %struct.extent_changeset*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.extent_changeset** %1, %struct.extent_changeset*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load %struct.btrfs_root*, %struct.btrfs_root** %19, align 8
  store %struct.btrfs_root* %20, %struct.btrfs_root** %10, align 8
  %21 = load i32, i32* @BTRFS_FS_QUOTA_ENABLED, align 4
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %23 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @test_bit(i32 %21, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @is_fstree(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %28, %4
  store i32 0, i32* %5, align 4
  br label %137

39:                                               ; preds = %35
  %40 = load %struct.extent_changeset**, %struct.extent_changeset*** %7, align 8
  %41 = icmp ne %struct.extent_changeset** %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @WARN_ON(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %137

49:                                               ; preds = %39
  %50 = load %struct.extent_changeset**, %struct.extent_changeset*** %7, align 8
  %51 = load %struct.extent_changeset*, %struct.extent_changeset** %50, align 8
  %52 = icmp ne %struct.extent_changeset* %51, null
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = call %struct.extent_changeset* (...) @extent_changeset_alloc()
  %55 = load %struct.extent_changeset**, %struct.extent_changeset*** %7, align 8
  store %struct.extent_changeset* %54, %struct.extent_changeset** %55, align 8
  %56 = load %struct.extent_changeset**, %struct.extent_changeset*** %7, align 8
  %57 = load %struct.extent_changeset*, %struct.extent_changeset** %56, align 8
  %58 = icmp ne %struct.extent_changeset* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %137

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.extent_changeset**, %struct.extent_changeset*** %7, align 8
  %65 = load %struct.extent_changeset*, %struct.extent_changeset** %64, align 8
  store %struct.extent_changeset* %65, %struct.extent_changeset** %13, align 8
  %66 = load %struct.extent_changeset*, %struct.extent_changeset** %13, align 8
  %67 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %14, align 8
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %73, %74
  %76 = sub nsw i64 %75, 1
  %77 = load i32, i32* @EXTENT_QGROUP_RESERVED, align 4
  %78 = load %struct.extent_changeset*, %struct.extent_changeset** %13, align 8
  %79 = call i32 @set_record_extent_bits(i32* %71, i64 %72, i64 %76, i32 %77, %struct.extent_changeset* %78)
  store i32 %79, i32* %16, align 4
  %80 = load %struct.extent_changeset*, %struct.extent_changeset** %13, align 8
  %81 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %14, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %15, align 8
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %15, align 8
  %89 = load i32, i32* @QGROUP_RESERVE, align 4
  %90 = call i32 @trace_btrfs_qgroup_reserve_data(%struct.inode* %85, i64 %86, i64 %87, i64 %88, i32 %89)
  %91 = load i32, i32* %16, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %63
  br label %104

94:                                               ; preds = %63
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i32, i32* @BTRFS_QGROUP_RSV_DATA, align 4
  %98 = call i32 @qgroup_reserve(%struct.btrfs_root* %95, i64 %96, i32 1, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %104

102:                                              ; preds = %94
  %103 = load i32, i32* %16, align 4
  store i32 %103, i32* %5, align 4
  br label %137

104:                                              ; preds = %101, %93
  %105 = call i32 @ULIST_ITER_INIT(%struct.ulist_iterator* %12)
  br label %106

106:                                              ; preds = %111, %104
  %107 = load %struct.extent_changeset*, %struct.extent_changeset** %13, align 8
  %108 = getelementptr inbounds %struct.extent_changeset, %struct.extent_changeset* %107, i32 0, i32 1
  %109 = call %struct.ulist_node* @ulist_next(i32* %108, %struct.ulist_iterator* %12)
  store %struct.ulist_node* %109, %struct.ulist_node** %11, align 8
  %110 = icmp ne %struct.ulist_node* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %106
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = call %struct.TYPE_6__* @BTRFS_I(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.ulist_node*, %struct.ulist_node** %11, align 8
  %116 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ulist_node*, %struct.ulist_node** %11, align 8
  %119 = getelementptr inbounds %struct.ulist_node, %struct.ulist_node* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @EXTENT_QGROUP_RESERVED, align 4
  %122 = call i32 @clear_extent_bit(i32* %114, i32 %117, i32 %120, i32 %121, i32 0, i32 0, i32* null)
  br label %106

123:                                              ; preds = %106
  %124 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %125 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %124, i32 0, i32 1
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %128 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i32, i32* @BTRFS_QGROUP_RSV_DATA, align 4
  %133 = call i32 @btrfs_qgroup_free_refroot(%struct.TYPE_5__* %126, i32 %130, i64 %131, i32 %132)
  %134 = load %struct.extent_changeset*, %struct.extent_changeset** %13, align 8
  %135 = call i32 @extent_changeset_release(%struct.extent_changeset* %134)
  %136 = load i32, i32* %16, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %123, %102, %59, %46, %38
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @is_fstree(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.extent_changeset* @extent_changeset_alloc(...) #1

declare dso_local i32 @set_record_extent_bits(i32*, i64, i64, i32, %struct.extent_changeset*) #1

declare dso_local i32 @trace_btrfs_qgroup_reserve_data(%struct.inode*, i64, i64, i64, i32) #1

declare dso_local i32 @qgroup_reserve(%struct.btrfs_root*, i64, i32, i32) #1

declare dso_local i32 @ULIST_ITER_INIT(%struct.ulist_iterator*) #1

declare dso_local %struct.ulist_node* @ulist_next(i32*, %struct.ulist_iterator*) #1

declare dso_local i32 @clear_extent_bit(i32*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @btrfs_qgroup_free_refroot(%struct.TYPE_5__*, i32, i64, i32) #1

declare dso_local i32 @extent_changeset_release(%struct.extent_changeset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
