; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_put_workspace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_put_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.workspace = type { i32, i32, i32, i32, i64 }

@wsm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@ZSTD_BTRFS_MAX_LEVEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ZSTD_BTRFS_RECLAIM_JIFFIES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.list_head*)* @zstd_put_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zstd_put_workspace(%struct.list_head* %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct.workspace*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  %4 = load %struct.list_head*, %struct.list_head** %2, align 8
  %5 = call %struct.workspace* @list_to_workspace(%struct.list_head* %4)
  store %struct.workspace* %5, %struct.workspace** %3, align 8
  %6 = call i32 @spin_lock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 1))
  %7 = load %struct.workspace*, %struct.workspace** %3, align 8
  %8 = getelementptr inbounds %struct.workspace, %struct.workspace* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.workspace*, %struct.workspace** %3, align 8
  %11 = getelementptr inbounds %struct.workspace, %struct.workspace* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 2), align 8
  %16 = load i32, i32* @ZSTD_BTRFS_MAX_LEVEL, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = call i64 @list_empty(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.workspace*, %struct.workspace** %3, align 8
  %24 = getelementptr inbounds %struct.workspace, %struct.workspace* %23, i32 0, i32 3
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  br label %41

26:                                               ; preds = %14
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.workspace*, %struct.workspace** %3, align 8
  %29 = getelementptr inbounds %struct.workspace, %struct.workspace* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  %30 = load %struct.workspace*, %struct.workspace** %3, align 8
  %31 = getelementptr inbounds %struct.workspace, %struct.workspace* %30, i32 0, i32 3
  %32 = call i32 @list_add(i32* %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 5))
  %33 = call i32 @timer_pending(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 4))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* @jiffies, align 8
  %37 = load i64, i64* @ZSTD_BTRFS_RECLAIM_JIFFIES, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 4), i64 %38)
  br label %40

40:                                               ; preds = %35, %26
  br label %41

41:                                               ; preds = %40, %22
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.workspace*, %struct.workspace** %3, align 8
  %44 = getelementptr inbounds %struct.workspace, %struct.workspace* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i32 @set_bit(i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 3))
  %48 = load %struct.workspace*, %struct.workspace** %3, align 8
  %49 = getelementptr inbounds %struct.workspace, %struct.workspace* %48, i32 0, i32 2
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 2), align 8
  %51 = load %struct.workspace*, %struct.workspace** %3, align 8
  %52 = getelementptr inbounds %struct.workspace, %struct.workspace* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %50, i64 %55
  %57 = call i32 @list_add(i32* %49, i32* %56)
  %58 = load %struct.workspace*, %struct.workspace** %3, align 8
  %59 = getelementptr inbounds %struct.workspace, %struct.workspace* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  %60 = call i32 @spin_unlock_bh(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 1))
  %61 = load %struct.workspace*, %struct.workspace** %3, align 8
  %62 = getelementptr inbounds %struct.workspace, %struct.workspace* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ZSTD_BTRFS_MAX_LEVEL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %42
  %67 = call i32 @cond_wake_up(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 0))
  br label %68

68:                                               ; preds = %66, %42
  ret void
}

declare dso_local %struct.workspace* @list_to_workspace(%struct.list_head*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @cond_wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
