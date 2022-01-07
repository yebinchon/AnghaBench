; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_alloc_reserved_file_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent-tree.c_btrfs_alloc_reserved_file_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.btrfs_key = type { i32, i32 }
%struct.btrfs_ref = type { i32 }

@BTRFS_TREE_LOG_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_ADD_DELAYED_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_alloc_reserved_file_extent(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2, i32 %3, i32 %4, %struct.btrfs_key* %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_key*, align 8
  %13 = alloca %struct.btrfs_ref, align 4
  %14 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.btrfs_key* %5, %struct.btrfs_key** %12, align 8
  %15 = bitcast %struct.btrfs_ref* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BTRFS_TREE_LOG_OBJECTID, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load i32, i32* @BTRFS_ADD_DELAYED_EXTENT, align 4
  %25 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.btrfs_key*, %struct.btrfs_key** %12, align 8
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @btrfs_init_generic_ref(%struct.btrfs_ref* %13, i32 %24, i32 %27, i32 %30, i32 0)
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %33 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @btrfs_init_data_ref(%struct.btrfs_ref* %13, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @btrfs_ref_tree_mod(i32 %41, %struct.btrfs_ref* %13)
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @btrfs_add_delayed_data_ref(%struct.btrfs_trans_handle* %43, %struct.btrfs_ref* %13, i32 %44, i32* null, i32* null)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @btrfs_init_generic_ref(%struct.btrfs_ref*, i32, i32, i32, i32) #2

declare dso_local i32 @btrfs_init_data_ref(%struct.btrfs_ref*, i32, i32, i32) #2

declare dso_local i32 @btrfs_ref_tree_mod(i32, %struct.btrfs_ref*) #2

declare dso_local i32 @btrfs_add_delayed_data_ref(%struct.btrfs_trans_handle*, %struct.btrfs_ref*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
