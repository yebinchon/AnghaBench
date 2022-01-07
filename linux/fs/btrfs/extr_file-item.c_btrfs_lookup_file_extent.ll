; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_file-item.c_btrfs_lookup_file_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_file-item.c_btrfs_lookup_file_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i32, i8*, i8* }

@BTRFS_EXTENT_DATA_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_lookup_file_extent(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, %struct.btrfs_path* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.btrfs_trans_handle*, align 8
  %8 = alloca %struct.btrfs_root*, align 8
  %9 = alloca %struct.btrfs_path*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.btrfs_key, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %7, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %8, align 8
  store %struct.btrfs_path* %2, %struct.btrfs_path** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 -1, i32 0
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %16, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 1
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* @BTRFS_EXTENT_DATA_KEY, align 4
  %29 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %14, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %7, align 8
  %31 = load %struct.btrfs_root*, %struct.btrfs_root** %8, align 8
  %32 = load %struct.btrfs_path*, %struct.btrfs_path** %9, align 8
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %30, %struct.btrfs_root* %31, %struct.btrfs_key* %14, %struct.btrfs_path* %32, i32 %33, i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  ret i32 %36
}

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
