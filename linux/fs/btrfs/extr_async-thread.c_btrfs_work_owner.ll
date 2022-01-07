; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_work_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_async-thread.c_btrfs_work_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_work = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_fs_info* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_fs_info* @btrfs_work_owner(%struct.btrfs_work* %0) #0 {
  %2 = alloca %struct.btrfs_work*, align 8
  store %struct.btrfs_work* %0, %struct.btrfs_work** %2, align 8
  %3 = load %struct.btrfs_work*, %struct.btrfs_work** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_work, %struct.btrfs_work* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %6, align 8
  ret %struct.btrfs_fs_info* %7
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
