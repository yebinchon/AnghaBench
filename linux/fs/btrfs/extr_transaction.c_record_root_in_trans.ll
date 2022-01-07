; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_record_root_in_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_transaction.c_record_root_in_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i64 }
%struct.btrfs_root = type { i64, i64, i64, i32, %struct.TYPE_2__, %struct.btrfs_fs_info* }
%struct.TYPE_2__ = type { i64 }
%struct.btrfs_fs_info = type { i32, i32, %struct.btrfs_root* }

@BTRFS_ROOT_REF_COWS = common dso_local global i32 0, align 4
@BTRFS_ROOT_IN_TRANS_SETUP = common dso_local global i32 0, align 4
@BTRFS_ROOT_TRANS_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, %struct.btrfs_root*, i32)* @record_root_in_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @record_root_in_trans(%struct.btrfs_trans_handle* %0, %struct.btrfs_root* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_root* %1, %struct.btrfs_root** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %10 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %9, i32 0, i32 5
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %10, align 8
  store %struct.btrfs_fs_info* %11, %struct.btrfs_fs_info** %8, align 8
  %12 = load i32, i32* @BTRFS_ROOT_REF_COWS, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 3
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %19 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %97

28:                                               ; preds = %25, %17
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %30 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %31 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %30, i32 0, i32 2
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %31, align 8
  %33 = icmp eq %struct.btrfs_root* %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @WARN_ON(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %28
  %39 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br label %46

46:                                               ; preds = %38, %28
  %47 = phi i1 [ false, %28 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load i32, i32* @BTRFS_ROOT_IN_TRANS_SETUP, align 4
  %51 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %52 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %51, i32 0, i32 3
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = call i32 (...) @smp_wmb()
  %55 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %56 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %59 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %62 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %46
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %70 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  store i32 0, i32* %4, align 4
  br label %98

72:                                               ; preds = %65, %46
  %73 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %74 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %73, i32 0, i32 1
  %75 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %76 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @BTRFS_ROOT_TRANS_TAG, align 4
  %80 = call i32 @radix_tree_tag_set(i32* %74, i64 %78, i32 %79)
  %81 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %82 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %85 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %88 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %5, align 8
  %90 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %91 = call i32 @btrfs_init_reloc_root(%struct.btrfs_trans_handle* %89, %struct.btrfs_root* %90)
  %92 = call i32 (...) @smp_mb__before_atomic()
  %93 = load i32, i32* @BTRFS_ROOT_IN_TRANS_SETUP, align 4
  %94 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %95 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %94, i32 0, i32 3
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  br label %97

97:                                               ; preds = %72, %25
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %68
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @radix_tree_tag_set(i32*, i64, i32) #1

declare dso_local i32 @btrfs_init_reloc_root(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
