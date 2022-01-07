; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_update_cowonly_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_update_cowonly_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32, i32, %struct.TYPE_2__*, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { %struct.btrfs_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*)* @update_cowonly_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_cowonly_root(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %5, align 8
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %11, i32 0, i32 3
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  store %struct.btrfs_fs_info* %13, %struct.btrfs_fs_info** %9, align 8
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  store %struct.btrfs_root* %16, %struct.btrfs_root** %10, align 8
  %17 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %17, i32 0, i32 0
  %19 = call i64 @btrfs_root_used(i32* %18)
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %2, %56
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 0
  %23 = call i64 @btrfs_root_bytenr(i32* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %34 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %33, i32 0, i32 0
  %35 = call i64 @btrfs_root_used(i32* %34)
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %60

38:                                               ; preds = %31, %20
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 0
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @btrfs_set_root_node(i32* %40, %struct.TYPE_2__* %43)
  %45 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %10, align 8
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %48 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %47, i32 0, i32 1
  %49 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %50 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %49, i32 0, i32 0
  %51 = call i32 @btrfs_update_root(%struct.btrfs_trans_handle* %45, %struct.btrfs_root* %46, i32* %48, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %38
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %38
  %57 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %58 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %57, i32 0, i32 0
  %59 = call i64 @btrfs_root_used(i32* %58)
  store i64 %59, i64* %8, align 8
  br label %20

60:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @btrfs_root_used(i32*) #1

declare dso_local i64 @btrfs_root_bytenr(i32*) #1

declare dso_local i32 @btrfs_set_root_node(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @btrfs_update_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
