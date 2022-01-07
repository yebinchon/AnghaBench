; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_alloc_cache_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_alloc_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_cache_entry = type { i32, i32, i32 }
%struct.dfs_info3_param = type { i32 }

@dfs_cache_slab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfs_cache_entry* (i8*, %struct.dfs_info3_param*, i32)* @alloc_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfs_cache_entry* @alloc_cache_entry(i8* %0, %struct.dfs_info3_param* %1, i32 %2) #0 {
  %4 = alloca %struct.dfs_cache_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dfs_info3_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dfs_cache_entry*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.dfs_info3_param* %1, %struct.dfs_info3_param** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @dfs_cache_slab, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dfs_cache_entry* @kmem_cache_zalloc(i32 %10, i32 %11)
  store %struct.dfs_cache_entry* %12, %struct.dfs_cache_entry** %8, align 8
  %13 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %14 = icmp ne %struct.dfs_cache_entry* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.dfs_cache_entry* @ERR_PTR(i32 %17)
  store %struct.dfs_cache_entry* %18, %struct.dfs_cache_entry** %4, align 8
  br label %61

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kstrdup_const(i8* %20, i32 %21)
  %23 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %24 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %26 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* @dfs_cache_slab, align 4
  %31 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %32 = call i32 @kmem_cache_free(i32 %30, %struct.dfs_cache_entry* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.dfs_cache_entry* @ERR_PTR(i32 %34)
  store %struct.dfs_cache_entry* %35, %struct.dfs_cache_entry** %4, align 8
  br label %61

36:                                               ; preds = %19
  %37 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %38 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %37, i32 0, i32 2
  %39 = call i32 @INIT_HLIST_NODE(i32* %38)
  %40 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %41 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %40, i32 0, i32 1
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %46 = call i32 @copy_ref_data(%struct.dfs_info3_param* %43, i32 %44, %struct.dfs_cache_entry* %45, i32* null)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %51 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @kfree_const(i32 %52)
  %54 = load i32, i32* @dfs_cache_slab, align 4
  %55 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  %56 = call i32 @kmem_cache_free(i32 %54, %struct.dfs_cache_entry* %55)
  %57 = load i32, i32* %9, align 4
  %58 = call %struct.dfs_cache_entry* @ERR_PTR(i32 %57)
  store %struct.dfs_cache_entry* %58, %struct.dfs_cache_entry** %8, align 8
  br label %59

59:                                               ; preds = %49, %36
  %60 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %8, align 8
  store %struct.dfs_cache_entry* %60, %struct.dfs_cache_entry** %4, align 8
  br label %61

61:                                               ; preds = %59, %29, %15
  %62 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %4, align 8
  ret %struct.dfs_cache_entry* %62
}

declare dso_local %struct.dfs_cache_entry* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.dfs_cache_entry* @ERR_PTR(i32) #1

declare dso_local i32 @kstrdup_const(i8*, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.dfs_cache_entry*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @copy_ref_data(%struct.dfs_info3_param*, i32, %struct.dfs_cache_entry*, i32*) #1

declare dso_local i32 @kfree_const(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
