; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c___tree_mod_log_oldest_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c___tree_mod_log_oldest_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_mod_elem = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.extent_buffer = type { i32, i32 }

@MOD_LOG_ROOT_REPLACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree_mod_elem* (%struct.extent_buffer*, i32)* @__tree_mod_log_oldest_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree_mod_elem* @__tree_mod_log_oldest_root(%struct.extent_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.tree_mod_elem*, align 8
  %4 = alloca %struct.extent_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree_mod_elem*, align 8
  %7 = alloca %struct.tree_mod_elem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tree_mod_elem* null, %struct.tree_mod_elem** %7, align 8
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %11 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.tree_mod_elem* null, %struct.tree_mod_elem** %3, align 8
  br label %54

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %41
  %18 = load %struct.extent_buffer*, %struct.extent_buffer** %4, align 8
  %19 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.tree_mod_elem* @tree_mod_log_search_oldest(i32 %20, i32 %21, i32 %22)
  store %struct.tree_mod_elem* %23, %struct.tree_mod_elem** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %28 = icmp ne %struct.tree_mod_elem* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.tree_mod_elem* null, %struct.tree_mod_elem** %3, align 8
  br label %54

30:                                               ; preds = %26, %17
  %31 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %32 = icmp ne %struct.tree_mod_elem* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %47

34:                                               ; preds = %30
  %35 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %36 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MOD_LOG_ROOT_REPLACE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %47

41:                                               ; preds = %34
  %42 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  store %struct.tree_mod_elem* %42, %struct.tree_mod_elem** %7, align 8
  %43 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  %44 = getelementptr inbounds %struct.tree_mod_elem, %struct.tree_mod_elem* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  store i32 1, i32* %9, align 4
  br label %17

47:                                               ; preds = %40, %33
  %48 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  %49 = icmp ne %struct.tree_mod_elem* %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %6, align 8
  store %struct.tree_mod_elem* %51, %struct.tree_mod_elem** %7, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %7, align 8
  store %struct.tree_mod_elem* %53, %struct.tree_mod_elem** %3, align 8
  br label %54

54:                                               ; preds = %52, %29, %15
  %55 = load %struct.tree_mod_elem*, %struct.tree_mod_elem** %3, align 8
  ret %struct.tree_mod_elem* %55
}

declare dso_local %struct.tree_mod_elem* @tree_mod_log_search_oldest(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
