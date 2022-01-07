; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_insert_empty_items.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_insert_empty_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32* }
%struct.btrfs_key = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_insert_empty_items(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, %struct.btrfs_key* %3, i64* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_root*, align 8
  %10 = alloca %struct.btrfs_path*, align 8
  %11 = alloca %struct.btrfs_key*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %9, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %10, align 8
  store %struct.btrfs_key* %3, %struct.btrfs_key** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %31, %6
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i64*, i64** %12, align 8
  %25 = load i32, i32* %16, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %18, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %18, align 8
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  br label %19

34:                                               ; preds = %19
  %35 = load i64, i64* %18, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = add i64 %35, %38
  store i64 %39, i64* %17, align 8
  %40 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %42 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %44 = load i64, i64* %17, align 8
  %45 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %40, %struct.btrfs_root* %41, %struct.btrfs_key* %42, %struct.btrfs_path* %43, i64 %44, i32 1)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load i32, i32* @EEXIST, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %74

51:                                               ; preds = %34
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %74

56:                                               ; preds = %51
  %57 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %58 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @BUG_ON(i32 %64)
  %66 = load %struct.btrfs_root*, %struct.btrfs_root** %9, align 8
  %67 = load %struct.btrfs_path*, %struct.btrfs_path** %10, align 8
  %68 = load %struct.btrfs_key*, %struct.btrfs_key** %11, align 8
  %69 = load i64*, i64** %12, align 8
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @setup_items_for_insert(%struct.btrfs_root* %66, %struct.btrfs_path* %67, %struct.btrfs_key* %68, i64* %69, i64 %70, i64 %71, i32 %72)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %56, %54, %48
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @setup_items_for_insert(%struct.btrfs_root*, %struct.btrfs_path*, %struct.btrfs_key*, i64*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
