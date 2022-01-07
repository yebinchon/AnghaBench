; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_cow_file_range_async.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_cow_file_range_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.btrfs_fs_info = type { i32, i32 }
%struct.async_cow = type { i32, %struct.async_chunk* }
%struct.async_chunk = type { i32, i32, i32, i32, i32, %struct.page*, %struct.inode*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@SZ_512K = common dso_local global i32 0, align 4
@BTRFS_INODE_NOCOMPRESS = common dso_local global i32 0, align 4
@FORCE_COMPRESS = common dso_local global i32 0, align 4
@chunks = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@EXTENT_DELALLOC = common dso_local global i32 0, align 4
@EXTENT_DELALLOC_NEW = common dso_local global i32 0, align 4
@EXTENT_DEFRAG = common dso_local global i32 0, align 4
@EXTENT_DO_ACCOUNTING = common dso_local global i32 0, align 4
@PAGE_UNLOCK = common dso_local global i64 0, align 8
@PAGE_CLEAR_DIRTY = common dso_local global i64 0, align 8
@PAGE_SET_WRITEBACK = common dso_local global i64 0, align 8
@PAGE_END_WRITEBACK = common dso_local global i64 0, align 8
@PAGE_SET_ERROR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@btrfs_delalloc_helper = common dso_local global i32 0, align 4
@async_cow_start = common dso_local global i32 0, align 4
@async_cow_submit = common dso_local global i32 0, align 4
@async_cow_free = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.page*, i32, i32, i32*, i64*, i32)* @cow_file_range_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cow_file_range_async(%struct.inode* %0, %struct.page* %1, i32 %2, i32 %3, i32* %4, i64* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.btrfs_fs_info*, align 8
  %17 = alloca %struct.async_cow*, align 8
  %18 = alloca %struct.async_chunk*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.page* %1, %struct.page** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32 %6, i32* %15, align 4
  %27 = load %struct.inode*, %struct.inode** %9, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %29)
  store %struct.btrfs_fs_info* %30, %struct.btrfs_fs_info** %16, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* @SZ_512K, align 4
  %35 = call i8* @DIV_ROUND_UP(i32 %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %21, align 4
  %37 = load %struct.inode*, %struct.inode** %9, align 8
  %38 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @unlock_extent(i32* %39, i32 %40, i32 %41)
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = call %struct.TYPE_2__* @BTRFS_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %7
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %52 = load i32, i32* @FORCE_COMPRESS, align 4
  %53 = call i32 @btrfs_test_opt(%struct.btrfs_fs_info* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 1, i32* %21, align 4
  store i32 0, i32* %23, align 4
  br label %57

56:                                               ; preds = %50, %7
  store i32 1, i32* %23, align 4
  br label %57

57:                                               ; preds = %56, %55
  %58 = call i32 (...) @memalloc_nofs_save()
  store i32 %58, i32* %24, align 4
  %59 = load %struct.async_cow*, %struct.async_cow** %17, align 8
  %60 = load i32, i32* @chunks, align 4
  %61 = load i32, i32* %21, align 4
  %62 = call i32 @struct_size(%struct.async_cow* %59, i32 %60, i32 %61)
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call %struct.async_cow* @kvmalloc(i32 %62, i32 %63)
  store %struct.async_cow* %64, %struct.async_cow** %17, align 8
  %65 = load i32, i32* %24, align 4
  %66 = call i32 @memalloc_nofs_restore(i32 %65)
  %67 = load %struct.async_cow*, %struct.async_cow** %17, align 8
  %68 = icmp ne %struct.async_cow* %67, null
  br i1 %68, label %97, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* @EXTENT_LOCKED, align 4
  %71 = load i32, i32* @EXTENT_DELALLOC, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @EXTENT_DELALLOC_NEW, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @EXTENT_DEFRAG, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @EXTENT_DO_ACCOUNTING, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %25, align 4
  %79 = load i64, i64* @PAGE_UNLOCK, align 8
  %80 = load i64, i64* @PAGE_CLEAR_DIRTY, align 8
  %81 = or i64 %79, %80
  %82 = load i64, i64* @PAGE_SET_WRITEBACK, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* @PAGE_END_WRITEBACK, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @PAGE_SET_ERROR, align 8
  %87 = or i64 %85, %86
  store i64 %87, i64* %26, align 8
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.page*, %struct.page** %10, align 8
  %92 = load i32, i32* %25, align 4
  %93 = load i64, i64* %26, align 8
  %94 = call i32 @extent_clear_unlock_delalloc(%struct.inode* %88, i32 %89, i32 %90, %struct.page* %91, i32 %92, i64 %93)
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %207

97:                                               ; preds = %57
  %98 = load %struct.async_cow*, %struct.async_cow** %17, align 8
  %99 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %98, i32 0, i32 1
  %100 = load %struct.async_chunk*, %struct.async_chunk** %99, align 8
  store %struct.async_chunk* %100, %struct.async_chunk** %18, align 8
  %101 = load %struct.async_cow*, %struct.async_cow** %17, align 8
  %102 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %101, i32 0, i32 0
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @atomic_set(i32* %102, i32 %103)
  store i32 0, i32* %22, align 4
  br label %105

105:                                              ; preds = %202, %97
  %106 = load i32, i32* %22, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %205

109:                                              ; preds = %105
  %110 = load i32, i32* %23, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @SZ_512K, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = call i32 @min(i32 %113, i32 %117)
  store i32 %118, i32* %20, align 4
  br label %121

119:                                              ; preds = %109
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %20, align 4
  br label %121

121:                                              ; preds = %119, %112
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @ihold(%struct.inode* %122)
  %124 = load %struct.async_cow*, %struct.async_cow** %17, align 8
  %125 = getelementptr inbounds %struct.async_cow, %struct.async_cow* %124, i32 0, i32 0
  %126 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %127 = load i32, i32* %22, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %126, i64 %128
  %130 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %129, i32 0, i32 7
  store i32* %125, i32** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %9, align 8
  %132 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %133 = load i32, i32* %22, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %132, i64 %134
  %136 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %135, i32 0, i32 6
  store %struct.inode* %131, %struct.inode** %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %139 = load i32, i32* %22, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %138, i64 %140
  %142 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 8
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %145 = load i32, i32* %22, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %144, i64 %146
  %148 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %147, i32 0, i32 1
  store i32 %143, i32* %148, align 4
  %149 = load %struct.page*, %struct.page** %10, align 8
  %150 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %151 = load i32, i32* %22, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %150, i64 %152
  %154 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %153, i32 0, i32 5
  store %struct.page* %149, %struct.page** %154, align 8
  %155 = load i32, i32* %15, align 4
  %156 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %156, i64 %158
  %160 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %159, i32 0, i32 2
  store i32 %155, i32* %160, align 8
  %161 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %161, i64 %163
  %165 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %164, i32 0, i32 4
  %166 = call i32 @INIT_LIST_HEAD(i32* %165)
  %167 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %168 = load i32, i32* %22, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %167, i64 %169
  %171 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %170, i32 0, i32 3
  %172 = load i32, i32* @btrfs_delalloc_helper, align 4
  %173 = load i32, i32* @async_cow_start, align 4
  %174 = load i32, i32* @async_cow_submit, align 4
  %175 = load i32, i32* @async_cow_free, align 4
  %176 = call i32 @btrfs_init_work(i32* %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = load i32, i32* %20, align 4
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* @PAGE_SIZE, align 4
  %181 = call i8* @DIV_ROUND_UP(i32 %179, i32 %180)
  %182 = ptrtoint i8* %181 to i64
  store i64 %182, i64* %19, align 8
  %183 = load i64, i64* %19, align 8
  %184 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %185 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %184, i32 0, i32 1
  %186 = call i32 @atomic_add(i64 %183, i32* %185)
  %187 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %188 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.async_chunk*, %struct.async_chunk** %18, align 8
  %191 = load i32, i32* %22, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %190, i64 %192
  %194 = getelementptr inbounds %struct.async_chunk, %struct.async_chunk* %193, i32 0, i32 3
  %195 = call i32 @btrfs_queue_work(i32 %189, i32* %194)
  %196 = load i64, i64* %19, align 8
  %197 = load i64*, i64** %14, align 8
  %198 = load i64, i64* %197, align 8
  %199 = add i64 %198, %196
  store i64 %199, i64* %197, align 8
  %200 = load i32, i32* %20, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %11, align 4
  br label %202

202:                                              ; preds = %121
  %203 = load i32, i32* %22, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %22, align 4
  br label %105

205:                                              ; preds = %105
  %206 = load i32*, i32** %13, align 8
  store i32 1, i32* %206, align 4
  store i32 0, i32* %8, align 4
  br label %207

207:                                              ; preds = %205, %69
  %208 = load i32, i32* %8, align 4
  ret i32 %208
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @unlock_extent(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_test_opt(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @memalloc_nofs_save(...) #1

declare dso_local %struct.async_cow* @kvmalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.async_cow*, i32, i32) #1

declare dso_local i32 @memalloc_nofs_restore(i32) #1

declare dso_local i32 @extent_clear_unlock_delalloc(%struct.inode*, i32, i32, %struct.page*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
