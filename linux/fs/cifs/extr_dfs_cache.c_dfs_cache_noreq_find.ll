; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_dfs_cache_noreq_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_dfs_cache_noreq_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_info3_param = type { i32 }
%struct.dfs_cache_tgt_list = type { i32 }
%struct.dfs_cache_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dfs_cache_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfs_cache_noreq_find(i8* %0, %struct.dfs_info3_param* %1, %struct.dfs_cache_tgt_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dfs_info3_param*, align 8
  %7 = alloca %struct.dfs_cache_tgt_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dfs_cache_entry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.dfs_info3_param* %1, %struct.dfs_info3_param** %6, align 8
  store %struct.dfs_cache_tgt_list* %2, %struct.dfs_cache_tgt_list** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @is_path_valid(i8* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @get_normalized_path(i8* %22, i8** %9)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %66

28:                                               ; preds = %21
  %29 = call i32 @mutex_lock(i32* @dfs_cache_list_lock)
  %30 = load i8*, i8** %9, align 8
  %31 = call %struct.dfs_cache_entry* @do_dfs_cache_find(i32 0, i32* null, i32* null, i32 0, i8* %30, i32 1)
  store %struct.dfs_cache_entry* %31, %struct.dfs_cache_entry** %10, align 8
  %32 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %33 = call i64 @IS_ERR(%struct.dfs_cache_entry* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %37 = call i32 @PTR_ERR(%struct.dfs_cache_entry* %36)
  store i32 %37, i32* %8, align 4
  br label %60

38:                                               ; preds = %28
  %39 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %6, align 8
  %40 = icmp ne %struct.dfs_info3_param* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %44 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %6, align 8
  %45 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %46 = call i32 @get_tgt_name(%struct.dfs_cache_entry* %45)
  %47 = call i32 @setup_ref(i8* %42, %struct.dfs_cache_entry* %43, %struct.dfs_info3_param* %44, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %49

48:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %41
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load %struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_list** %7, align 8
  %54 = icmp ne %struct.dfs_cache_tgt_list* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %10, align 8
  %57 = load %struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_list** %7, align 8
  %58 = call i32 @get_tgt_list(%struct.dfs_cache_entry* %56, %struct.dfs_cache_tgt_list* %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %52, %49
  br label %60

60:                                               ; preds = %59, %35
  %61 = call i32 @mutex_unlock(i32* @dfs_cache_list_lock)
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @free_normalized_path(i8* %62, i8* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %60, %26, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_path_valid(i8*) #1

declare dso_local i32 @get_normalized_path(i8*, i8**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dfs_cache_entry* @do_dfs_cache_find(i32, i32*, i32*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dfs_cache_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dfs_cache_entry*) #1

declare dso_local i32 @setup_ref(i8*, %struct.dfs_cache_entry*, %struct.dfs_info3_param*, i32) #1

declare dso_local i32 @get_tgt_name(%struct.dfs_cache_entry*) #1

declare dso_local i32 @get_tgt_list(%struct.dfs_cache_entry*, %struct.dfs_cache_tgt_list*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_normalized_path(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
