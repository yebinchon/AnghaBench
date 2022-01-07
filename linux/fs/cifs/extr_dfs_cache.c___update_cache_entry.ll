; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c___update_cache_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c___update_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_cache_entry = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.dfs_info3_param = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dfs_cache_entry* (i8*, %struct.dfs_info3_param*, i32)* @__update_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dfs_cache_entry* @__update_cache_entry(i8* %0, %struct.dfs_info3_param* %1, i32 %2) #0 {
  %4 = alloca %struct.dfs_cache_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dfs_info3_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dfs_cache_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.dfs_info3_param* %1, %struct.dfs_info3_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %12, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.dfs_cache_entry* @find_cache_entry(i8* %13, i32* %9)
  store %struct.dfs_cache_entry* %14, %struct.dfs_cache_entry** %10, align 8
  %15 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %16 = call i64 @IS_ERR(%struct.dfs_cache_entry* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  store %struct.dfs_cache_entry* %19, %struct.dfs_cache_entry** %4, align 8
  br label %62

20:                                               ; preds = %3
  %21 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %22 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %27 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kstrndup(i8* %31, i32 %33, i32 %34)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.dfs_cache_entry* @ERR_PTR(i32 %40)
  store %struct.dfs_cache_entry* %41, %struct.dfs_cache_entry** %4, align 8
  br label %62

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %45 = call i32 @free_tgts(%struct.dfs_cache_entry* %44)
  %46 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %47 = getelementptr inbounds %struct.dfs_cache_entry, %struct.dfs_cache_entry* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @copy_ref_data(%struct.dfs_info3_param* %48, i32 %49, %struct.dfs_cache_entry* %50, i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @kfree(i8* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %43
  %58 = load i32, i32* %8, align 4
  %59 = call %struct.dfs_cache_entry* @ERR_PTR(i32 %58)
  store %struct.dfs_cache_entry* %59, %struct.dfs_cache_entry** %10, align 8
  br label %60

60:                                               ; preds = %57, %43
  %61 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  store %struct.dfs_cache_entry* %61, %struct.dfs_cache_entry** %4, align 8
  br label %62

62:                                               ; preds = %60, %38, %18
  %63 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %4, align 8
  ret %struct.dfs_cache_entry* %63
}

declare dso_local %struct.dfs_cache_entry* @find_cache_entry(i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dfs_cache_entry*) #1

declare dso_local i8* @kstrndup(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.dfs_cache_entry* @ERR_PTR(i32) #1

declare dso_local i32 @free_tgts(%struct.dfs_cache_entry*) #1

declare dso_local i32 @copy_ref_data(%struct.dfs_info3_param*, i32, %struct.dfs_cache_entry*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
