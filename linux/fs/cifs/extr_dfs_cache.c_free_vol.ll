; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_free_vol.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_free_vol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_cache_vol_info = type { i32, %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfs_cache_vol_info*)* @free_vol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_vol(%struct.dfs_cache_vol_info* %0) #0 {
  %2 = alloca %struct.dfs_cache_vol_info*, align 8
  store %struct.dfs_cache_vol_info* %0, %struct.dfs_cache_vol_info** %2, align 8
  %3 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %2, align 8
  %4 = getelementptr inbounds %struct.dfs_cache_vol_info, %struct.dfs_cache_vol_info* %3, i32 0, i32 3
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %2, align 8
  %7 = getelementptr inbounds %struct.dfs_cache_vol_info, %struct.dfs_cache_vol_info* %6, i32 0, i32 2
  %8 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %7, align 8
  %9 = call i32 @kfree(%struct.dfs_cache_vol_info* %8)
  %10 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %2, align 8
  %11 = getelementptr inbounds %struct.dfs_cache_vol_info, %struct.dfs_cache_vol_info* %10, i32 0, i32 1
  %12 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %11, align 8
  %13 = call i32 @kfree(%struct.dfs_cache_vol_info* %12)
  %14 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %2, align 8
  %15 = getelementptr inbounds %struct.dfs_cache_vol_info, %struct.dfs_cache_vol_info* %14, i32 0, i32 0
  %16 = call i32 @cifs_cleanup_volume_info_contents(i32* %15)
  %17 = load %struct.dfs_cache_vol_info*, %struct.dfs_cache_vol_info** %2, align 8
  %18 = call i32 @kfree(%struct.dfs_cache_vol_info* %17)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dfs_cache_vol_info*) #1

declare dso_local i32 @cifs_cleanup_volume_info_contents(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
