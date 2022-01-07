; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_del_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_root-tree.c_btrfs_del_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.btrfs_path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_del_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_key*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.btrfs_path*, align 8
  %8 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_key* %1, %struct.btrfs_key** %5, align 8
  %9 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %10 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  store %struct.btrfs_root* %13, %struct.btrfs_root** %6, align 8
  %14 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %14, %struct.btrfs_path** %7, align 8
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %16 = icmp ne %struct.btrfs_path* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %23 = load %struct.btrfs_key*, %struct.btrfs_key** %5, align 8
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %25 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %21, %struct.btrfs_root* %22, %struct.btrfs_key* %23, %struct.btrfs_path* %24, i32 -1, i32 1)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %38

29:                                               ; preds = %20
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %35 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %37 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %34, %struct.btrfs_root* %35, %struct.btrfs_path* %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %29, %28
  %39 = load %struct.btrfs_path*, %struct.btrfs_path** %7, align 8
  %40 = call i32 @btrfs_free_path(%struct.btrfs_path* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
