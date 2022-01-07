; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_dirty_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file.c_btrfs_dirty_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.extent_state = type { i32 }
%struct.btrfs_fs_info = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@EXTENT_DEFRAG = common dso_local global i32 0, align 4
@BTRFS_INODE_PREALLOC = common dso_local global i32 0, align 4
@EXTENT_DELALLOC_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_dirty_pages(%struct.inode* %0, %struct.page** %1, i64 %2, i64 %3, i64 %4, %struct.extent_state** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.extent_state**, align 8
  %14 = alloca %struct.btrfs_fs_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.page** %1, %struct.page*** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.extent_state** %5, %struct.extent_state*** %13, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %26)
  store %struct.btrfs_fs_info* %27, %struct.btrfs_fs_info** %14, align 8
  store i32 0, i32* %15, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %28, %29
  store i64 %30, i64* %20, align 8
  %31 = load %struct.inode*, %struct.inode** %8, align 8
  %32 = call i64 @i_size_read(%struct.inode* %31)
  store i64 %32, i64* %21, align 8
  store i32 0, i32* %22, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %35 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub i64 %36, 1
  %38 = xor i64 %37, -1
  %39 = and i64 %33, %38
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %40, %41
  %43 = load i64, i64* %18, align 8
  %44 = sub i64 %42, %43
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %14, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @round_up(i64 %44, i64 %47)
  store i64 %48, i64* %17, align 8
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %17, align 8
  %51 = add i64 %49, %50
  %52 = sub i64 %51, 1
  store i64 %52, i64* %19, align 8
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i64, i64* %18, align 8
  %57 = load i64, i64* %19, align 8
  %58 = load i32, i32* @EXTENT_DELALLOC, align 4
  %59 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @EXTENT_DEFRAG, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.extent_state**, %struct.extent_state*** %13, align 8
  %64 = call i32 @clear_extent_bit(i32* %55, i64 %56, i64 %57, i32 %62, i32 0, i32 0, %struct.extent_state** %63)
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %65)
  %67 = call i32 @btrfs_is_free_space_inode(%struct.TYPE_4__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %98, label %69

69:                                               ; preds = %6
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %21, align 8
  %72 = icmp uge i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @BTRFS_INODE_PREALLOC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %73
  %82 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %83 = load i32, i32* %22, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %22, align 4
  br label %97

85:                                               ; preds = %73, %69
  %86 = load %struct.inode*, %struct.inode** %8, align 8
  %87 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %86)
  %88 = load i64, i64* %18, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load %struct.extent_state**, %struct.extent_state*** %13, align 8
  %91 = call i32 @btrfs_find_new_delalloc_bytes(%struct.TYPE_4__* %87, i64 %88, i64 %89, %struct.extent_state** %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %7, align 4
  br label %139

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %81
  br label %98

98:                                               ; preds = %97, %6
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = load i64, i64* %18, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i32, i32* %22, align 4
  %103 = load %struct.extent_state**, %struct.extent_state*** %13, align 8
  %104 = call i32 @btrfs_set_extent_delalloc(%struct.inode* %99, i64 %100, i64 %101, i32 %102, %struct.extent_state** %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %7, align 4
  br label %139

109:                                              ; preds = %98
  store i32 0, i32* %16, align 4
  br label %110

110:                                              ; preds = %127, %109
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %10, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.page**, %struct.page*** %9, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.page*, %struct.page** %116, i64 %118
  %120 = load %struct.page*, %struct.page** %119, align 8
  store %struct.page* %120, %struct.page** %23, align 8
  %121 = load %struct.page*, %struct.page** %23, align 8
  %122 = call i32 @SetPageUptodate(%struct.page* %121)
  %123 = load %struct.page*, %struct.page** %23, align 8
  %124 = call i32 @ClearPageChecked(%struct.page* %123)
  %125 = load %struct.page*, %struct.page** %23, align 8
  %126 = call i32 @set_page_dirty(%struct.page* %125)
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  br label %110

130:                                              ; preds = %110
  %131 = load i64, i64* %20, align 8
  %132 = load i64, i64* %21, align 8
  %133 = icmp ugt i64 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load %struct.inode*, %struct.inode** %8, align 8
  %136 = load i64, i64* %20, align 8
  %137 = call i32 @i_size_write(%struct.inode* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %130
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %138, %107, %94
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @round_up(i64, i64) #1

declare dso_local i32 @clear_extent_bit(i32*, i64, i64, i32, i32, i32, %struct.extent_state**) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_is_free_space_inode(%struct.TYPE_4__*) #1

declare dso_local i32 @btrfs_find_new_delalloc_bytes(%struct.TYPE_4__*, i64, i64, %struct.extent_state**) #1

declare dso_local i32 @btrfs_set_extent_delalloc(%struct.inode*, i64, i64, i32, %struct.extent_state**) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
