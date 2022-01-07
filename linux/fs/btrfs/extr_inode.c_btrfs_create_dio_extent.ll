; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_create_dio_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_create_dio_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i32 }
%struct.inode = type { i32 }

@BTRFS_ORDERED_NOCOW = common dso_local global i32 0, align 4
@BTRFS_COMPRESS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.extent_map* (%struct.inode*, i64, i64, i64, i64, i64, i64, i64, i32)* @btrfs_create_dio_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.extent_map* @btrfs_create_dio_extent(%struct.inode* %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8) #0 {
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.extent_map*, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  store %struct.extent_map* null, %struct.extent_map** %19, align 8
  %21 = load i32, i32* %18, align 4
  %22 = load i32, i32* @BTRFS_ORDERED_NOCOW, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %9
  %25 = load %struct.inode*, %struct.inode** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i32, i32* @BTRFS_COMPRESS_NONE, align 4
  %34 = load i32, i32* %18, align 4
  %35 = call %struct.extent_map* @create_io_em(%struct.inode* %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, i32 %33, i32 %34)
  store %struct.extent_map* %35, %struct.extent_map** %19, align 8
  %36 = load %struct.extent_map*, %struct.extent_map** %19, align 8
  %37 = call i64 @IS_ERR(%struct.extent_map* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %69

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40, %9
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @btrfs_add_ordered_extent_dio(%struct.inode* %42, i64 %43, i64 %44, i64 %45, i64 %46, i32 %47)
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %20, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %41
  %52 = load %struct.extent_map*, %struct.extent_map** %19, align 8
  %53 = icmp ne %struct.extent_map* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.extent_map*, %struct.extent_map** %19, align 8
  %56 = call i32 @free_extent_map(%struct.extent_map* %55)
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = call i32 @BTRFS_I(%struct.inode* %57)
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add nsw i64 %60, %61
  %63 = sub nsw i64 %62, 1
  %64 = call i32 @btrfs_drop_extent_cache(i32 %58, i64 %59, i64 %63, i32 0)
  br label %65

65:                                               ; preds = %54, %51
  %66 = load i32, i32* %20, align 4
  %67 = call %struct.extent_map* @ERR_PTR(i32 %66)
  store %struct.extent_map* %67, %struct.extent_map** %19, align 8
  br label %68

68:                                               ; preds = %65, %41
  br label %69

69:                                               ; preds = %68, %39
  %70 = load %struct.extent_map*, %struct.extent_map** %19, align 8
  ret %struct.extent_map* %70
}

declare dso_local %struct.extent_map* @create_io_em(%struct.inode*, i64, i64, i64, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i32 @btrfs_add_ordered_extent_dio(%struct.inode*, i64, i64, i64, i64, i32) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i32 @btrfs_drop_extent_cache(i32, i64, i64, i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.extent_map* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
