; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_lock_extent_direct.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_lock_extent_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_state = type { i32 }
%struct.btrfs_ordered_extent = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BTRFS_ORDERED_DIRECT = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64, %struct.extent_state**, i32)* @lock_extent_direct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_extent_direct(%struct.inode* %0, i64 %1, i64 %2, %struct.extent_state** %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.extent_state**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_ordered_extent*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.extent_state** %3, %struct.extent_state*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %5, %79
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.extent_state**, %struct.extent_state*** %9, align 8
  %20 = call i32 @lock_extent_bits(i32* %16, i64 %17, i64 %18, %struct.extent_state** %19)
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %21)
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 %24, %25
  %27 = add nsw i64 %26, 1
  %28 = call %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.TYPE_3__* %22, i64 %23, i64 %27)
  store %struct.btrfs_ordered_extent* %28, %struct.btrfs_ordered_extent** %11, align 8
  %29 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %30 = icmp ne %struct.btrfs_ordered_extent* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %13
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @filemap_range_has_page(i32 %37, i64 %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %34, %31
  br label %81

43:                                               ; preds = %34, %13
  %44 = load %struct.inode*, %struct.inode** %6, align 8
  %45 = call %struct.TYPE_3__* @BTRFS_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.extent_state**, %struct.extent_state*** %9, align 8
  %50 = call i32 @unlock_extent_cached(i32* %46, i64 %47, i64 %48, %struct.extent_state** %49)
  %51 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %52 = icmp ne %struct.btrfs_ordered_extent* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @BTRFS_ORDERED_DIRECT, align 4
  %58 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %59 = getelementptr inbounds %struct.btrfs_ordered_extent, %struct.btrfs_ordered_extent* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56, %53
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %65 = call i32 @btrfs_start_ordered_extent(%struct.inode* %63, %struct.btrfs_ordered_extent* %64, i32 1)
  br label %69

66:                                               ; preds = %56
  %67 = load i32, i32* @ENOTBLK, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.btrfs_ordered_extent*, %struct.btrfs_ordered_extent** %11, align 8
  %71 = call i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent* %70)
  br label %75

72:                                               ; preds = %43
  %73 = load i32, i32* @ENOTBLK, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %81

79:                                               ; preds = %75
  %80 = call i32 (...) @cond_resched()
  br label %13

81:                                               ; preds = %78, %42
  %82 = load i32, i32* %12, align 4
  ret i32 %82
}

declare dso_local i32 @lock_extent_bits(i32*, i64, i64, %struct.extent_state**) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.inode*) #1

declare dso_local %struct.btrfs_ordered_extent* @btrfs_lookup_ordered_range(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @filemap_range_has_page(i32, i64, i64) #1

declare dso_local i32 @unlock_extent_cached(i32*, i64, i64, %struct.extent_state**) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @btrfs_start_ordered_extent(%struct.inode*, %struct.btrfs_ordered_extent*, i32) #1

declare dso_local i32 @btrfs_put_ordered_extent(%struct.btrfs_ordered_extent*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
