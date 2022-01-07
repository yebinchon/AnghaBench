; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_read_extent_buffer_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_read_extent_buffer_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32, i32, i32, i32, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_key = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_io_tree }

@EXTENT_BUFFER_CORRUPT = common dso_local global i32 0, align 4
@WAIT_COMPLETE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, i32, i32, %struct.btrfs_key*)* @btree_read_extent_buffer_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_read_extent_buffer_pages(%struct.extent_buffer* %0, i32 %1, i32 %2, %struct.btrfs_key* %3) #0 {
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_key*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.extent_io_tree*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.btrfs_key* %3, %struct.btrfs_key** %8, align 8
  %16 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %16, i32 0, i32 4
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %17, align 8
  store %struct.btrfs_fs_info* %18, %struct.btrfs_fs_info** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_2__* @BTRFS_I(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.extent_io_tree* %23, %struct.extent_io_tree** %10, align 8
  br label %24

24:                                               ; preds = %4, %90
  %25 = load i32, i32* @EXTENT_BUFFER_CORRUPT, align 4
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %26, i32 0, i32 3
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %30 = load i32, i32* @WAIT_COMPLETE, align 4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @read_extent_buffer_pages(%struct.extent_buffer* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %57, label %35

35:                                               ; preds = %24
  %36 = load %struct.extent_io_tree*, %struct.extent_io_tree** %10, align 8
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @verify_parent_transid(%struct.extent_io_tree* %36, %struct.extent_buffer* %37, i32 %38, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  br label %56

44:                                               ; preds = %35
  %45 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @btrfs_verify_level_key(%struct.extent_buffer* %45, i32 %46, %struct.btrfs_key* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EUCLEAN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %55

54:                                               ; preds = %44
  br label %91

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56, %24
  %58 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %59 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @btrfs_num_copies(%struct.btrfs_fs_info* %58, i32 %61, i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %91

69:                                               ; preds = %57
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  store i32 1, i32* %11, align 4
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %74 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %82, %76
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %91

90:                                               ; preds = %85
  br label %24

91:                                               ; preds = %89, %68, %54
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @btrfs_repair_eb_io_failure(%struct.extent_buffer* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %97, %94, %91
  %105 = load i32, i32* %12, align 4
  ret i32 %105
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @read_extent_buffer_pages(%struct.extent_buffer*, i32, i32) #1

declare dso_local i64 @verify_parent_transid(%struct.extent_io_tree*, %struct.extent_buffer*, i32, i32) #1

declare dso_local i64 @btrfs_verify_level_key(%struct.extent_buffer*, i32, %struct.btrfs_key*, i32) #1

declare dso_local i32 @btrfs_num_copies(%struct.btrfs_fs_info*, i32, i32) #1

declare dso_local i32 @btrfs_repair_eb_io_failure(%struct.extent_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
