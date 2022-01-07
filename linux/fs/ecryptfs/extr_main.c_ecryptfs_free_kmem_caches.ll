; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_main.c_ecryptfs_free_kmem_caches.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_main.c_ecryptfs_free_kmem_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_cache_info = type { i32* }

@ecryptfs_cache_infos = common dso_local global %struct.ecryptfs_cache_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ecryptfs_free_kmem_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecryptfs_free_kmem_caches() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ecryptfs_cache_info*, align 8
  %3 = call i32 (...) @rcu_barrier()
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* %1, align 4
  %6 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** @ecryptfs_cache_infos, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.ecryptfs_cache_info* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** @ecryptfs_cache_infos, align 8
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %10, i64 %12
  store %struct.ecryptfs_cache_info* %13, %struct.ecryptfs_cache_info** %2, align 8
  %14 = load %struct.ecryptfs_cache_info*, %struct.ecryptfs_cache_info** %2, align 8
  %15 = getelementptr inbounds %struct.ecryptfs_cache_info, %struct.ecryptfs_cache_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @kmem_cache_destroy(i32 %17)
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %4

22:                                               ; preds = %4
  ret void
}

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.ecryptfs_cache_info*) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
