; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_csum_dirty_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_csum_dirty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i64 }
%struct.extent_buffer = type { i32, %struct.page** }

@BTRFS_CSUM_SIZE = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@BTRFS_FSID_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"block=%llu write time tree block corruption detected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.page*)* @csum_dirty_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csum_dirty_buffer(%struct.btrfs_fs_info* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.extent_buffer*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i64 @page_offset(%struct.page* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @BTRFS_CSUM_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @btrfs_super_csum_size(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.page*, %struct.page** %5, align 8
  %25 = getelementptr inbounds %struct.page, %struct.page* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.extent_buffer*
  store %struct.extent_buffer* %27, %struct.extent_buffer** %11, align 8
  %28 = load %struct.page*, %struct.page** %5, align 8
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %30 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %29, i32 0, i32 1
  %31 = load %struct.page**, %struct.page*** %30, align 8
  %32 = getelementptr inbounds %struct.page*, %struct.page** %31, i64 0
  %33 = load %struct.page*, %struct.page** %32, align 8
  %34 = icmp ne %struct.page* %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

36:                                               ; preds = %2
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %38 = call i64 @btrfs_header_bytenr(%struct.extent_buffer* %37)
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EUCLEAN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

48:                                               ; preds = %36
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @PageUptodate(%struct.page* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EUCLEAN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

59:                                               ; preds = %48
  %60 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %61 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %62 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (...) @btrfs_header_fsid()
  %67 = load i32, i32* @BTRFS_FSID_SIZE, align 4
  %68 = call i64 @memcmp_extent_buffer(%struct.extent_buffer* %60, i32 %65, i32 %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @ASSERT(i32 %70)
  %72 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %73 = call i64 @csum_tree_block(%struct.extent_buffer* %72, i32* %19)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

78:                                               ; preds = %59
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %80 = call i64 @btrfs_header_level(%struct.extent_buffer* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %84 = call i32 @btrfs_check_node(%struct.extent_buffer* %83)
  store i32 %84, i32* %12, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %87 = call i32 @btrfs_check_leaf_full(%struct.extent_buffer* %86)
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %93 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %94 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @btrfs_err(%struct.btrfs_fs_info* %92, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load %struct.extent_buffer*, %struct.extent_buffer** %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @write_extent_buffer(%struct.extent_buffer* %99, i32* %19, i32 0, i32 %100)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %98, %91, %75, %56, %45, %35
  %103 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @page_offset(%struct.page*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @btrfs_super_csum_size(i32) #1

declare dso_local i64 @btrfs_header_bytenr(%struct.extent_buffer*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @memcmp_extent_buffer(%struct.extent_buffer*, i32, i32, i32) #1

declare dso_local i32 @btrfs_header_fsid(...) #1

declare dso_local i64 @csum_tree_block(%struct.extent_buffer*, i32*) #1

declare dso_local i64 @btrfs_header_level(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_check_node(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_check_leaf_full(%struct.extent_buffer*) #1

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32) #1

declare dso_local i32 @write_extent_buffer(%struct.extent_buffer*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
