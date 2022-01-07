; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_put_workspace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_put_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspace_manager = type { i32, %struct.TYPE_2__*, i32, i32, i32, %struct.list_head }
%struct.TYPE_2__ = type { i32 (%struct.list_head*)* }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_put_workspace(%struct.workspace_manager* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.workspace_manager*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.workspace_manager* %0, %struct.workspace_manager** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %10 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %11 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %10, i32 0, i32 5
  store %struct.list_head* %11, %struct.list_head** %5, align 8
  %12 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %13 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %12, i32 0, i32 4
  store i32* %13, i32** %6, align 8
  %14 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %15 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %14, i32 0, i32 3
  store i32* %15, i32** %7, align 8
  %16 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %17 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %16, i32 0, i32 2
  store i32* %17, i32** %8, align 8
  %18 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %19 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %18, i32 0, i32 0
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load i32*, i32** %9, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (...) @num_online_cpus()
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.list_head*, %struct.list_head** %4, align 8
  %28 = load %struct.list_head*, %struct.list_head** %5, align 8
  %29 = call i32 @list_add(%struct.list_head* %27, %struct.list_head* %28)
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @spin_unlock(i32* %33)
  br label %47

35:                                               ; preds = %2
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load %struct.workspace_manager*, %struct.workspace_manager** %3, align 8
  %39 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.list_head*)*, i32 (%struct.list_head*)** %41, align 8
  %43 = load %struct.list_head*, %struct.list_head** %4, align 8
  %44 = call i32 %42(%struct.list_head* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = call i32 @atomic_dec(i32* %45)
  br label %47

47:                                               ; preds = %35, %26
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @cond_wake_up(i32* %48)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @list_add(%struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @cond_wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
