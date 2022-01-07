; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_csum_tree_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_csum_tree_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.extent_buffer = type { i64, %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { i32 }

@shash = common dso_local global %struct.TYPE_6__* null, align 8
@BTRFS_CSUM_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, i32*)* @csum_tree_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csum_tree_block(%struct.extent_buffer* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.btrfs_fs_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %14, i32 0, i32 1
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %15, align 8
  store %struct.btrfs_fs_info* %16, %struct.btrfs_fs_info** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %17, i32 %20)
  %22 = load i64, i64* @BTRFS_CSUM_SIZE, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %29 = call i32 @crypto_shash_init(%struct.TYPE_6__* %28)
  %30 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = sub i64 %32, %33
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %47, %2
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %35
  %39 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @map_private_extent_buffer(%struct.extent_buffer* %39, i64 %40, i32 32, i8** %10, i64* %11, i64* %12)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %3, align 4
  br label %77

47:                                               ; preds = %38
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %50, %51
  %53 = sub i64 %49, %52
  %54 = call i64 @min(i64 %48, i64 %53)
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i64, i64* %11, align 8
  %60 = sub i64 0, %59
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @crypto_shash_update(%struct.TYPE_6__* %55, i8* %61, i64 %62)
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %9, align 8
  br label %35

70:                                               ; preds = %35
  %71 = load i32*, i32** %5, align 8
  %72 = load i64, i64* @BTRFS_CSUM_SIZE, align 8
  %73 = call i32 @memset(i32* %71, i32 0, i64 %72)
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @crypto_shash_final(%struct.TYPE_6__* %74, i32* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %45
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @map_private_extent_buffer(%struct.extent_buffer*, i64, i32, i8**, i64*, i64*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
