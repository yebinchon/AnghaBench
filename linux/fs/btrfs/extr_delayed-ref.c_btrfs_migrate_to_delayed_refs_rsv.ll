; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_migrate_to_delayed_refs_rsv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_migrate_to_delayed_refs_rsv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_block_rsv }
%struct.btrfs_block_rsv = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"delayed_refs_rsv\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_migrate_to_delayed_refs_rsv(%struct.btrfs_fs_info* %0, %struct.btrfs_block_rsv* %1, i64 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.btrfs_block_rsv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.btrfs_block_rsv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.btrfs_block_rsv* %1, %struct.btrfs_block_rsv** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %10, i32 0, i32 0
  store %struct.btrfs_block_rsv* %11, %struct.btrfs_block_rsv** %7, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %12, i32 0, i32 4
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %5, align 8
  %26 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %25, i32 0, i32 4
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %29 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %28, i32 0, i32 4
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %32 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %35 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %3
  %39 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %40 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %43 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 %50, %51
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  store i64 %53, i64* %6, align 8
  br label %54

54:                                               ; preds = %49, %38
  br label %57

55:                                               ; preds = %3
  %56 = load i64, i64* %6, align 8
  store i64 %56, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = load i64, i64* %6, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %63 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, %61
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %60, %57
  %67 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %68 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %71 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %76 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %79 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %78, i32 0, i32 4
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load i64, i64* %6, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 0, i64 %85, i32 1)
  br label %87

87:                                               ; preds = %83, %77
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %92 = load %struct.btrfs_block_rsv*, %struct.btrfs_block_rsv** %7, align 8
  %93 = getelementptr inbounds %struct.btrfs_block_rsv, %struct.btrfs_block_rsv* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @btrfs_space_info_free_bytes_may_use(%struct.btrfs_fs_info* %91, i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %90, %87
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.btrfs_fs_info*, i8*, i32, i64, i32) #1

declare dso_local i32 @btrfs_space_info_free_bytes_may_use(%struct.btrfs_fs_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
