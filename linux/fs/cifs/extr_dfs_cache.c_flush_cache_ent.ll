; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_flush_cache_ent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_flush_cache_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_cache_entry = type { i32, i32, i32 }

@dfs_cache_count = common dso_local global i32 0, align 4
@free_cache_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfs_cache_entry*)* @flush_cache_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_cache_ent(%struct.dfs_cache_entry* %0) #0 {
  %2 = alloca %struct.dfs_cache_entry*, align 8
  store %struct.dfs_cache_entry* %0, %struct.dfs_cache_entry** %2, align 8
  %3 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %2, align 8
  %4 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %3, i32 0, i32 2
  %5 = call i64 @hlist_unhashed(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %2, align 8
  %10 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %9, i32 0, i32 2
  %11 = call i32 @hlist_del_init_rcu(i32* %10)
  %12 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %2, align 8
  %13 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree_const(i32 %14)
  %16 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %2, align 8
  %17 = call i32 @free_tgts(%struct.dfs_cache_entry* %16)
  %18 = load i32, i32* @dfs_cache_count, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @dfs_cache_count, align 4
  %20 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %2, align 8
  %21 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %20, i32 0, i32 0
  %22 = load i32, i32* @free_cache_entry, align 4
  %23 = call i32 @call_rcu(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @free_tgts(%struct.dfs_cache_entry*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
