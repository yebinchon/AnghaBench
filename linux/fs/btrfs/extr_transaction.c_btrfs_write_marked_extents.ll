; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_write_marked_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_btrfs_write_marked_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.extent_state = type { i32 }
%struct.TYPE_3__ = type { i32 }

@EXTENT_NEED_WAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_write_marked_extents(%struct.btrfs_fs_info* %0, %struct.extent_io_tree* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.extent_io_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca %struct.extent_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.extent_io_tree* %1, %struct.extent_io_tree** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %15 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %9, align 8
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  store i64 0, i64* %11, align 8
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = call %struct.TYPE_3__* @BTRFS_I(%struct.TYPE_4__* %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  br label %25

25:                                               ; preds = %66, %3
  %26 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @find_first_extent_bit(%struct.extent_io_tree* %26, i64 %27, i64* %11, i64* %12, i32 %28, %struct.extent_state** %10)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %72

32:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  %33 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* @EXTENT_NEED_WAIT, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @convert_extent_bit(%struct.extent_io_tree* %33, i64 %34, i64 %35, i32 %36, i32 %37, %struct.extent_state** %10)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  store i32 1, i32* %13, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load %struct.address_space*, %struct.address_space** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @filemap_fdatawrite_range(%struct.address_space* %48, i64 %49, i64 %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %8, align 4
  br label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.address_space*, %struct.address_space** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @filemap_fdatawait_range(%struct.address_space* %61, i64 %62, i64 %63)
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %60, %57
  br label %66

66:                                               ; preds = %65, %55
  %67 = load %struct.extent_state*, %struct.extent_state** %10, align 8
  %68 = call i32 @free_extent_state(%struct.extent_state* %67)
  store %struct.extent_state* null, %struct.extent_state** %10, align 8
  %69 = call i32 (...) @cond_resched()
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %11, align 8
  br label %25

72:                                               ; preds = %25
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call %struct.TYPE_3__* @BTRFS_I(%struct.TYPE_4__* %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = call i32 @atomic_dec(i32* %77)
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_3__* @BTRFS_I(%struct.TYPE_4__*) #1

declare dso_local i32 @find_first_extent_bit(%struct.extent_io_tree*, i64, i64*, i64*, i32, %struct.extent_state**) #1

declare dso_local i32 @convert_extent_bit(%struct.extent_io_tree*, i64, i64, i32, i32, %struct.extent_state**) #1

declare dso_local i32 @filemap_fdatawrite_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @filemap_fdatawait_range(%struct.address_space*, i64, i64) #1

declare dso_local i32 @free_extent_state(%struct.extent_state*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
