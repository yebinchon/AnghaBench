; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_init_free_cluster.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_btrfs_init_free_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_free_cluster = type { i32, i32*, i32, i64, i32, i32, i32 }

@RB_ROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_init_free_cluster(%struct.btrfs_free_cluster* %0) #0 {
  %2 = alloca %struct.btrfs_free_cluster*, align 8
  store %struct.btrfs_free_cluster* %0, %struct.btrfs_free_cluster** %2, align 8
  %3 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %3, i32 0, i32 6
  %5 = call i32 @spin_lock_init(i32* %4)
  %6 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %2, align 8
  %7 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %6, i32 0, i32 5
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load i32, i32* @RB_ROOT, align 4
  %10 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %2, align 8
  %11 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %2, align 8
  %13 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %2, align 8
  %15 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %2, align 8
  %17 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.btrfs_free_cluster*, %struct.btrfs_free_cluster** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_free_cluster, %struct.btrfs_free_cluster* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
