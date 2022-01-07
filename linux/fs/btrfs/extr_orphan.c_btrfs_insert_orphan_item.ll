; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_orphan.c_btrfs_insert_orphan_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_orphan.c_btrfs_insert_orphan_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }

@BTRFS_ORPHAN_OBJECTID = common dso_local global i32 0, align 4
@BTRFS_ORPHAN_ITEM_KEY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_orphan_item(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @BTRFS_ORPHAN_OBJECTID, align 4
  %12 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @BTRFS_ORPHAN_ITEM_KEY, align 4
  %14 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %17, %struct.btrfs_path** %8, align 8
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %19 = icmp ne %struct.btrfs_path* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %26 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %27 = call i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle* %24, %struct.btrfs_root* %25, %struct.btrfs_path* %26, %struct.btrfs_key* %9, i32 0)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %29 = call i32 @btrfs_free_path(%struct.btrfs_path* %28)
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_insert_empty_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
