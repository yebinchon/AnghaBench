; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_cleanup_workspace_manager.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_btrfs_cleanup_workspace_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.workspace_manager = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (%struct.list_head*)* }
%struct.list_head = type { i32 }
%struct.TYPE_4__ = type { %struct.list_head* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_cleanup_workspace_manager(%struct.workspace_manager* %0) #0 {
  %2 = alloca %struct.workspace_manager*, align 8
  %3 = alloca %struct.list_head*, align 8
  store %struct.workspace_manager* %0, %struct.workspace_manager** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.workspace_manager*, %struct.workspace_manager** %2, align 8
  %6 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %5, i32 0, i32 2
  %7 = call i32 @list_empty(%struct.TYPE_4__* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = load %struct.workspace_manager*, %struct.workspace_manager** %2, align 8
  %12 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8
  store %struct.list_head* %14, %struct.list_head** %3, align 8
  %15 = load %struct.list_head*, %struct.list_head** %3, align 8
  %16 = call i32 @list_del(%struct.list_head* %15)
  %17 = load %struct.workspace_manager*, %struct.workspace_manager** %2, align 8
  %18 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.list_head*)*, i32 (%struct.list_head*)** %20, align 8
  %22 = load %struct.list_head*, %struct.list_head** %3, align 8
  %23 = call i32 %21(%struct.list_head* %22)
  %24 = load %struct.workspace_manager*, %struct.workspace_manager** %2, align 8
  %25 = getelementptr inbounds %struct.workspace_manager, %struct.workspace_manager* %24, i32 0, i32 0
  %26 = call i32 @atomic_dec(i32* %25)
  br label %4

27:                                               ; preds = %4
  ret void
}

declare dso_local i32 @list_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @list_del(%struct.list_head*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
