; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_remove_extent_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_qgroup-tests.c_remove_extent_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_key = type { i8*, i32, i8* }
%struct.btrfs_path = type { i32 }

@BTRFS_EXTENT_ITEM_KEY = common dso_local global i32 0, align 4
@TEST_ALLOC_ROOT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"didn't find our key %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i8*, i8*)* @remove_extent_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_extent_item(%struct.btrfs_root* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.btrfs_trans_handle, align 4
  %9 = alloca %struct.btrfs_key, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32 @btrfs_init_dummy_trans(%struct.btrfs_trans_handle* %8, i32* null)
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i8* %13, i8** %14, align 8
  %15 = load i32, i32* @BTRFS_EXTENT_ITEM_KEY, align 4
  %16 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i8* %17, i8** %18, align 8
  %19 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %19, %struct.btrfs_path** %10, align 8
  %20 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %21 = icmp ne %struct.btrfs_path* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @TEST_ALLOC_ROOT, align 4
  %24 = call i32 @test_std_err(i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %31 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %32 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %8, %struct.btrfs_root* %30, %struct.btrfs_key* %9, %struct.btrfs_path* %31, i32 -1, i32 1)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @test_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %39 = call i32 @btrfs_free_path(%struct.btrfs_path* %38)
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %4, align 4
  br label %47

41:                                               ; preds = %27
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %44 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %8, %struct.btrfs_root* %42, %struct.btrfs_path* %43)
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %46 = call i32 @btrfs_free_path(%struct.btrfs_path* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %41, %35, %22
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @btrfs_init_dummy_trans(%struct.btrfs_trans_handle*, i32*) #1

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @test_std_err(i32) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @test_err(i8*, i32) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
