; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_root_sub_used.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_root_sub_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_root*, i64)* @root_sub_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @root_sub_used(%struct.btrfs_root* %0, i64 %1) #0 {
  %3 = alloca %struct.btrfs_root*, align 8
  %4 = alloca i64, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 1
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 1
  %12 = call i64 @btrfs_root_used(i32* %11)
  %13 = load i64, i64* %4, align 8
  %14 = sub nsw i64 %12, %13
  %15 = call i32 @btrfs_set_root_used(i32* %9, i64 %14)
  %16 = load %struct.btrfs_root*, %struct.btrfs_root** %3, align 8
  %17 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock(i32* %17)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @btrfs_set_root_used(i32*, i64) #1

declare dso_local i64 @btrfs_root_used(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
