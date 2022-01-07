; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.h_dfs_cache_get_next_tgt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.h_dfs_cache_get_next_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_cache_tgt_list = type { i32 }
%struct.dfs_cache_tgt_iterator = type { i32 }

@it_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfs_cache_tgt_iterator* (%struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_iterator*)* @dfs_cache_get_next_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfs_cache_tgt_iterator* @dfs_cache_get_next_tgt(%struct.dfs_cache_tgt_list* %0, %struct.dfs_cache_tgt_iterator* %1) #0 {
  %3 = alloca %struct.dfs_cache_tgt_iterator*, align 8
  %4 = alloca %struct.dfs_cache_tgt_list*, align 8
  %5 = alloca %struct.dfs_cache_tgt_iterator*, align 8
  store %struct.dfs_cache_tgt_list* %0, %struct.dfs_cache_tgt_list** %4, align 8
  store %struct.dfs_cache_tgt_iterator* %1, %struct.dfs_cache_tgt_iterator** %5, align 8
  %6 = load %struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_list** %4, align 8
  %7 = icmp ne %struct.dfs_cache_tgt_list* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_list** %4, align 8
  %10 = getelementptr inbounds %struct.dfs_cache_tgt_list, %struct.dfs_cache_tgt_list* %9, i32 0, i32 0
  %11 = call i64 @list_empty(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load %struct.dfs_cache_tgt_iterator*, %struct.dfs_cache_tgt_iterator** %5, align 8
  %15 = icmp ne %struct.dfs_cache_tgt_iterator* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.dfs_cache_tgt_iterator*, %struct.dfs_cache_tgt_iterator** %5, align 8
  %18 = getelementptr inbounds %struct.dfs_cache_tgt_iterator, %struct.dfs_cache_tgt_iterator* %17, i32 0, i32 0
  %19 = load %struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_list** %4, align 8
  %20 = getelementptr inbounds %struct.dfs_cache_tgt_list, %struct.dfs_cache_tgt_list* %19, i32 0, i32 0
  %21 = call i64 @list_is_last(i32* %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %13, %8, %2
  store %struct.dfs_cache_tgt_iterator* null, %struct.dfs_cache_tgt_iterator** %3, align 8
  br label %28

24:                                               ; preds = %16
  %25 = load %struct.dfs_cache_tgt_iterator*, %struct.dfs_cache_tgt_iterator** %5, align 8
  %26 = load i32, i32* @it_list, align 4
  %27 = call %struct.dfs_cache_tgt_iterator* @list_next_entry(%struct.dfs_cache_tgt_iterator* %25, i32 %26)
  store %struct.dfs_cache_tgt_iterator* %27, %struct.dfs_cache_tgt_iterator** %3, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = load %struct.dfs_cache_tgt_iterator*, %struct.dfs_cache_tgt_iterator** %3, align 8
  ret %struct.dfs_cache_tgt_iterator* %29
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @list_is_last(i32*, i32*) #1

declare dso_local %struct.dfs_cache_tgt_iterator* @list_next_entry(%struct.dfs_cache_tgt_iterator*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
