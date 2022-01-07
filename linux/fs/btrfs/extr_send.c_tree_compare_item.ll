; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tree_compare_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tree_compare_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_path*, %struct.btrfs_path*, i8*)* @tree_compare_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_compare_item(%struct.btrfs_path* %0, %struct.btrfs_path* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.btrfs_path* %0, %struct.btrfs_path** %5, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %19 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @btrfs_item_size_nr(i32 %17, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %25 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %30 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @btrfs_item_size_nr(i32 %28, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %84

39:                                               ; preds = %3
  %40 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %41 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @btrfs_item_ptr_offset(i32 %44, i32 %49)
  store i64 %50, i64* %11, align 8
  %51 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %57 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @btrfs_item_ptr_offset(i32 %55, i32 %60)
  store i64 %61, i64* %12, align 8
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %63 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %11, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @read_extent_buffer(i32 %66, i8* %67, i64 %68, i32 %69)
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %6, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @memcmp_extent_buffer(i32 %75, i8* %76, i64 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %84

83:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %82, %38
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @btrfs_item_size_nr(i32, i32) #1

declare dso_local i64 @btrfs_item_ptr_offset(i32, i32) #1

declare dso_local i32 @read_extent_buffer(i32, i8*, i64, i32) #1

declare dso_local i32 @memcmp_extent_buffer(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
