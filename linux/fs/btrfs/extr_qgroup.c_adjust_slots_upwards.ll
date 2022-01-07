; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_adjust_slots_upwards.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_adjust_slots_upwards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_path = type { i32*, %struct.extent_buffer**, i32* }
%struct.extent_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_path*, i32)* @adjust_slots_upwards to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjust_slots_upwards(%struct.btrfs_path* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_path*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_buffer*, align 8
  store %struct.btrfs_path* %0, %struct.btrfs_path** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %108

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %85, %13
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %88

18:                                               ; preds = %14
  %19 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %19, i32 0, i32 1
  %21 = load %struct.extent_buffer**, %struct.extent_buffer*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %21, i64 %23
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %24, align 8
  store %struct.extent_buffer* %25, %struct.extent_buffer** %9, align 8
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %27 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %29 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %37 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %18
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %84

49:                                               ; preds = %46, %18
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %83

53:                                               ; preds = %49
  %54 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %56 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @btrfs_tree_unlock_rw(%struct.extent_buffer* %54, i32 %61)
  %63 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %64 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %70 = call i32 @free_extent_buffer(%struct.extent_buffer* %69)
  %71 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %72 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %71, i32 0, i32 1
  %73 = load %struct.extent_buffer**, %struct.extent_buffer*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %73, i64 %75
  store %struct.extent_buffer* null, %struct.extent_buffer** %76, align 8
  %77 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %78 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %53, %49
  br label %85

84:                                               ; preds = %46
  br label %88

85:                                               ; preds = %83
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %14

88:                                               ; preds = %84, %14
  %89 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %90 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %89, i32 0, i32 1
  %91 = load %struct.extent_buffer**, %struct.extent_buffer*** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %91, i64 %93
  %95 = load %struct.extent_buffer*, %struct.extent_buffer** %94, align 8
  store %struct.extent_buffer* %95, %struct.extent_buffer** %9, align 8
  %96 = load %struct.btrfs_path*, %struct.btrfs_path** %4, align 8
  %97 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %104 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %103)
  %105 = icmp sge i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %88
  store i32 1, i32* %3, align 4
  br label %108

107:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %107, %106, %12
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_tree_unlock_rw(%struct.extent_buffer*, i32) #1

declare dso_local i32 @free_extent_buffer(%struct.extent_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
