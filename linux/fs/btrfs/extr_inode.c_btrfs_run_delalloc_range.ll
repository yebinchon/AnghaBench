; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_run_delalloc_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_run_delalloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.writeback_control = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@BTRFS_INODE_PREALLOC = common dso_local global i32 0, align 4
@BTRFS_INODE_HAS_ASYNC_EXTENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_run_delalloc_range(%struct.inode* %0, %struct.page* %1, i64 %2, i64 %3, i32* %4, i64* %5, %struct.writeback_control* %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.writeback_control*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.writeback_control* %6, %struct.writeback_control** %14, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @need_force_cow(%struct.inode* %18, i64 %19, i64 %20)
  store i32 %21, i32* %16, align 4
  %22 = load %struct.writeback_control*, %struct.writeback_control** %14, align 8
  %23 = call i32 @wbc_to_write_flags(%struct.writeback_control* %22)
  store i32 %23, i32* %17, align 4
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %7
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i64*, i64** %13, align 8
  %41 = call i32 @run_delalloc_nocow(%struct.inode* %35, %struct.page* %36, i64 %37, i64 %38, i32* %39, i32 1, i64* %40)
  store i32 %41, i32* %15, align 4
  br label %95

42:                                               ; preds = %31, %7
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BTRFS_INODE_PREALLOC, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load %struct.page*, %struct.page** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i64*, i64** %13, align 8
  %60 = call i32 @run_delalloc_nocow(%struct.inode* %54, %struct.page* %55, i64 %56, i64 %57, i32* %58, i32 0, i64* %59)
  store i32 %60, i32* %15, align 4
  br label %94

61:                                               ; preds = %50, %42
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = call i32 @inode_can_compress(%struct.inode* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @inode_need_compress(%struct.inode* %66, i64 %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %65, %61
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = load %struct.page*, %struct.page** %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i64*, i64** %13, align 8
  %78 = call i32 @cow_file_range(%struct.inode* %72, %struct.page* %73, i64 %74, i64 %75, i32* %76, i64* %77, i32 1)
  store i32 %78, i32* %15, align 4
  br label %93

79:                                               ; preds = %65
  %80 = load i32, i32* @BTRFS_INODE_HAS_ASYNC_EXTENT, align 4
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = call i32 @set_bit(i32 %80, i32* %83)
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = load %struct.page*, %struct.page** %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = load i64*, i64** %13, align 8
  %91 = load i32, i32* %17, align 4
  %92 = call i32 @cow_file_range_async(%struct.inode* %85, %struct.page* %86, i64 %87, i64 %88, i32* %89, i64* %90, i32 %91)
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %79, %71
  br label %94

94:                                               ; preds = %93, %53
  br label %95

95:                                               ; preds = %94, %34
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = load %struct.page*, %struct.page** %9, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %10, align 8
  %104 = sub nsw i64 %102, %103
  %105 = add nsw i64 %104, 1
  %106 = call i32 @btrfs_cleanup_ordered_extents(%struct.inode* %99, %struct.page* %100, i64 %101, i64 %105)
  br label %107

107:                                              ; preds = %98, %95
  %108 = load i32, i32* %15, align 4
  ret i32 %108
}

declare dso_local i32 @need_force_cow(%struct.inode*, i64, i64) #1

declare dso_local i32 @wbc_to_write_flags(%struct.writeback_control*) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @run_delalloc_nocow(%struct.inode*, %struct.page*, i64, i64, i32*, i32, i64*) #1

declare dso_local i32 @inode_can_compress(%struct.inode*) #1

declare dso_local i32 @inode_need_compress(%struct.inode*, i64, i64) #1

declare dso_local i32 @cow_file_range(%struct.inode*, %struct.page*, i64, i64, i32*, i64*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cow_file_range_async(%struct.inode*, %struct.page*, i64, i64, i32*, i64*, i32) #1

declare dso_local i32 @btrfs_cleanup_ordered_extents(%struct.inode*, %struct.page*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
