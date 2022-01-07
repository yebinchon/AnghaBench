; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_del_qgroup_relation_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_del_qgroup_relation_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i8*, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_QGROUP_RELATION_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, i8*, i8*)* @del_qgroup_relation_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_qgroup_relation_item(%struct.btrfs_trans_handle* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %15, align 8
  store %struct.btrfs_root* %16, %struct.btrfs_root** %9, align 8
  %17 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %17, %struct.btrfs_path** %10, align 8
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %19 = icmp ne %struct.btrfs_path* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %52

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @BTRFS_QGROUP_RELATION_KEY, align 4
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %11, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %33 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %30, %struct.btrfs_root* %31, %struct.btrfs_key* %11, %struct.btrfs_path* %32, i32 -1, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %48

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %48

43:                                               ; preds = %37
  %44 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %45 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %47 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %44, %struct.btrfs_root* %45, %struct.btrfs_path* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %43, %40, %36
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %50 = call i32 @btrfs_free_path(%struct.btrfs_path* %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %20
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
