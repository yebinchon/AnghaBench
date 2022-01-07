; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_backref.c_check_extent_in_eb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_backref.c_check_extent_in_eb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_key = type { i64, i32 }
%struct.extent_buffer = type { i32 }
%struct.btrfs_file_extent_item = type { i32 }
%struct.extent_inode_elem = type { i64, i32, %struct.extent_inode_elem* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_key*, %struct.extent_buffer*, %struct.btrfs_file_extent_item*, i64, %struct.extent_inode_elem**, i32)* @check_extent_in_eb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_extent_in_eb(%struct.btrfs_key* %0, %struct.extent_buffer* %1, %struct.btrfs_file_extent_item* %2, i64 %3, %struct.extent_inode_elem** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_key*, align 8
  %9 = alloca %struct.extent_buffer*, align 8
  %10 = alloca %struct.btrfs_file_extent_item*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.extent_inode_elem**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.extent_inode_elem*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.btrfs_key* %0, %struct.btrfs_key** %8, align 8
  store %struct.extent_buffer* %1, %struct.extent_buffer** %9, align 8
  store %struct.btrfs_file_extent_item* %2, %struct.btrfs_file_extent_item** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.extent_inode_elem** %4, %struct.extent_inode_elem*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %6
  %21 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %22 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %10, align 8
  %23 = call i32 @btrfs_file_extent_compression(%struct.extent_buffer* %21, %struct.btrfs_file_extent_item* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %56, label %25

25:                                               ; preds = %20
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %27 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %10, align 8
  %28 = call i32 @btrfs_file_extent_encryption(%struct.extent_buffer* %26, %struct.btrfs_file_extent_item* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %25
  %31 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %32 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %10, align 8
  %33 = call i32 @btrfs_file_extent_other_encoding(%struct.extent_buffer* %31, %struct.btrfs_file_extent_item* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %30
  %36 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %37 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %10, align 8
  %38 = call i64 @btrfs_file_extent_offset(%struct.extent_buffer* %36, %struct.btrfs_file_extent_item* %37)
  store i64 %38, i64* %16, align 8
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %9, align 8
  %40 = load %struct.btrfs_file_extent_item*, %struct.btrfs_file_extent_item** %10, align 8
  %41 = call i64 @btrfs_file_extent_num_bytes(%struct.extent_buffer* %39, %struct.btrfs_file_extent_item* %40)
  store i64 %41, i64* %17, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %16, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %17, align 8
  %49 = add nsw i64 %47, %48
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %35
  store i32 1, i32* %7, align 4
  br label %83

52:                                               ; preds = %45
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %16, align 8
  %55 = sub nsw i64 %53, %54
  store i64 %55, i64* %14, align 8
  br label %56

56:                                               ; preds = %52, %30, %25, %20, %6
  %57 = load i32, i32* @GFP_NOFS, align 4
  %58 = call %struct.extent_inode_elem* @kmalloc(i32 24, i32 %57)
  store %struct.extent_inode_elem* %58, %struct.extent_inode_elem** %15, align 8
  %59 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %15, align 8
  %60 = icmp ne %struct.extent_inode_elem* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %83

64:                                               ; preds = %56
  %65 = load %struct.extent_inode_elem**, %struct.extent_inode_elem*** %12, align 8
  %66 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %65, align 8
  %67 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %15, align 8
  %68 = getelementptr inbounds %struct.extent_inode_elem, %struct.extent_inode_elem* %67, i32 0, i32 2
  store %struct.extent_inode_elem* %66, %struct.extent_inode_elem** %68, align 8
  %69 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %70 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %15, align 8
  %73 = getelementptr inbounds %struct.extent_inode_elem, %struct.extent_inode_elem* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.btrfs_key*, %struct.btrfs_key** %8, align 8
  %75 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %15, align 8
  %80 = getelementptr inbounds %struct.extent_inode_elem, %struct.extent_inode_elem* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.extent_inode_elem*, %struct.extent_inode_elem** %15, align 8
  %82 = load %struct.extent_inode_elem**, %struct.extent_inode_elem*** %12, align 8
  store %struct.extent_inode_elem* %81, %struct.extent_inode_elem** %82, align 8
  store i32 0, i32* %7, align 4
  br label %83

83:                                               ; preds = %64, %61, %51
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i32 @btrfs_file_extent_compression(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i32 @btrfs_file_extent_encryption(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i32 @btrfs_file_extent_other_encoding(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i64 @btrfs_file_extent_offset(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local i64 @btrfs_file_extent_num_bytes(%struct.extent_buffer*, %struct.btrfs_file_extent_item*) #1

declare dso_local %struct.extent_inode_elem* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
