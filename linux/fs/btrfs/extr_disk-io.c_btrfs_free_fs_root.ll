; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_free_fs_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_free_fs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32, i32, i32, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_free_fs_root(%struct.btrfs_root* %0) #0 {
  %2 = alloca %struct.btrfs_root*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %2, align 8
  %3 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @iput(i32 %5)
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 6
  %9 = call i32 @RB_EMPTY_ROOT(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @free_anon_bdev(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %25 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %30 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @btrfs_free_subvolume_writers(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %35 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @free_extent_buffer(i32 %36)
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @free_extent_buffer(i32 %40)
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %43 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @kfree(i32 %44)
  %46 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %47 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kfree(i32 %48)
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %2, align 8
  %51 = call i32 @btrfs_put_fs_root(%struct.btrfs_root* %50)
  ret void
}

declare dso_local i32 @iput(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @free_anon_bdev(i64) #1

declare dso_local i32 @btrfs_free_subvolume_writers(i64) #1

declare dso_local i32 @free_extent_buffer(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @btrfs_put_fs_root(%struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
