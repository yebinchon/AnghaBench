; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_alloc_tgt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_alloc_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_cache_tgt = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfs_cache_tgt* (i8*)* @alloc_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfs_cache_tgt* @alloc_tgt(i8* %0) #0 {
  %2 = alloca %struct.dfs_cache_tgt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dfs_cache_tgt*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.dfs_cache_tgt* @kmalloc(i32 8, i32 %5)
  store %struct.dfs_cache_tgt* %6, %struct.dfs_cache_tgt** %4, align 8
  %7 = load %struct.dfs_cache_tgt*, %struct.dfs_cache_tgt** %4, align 8
  %8 = icmp ne %struct.dfs_cache_tgt* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.dfs_cache_tgt* @ERR_PTR(i32 %11)
  store %struct.dfs_cache_tgt* %12, %struct.dfs_cache_tgt** %2, align 8
  br label %36

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @kstrndup(i8* %14, i32 %16, i32 %17)
  %19 = load %struct.dfs_cache_tgt*, %struct.dfs_cache_tgt** %4, align 8
  %20 = getelementptr inbounds %struct.dfs_cache_tgt, %struct.dfs_cache_tgt* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dfs_cache_tgt*, %struct.dfs_cache_tgt** %4, align 8
  %22 = getelementptr inbounds %struct.dfs_cache_tgt, %struct.dfs_cache_tgt* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %13
  %26 = load %struct.dfs_cache_tgt*, %struct.dfs_cache_tgt** %4, align 8
  %27 = call i32 @kfree(%struct.dfs_cache_tgt* %26)
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.dfs_cache_tgt* @ERR_PTR(i32 %29)
  store %struct.dfs_cache_tgt* %30, %struct.dfs_cache_tgt** %2, align 8
  br label %36

31:                                               ; preds = %13
  %32 = load %struct.dfs_cache_tgt*, %struct.dfs_cache_tgt** %4, align 8
  %33 = getelementptr inbounds %struct.dfs_cache_tgt, %struct.dfs_cache_tgt* %32, i32 0, i32 0
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.dfs_cache_tgt*, %struct.dfs_cache_tgt** %4, align 8
  store %struct.dfs_cache_tgt* %35, %struct.dfs_cache_tgt** %2, align 8
  br label %36

36:                                               ; preds = %31, %25, %9
  %37 = load %struct.dfs_cache_tgt*, %struct.dfs_cache_tgt** %2, align 8
  ret %struct.dfs_cache_tgt* %37
}

declare dso_local %struct.dfs_cache_tgt* @kmalloc(i32, i32) #1

declare dso_local %struct.dfs_cache_tgt* @ERR_PTR(i32) #1

declare dso_local i32 @kstrndup(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(%struct.dfs_cache_tgt*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
