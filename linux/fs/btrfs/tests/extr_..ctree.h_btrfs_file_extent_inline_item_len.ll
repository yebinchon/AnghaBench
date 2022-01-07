; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h_btrfs_file_extent_inline_item_len.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..ctree.h_btrfs_file_extent_inline_item_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_item = type { i32 }

@BTRFS_FILE_EXTENT_INLINE_DATA_START = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.extent_buffer*, %struct.btrfs_item*)* @btrfs_file_extent_inline_item_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_file_extent_inline_item_len(%struct.extent_buffer* %0, %struct.btrfs_item* %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.btrfs_item*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store %struct.btrfs_item* %1, %struct.btrfs_item** %4, align 8
  %5 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %6 = load %struct.btrfs_item*, %struct.btrfs_item** %4, align 8
  %7 = call i64 @btrfs_item_size(%struct.extent_buffer* %5, %struct.btrfs_item* %6)
  %8 = load i64, i64* @BTRFS_FILE_EXTENT_INLINE_DATA_START, align 8
  %9 = sub nsw i64 %7, %8
  ret i64 %9
}

declare dso_local i64 @btrfs_item_size(%struct.extent_buffer*, %struct.btrfs_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
