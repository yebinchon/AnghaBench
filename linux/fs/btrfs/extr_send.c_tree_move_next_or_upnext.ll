; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tree_move_next_or_upnext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tree_move_next_or_upnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32*, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_path*, i32*, i32)* @tree_move_next_or_upnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_move_next_or_upnext(%struct.btrfs_path* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_path* %0, %struct.btrfs_path** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %10, i32 0, i32 1
  %12 = load i32**, i32*** %11, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %12, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @btrfs_header_nritems(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %20 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %45, %3
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %30 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %90

39:                                               ; preds = %28
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %92

45:                                               ; preds = %39
  %46 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %47 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  store i32 0, i32* %52, align 4
  %53 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %54 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @free_extent_buffer(i32* %60)
  %62 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %63 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %62, i32 0, i32 1
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %64, i64 %67
  store i32* null, i32** %68, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %73 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %82 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %83, i64 %86
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @btrfs_header_nritems(i32* %88)
  store i32 %89, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %28

90:                                               ; preds = %28
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %44
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @btrfs_header_nritems(i32*) #1

declare dso_local i32 @free_extent_buffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
