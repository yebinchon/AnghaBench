; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_set_item_key_safe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_set_item_key_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_path = type { i32*, %struct.extent_buffer** }
%struct.extent_buffer = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }
%struct.btrfs_disk_key = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"slot %u key (%llu %u %llu) new key (%llu %u %llu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_set_item_key_safe(%struct.btrfs_fs_info* %0, %struct.btrfs_path* %1, %struct.btrfs_key* %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.btrfs_key*, align 8
  %7 = alloca %struct.btrfs_disk_key, align 4
  %8 = alloca %struct.extent_buffer*, align 8
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store %struct.btrfs_key* %2, %struct.btrfs_key** %6, align 8
  %10 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %11 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %10, i32 0, i32 1
  %12 = load %struct.extent_buffer**, %struct.extent_buffer*** %11, align 8
  %13 = getelementptr inbounds %struct.extent_buffer*, %struct.extent_buffer** %12, i64 0
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %13, align 8
  store %struct.extent_buffer* %14, %struct.extent_buffer** %8, align 8
  %15 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_path, %struct.btrfs_path* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %3
  %23 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sub nsw i32 %24, 1
  %26 = call i32 @btrfs_item_key(%struct.extent_buffer* %23, %struct.btrfs_disk_key* %7, i32 %25)
  %27 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %28 = call i64 @comp_keys(%struct.btrfs_disk_key* %7, %struct.btrfs_key* %27)
  %29 = icmp sge i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %22
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @btrfs_disk_key_objectid(%struct.btrfs_disk_key* %7)
  %37 = call i32 @btrfs_disk_key_type(%struct.btrfs_disk_key* %7)
  %38 = call i32 @btrfs_disk_key_offset(%struct.btrfs_disk_key* %7)
  %39 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %43 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @btrfs_crit(%struct.btrfs_fs_info* %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %50 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %49)
  %51 = call i32 (...) @BUG()
  br label %52

52:                                               ; preds = %33, %22
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %56 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %55)
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %53
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  %63 = call i32 @btrfs_item_key(%struct.extent_buffer* %60, %struct.btrfs_disk_key* %7, i32 %62)
  %64 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %65 = call i64 @comp_keys(%struct.btrfs_disk_key* %7, %struct.btrfs_key* %64)
  %66 = icmp sle i64 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %59
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @btrfs_disk_key_objectid(%struct.btrfs_disk_key* %7)
  %74 = call i32 @btrfs_disk_key_type(%struct.btrfs_disk_key* %7)
  %75 = call i32 @btrfs_disk_key_offset(%struct.btrfs_disk_key* %7)
  %76 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %77 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %80 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %83 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @btrfs_crit(%struct.btrfs_fs_info* %71, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73, i32 %74, i32 %75, i32 %78, i32 %81, i32 %84)
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %87 = call i32 @btrfs_print_leaf(%struct.extent_buffer* %86)
  %88 = call i32 (...) @BUG()
  br label %89

89:                                               ; preds = %70, %59
  br label %90

90:                                               ; preds = %89, %53
  %91 = load %struct.btrfs_key*, %struct.btrfs_key** %6, align 8
  %92 = call i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key* %7, %struct.btrfs_key* %91)
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @btrfs_set_item_key(%struct.extent_buffer* %93, %struct.btrfs_disk_key* %7, i32 %94)
  %96 = load %struct.extent_buffer*, %struct.extent_buffer** %8, align 8
  %97 = call i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer* %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %90
  %101 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %102 = call i32 @fixup_low_keys(%struct.btrfs_path* %101, %struct.btrfs_disk_key* %7, i32 1)
  br label %103

103:                                              ; preds = %100, %90
  ret void
}

declare dso_local i32 @btrfs_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @comp_keys(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_crit(%struct.btrfs_fs_info*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @btrfs_disk_key_objectid(%struct.btrfs_disk_key*) #1

declare dso_local i32 @btrfs_disk_key_type(%struct.btrfs_disk_key*) #1

declare dso_local i32 @btrfs_disk_key_offset(%struct.btrfs_disk_key*) #1

declare dso_local i32 @btrfs_print_leaf(%struct.extent_buffer*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_cpu_key_to_disk(%struct.btrfs_disk_key*, %struct.btrfs_key*) #1

declare dso_local i32 @btrfs_set_item_key(%struct.extent_buffer*, %struct.btrfs_disk_key*, i32) #1

declare dso_local i32 @btrfs_mark_buffer_dirty(%struct.extent_buffer*) #1

declare dso_local i32 @fixup_low_keys(%struct.btrfs_path*, %struct.btrfs_disk_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
