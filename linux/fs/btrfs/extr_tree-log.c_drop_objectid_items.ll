; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_drop_objectid_items.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_drop_objectid_items.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32*, i32* }
%struct.btrfs_key = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i64, i32)* @drop_objectid_items to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drop_objectid_items(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_key, align 8
  %13 = alloca %struct.btrfs_key, align 8
  %14 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %6, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %7, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* %9, align 8
  %16 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i64 -1, i64* %19, align 8
  br label %20

20:                                               ; preds = %5, %95
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %22 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %23 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %24 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %21, %struct.btrfs_root* %22, %struct.btrfs_key* %12, %struct.btrfs_path* %23, i32 -1, i32 1)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %98

32:                                               ; preds = %20
  %33 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %34 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %98

40:                                               ; preds = %32
  %41 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %42 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %48 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %53 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @btrfs_item_key_to_cpu(i32 %51, %struct.btrfs_key* %13, i32 %56)
  %58 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %40
  br label %98

63:                                               ; preds = %40
  %64 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %13, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %67 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @btrfs_bin_search(i32 %70, %struct.btrfs_key* %13, i32 0, i32* %14)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %98

75:                                               ; preds = %63
  %76 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %77 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %78 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %81 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = add nsw i32 %86, 1
  %88 = call i32 @btrfs_del_items(%struct.btrfs_trans_handle* %76, %struct.btrfs_root* %77, %struct.btrfs_path* %78, i32 %79, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91, %75
  br label %98

95:                                               ; preds = %91
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %97 = call i32 @btrfs_release_path(%struct.btrfs_path* %96)
  br label %20

98:                                               ; preds = %94, %74, %62, %39, %31
  %99 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %100 = call i32 @btrfs_release_path(%struct.btrfs_path* %99)
  %101 = load i32, i32* %11, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_item_key_to_cpu(i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_bin_search(i32, %struct.btrfs_key*, i32, i32*) #1

declare dso_local i32 @btrfs_del_items(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
