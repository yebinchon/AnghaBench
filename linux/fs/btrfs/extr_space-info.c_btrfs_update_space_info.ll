; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_update_space_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_space-info.c_btrfs_update_space_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_space_info = type { i32, i32, i32, i32, i32, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_update_space_info(%struct.btrfs_fs_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.btrfs_space_info** %5) #0 {
  %7 = alloca %struct.btrfs_fs_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_space_info**, align 8
  %13 = alloca %struct.btrfs_space_info*, align 8
  %14 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.btrfs_space_info** %5, %struct.btrfs_space_info*** %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @btrfs_bg_type_to_factor(i32 %15)
  store i32 %16, i32* %14, align 4
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info* %17, i32 %18)
  store %struct.btrfs_space_info* %19, %struct.btrfs_space_info** %13, align 8
  %20 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %21 = call i32 @ASSERT(%struct.btrfs_space_info* %20)
  %22 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %23 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %22, i32 0, i32 4
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %27 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %14, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %34 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %39 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %14, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %46 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %51 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %9, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %6
  %57 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %58 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %56, %6
  %60 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %7, align 8
  %61 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %62 = call i32 @btrfs_try_granting_tickets(%struct.btrfs_fs_info* %60, %struct.btrfs_space_info* %61)
  %63 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %64 = getelementptr inbounds %struct.btrfs_space_info, %struct.btrfs_space_info* %63, i32 0, i32 4
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load %struct.btrfs_space_info*, %struct.btrfs_space_info** %13, align 8
  %67 = load %struct.btrfs_space_info**, %struct.btrfs_space_info*** %12, align 8
  store %struct.btrfs_space_info* %66, %struct.btrfs_space_info** %67, align 8
  ret void
}

declare dso_local i32 @btrfs_bg_type_to_factor(i32) #1

declare dso_local %struct.btrfs_space_info* @btrfs_find_space_info(%struct.btrfs_fs_info*, i32) #1

declare dso_local i32 @ASSERT(%struct.btrfs_space_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_try_granting_tickets(%struct.btrfs_fs_info*, %struct.btrfs_space_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
