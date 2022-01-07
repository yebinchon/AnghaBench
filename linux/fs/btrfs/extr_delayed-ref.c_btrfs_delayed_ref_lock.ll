; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_ref_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_btrfs_delayed_ref_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_delayed_ref_head = type { i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_delayed_ref_lock(%struct.btrfs_delayed_ref_root* %0, %struct.btrfs_delayed_ref_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_delayed_ref_root*, align 8
  %5 = alloca %struct.btrfs_delayed_ref_head*, align 8
  store %struct.btrfs_delayed_ref_root* %0, %struct.btrfs_delayed_ref_root** %4, align 8
  store %struct.btrfs_delayed_ref_head* %1, %struct.btrfs_delayed_ref_head** %5, align 8
  %6 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %4, align 8
  %7 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %6, i32 0, i32 0
  %8 = call i32 @lockdep_assert_held(i32* %7)
  %9 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %9, i32 0, i32 0
  %11 = call i64 @mutex_trylock(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %16 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %15, i32 0, i32 2
  %17 = call i32 @refcount_inc(i32* %16)
  %18 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %4, align 8
  %19 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %22 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %4, align 8
  %25 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %28 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %27, i32 0, i32 1
  %29 = call i64 @RB_EMPTY_NODE(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %14
  %32 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %33 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %36 = call i32 @btrfs_put_delayed_ref_head(%struct.btrfs_delayed_ref_head* %35)
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %14
  %40 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %5, align 8
  %41 = call i32 @btrfs_put_delayed_ref_head(%struct.btrfs_delayed_ref_head* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %39, %31, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @mutex_trylock(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @btrfs_put_delayed_ref_head(%struct.btrfs_delayed_ref_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
