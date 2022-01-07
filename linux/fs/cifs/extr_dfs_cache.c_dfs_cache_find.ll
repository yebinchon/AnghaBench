; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_dfs_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_dfs_cache.c_dfs_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_ses = type { i32 }
%struct.nls_table = type { i32 }
%struct.dfs_info3_param = type { i32 }
%struct.dfs_cache_tgt_list = type { i32 }
%struct.dfs_cache_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@dfs_cache_list_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfs_cache_find(i32 %0, %struct.cifs_ses* %1, %struct.nls_table* %2, i32 %3, i8* %4, %struct.dfs_info3_param* %5, %struct.dfs_cache_tgt_list* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_ses*, align 8
  %11 = alloca %struct.nls_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.dfs_info3_param*, align 8
  %15 = alloca %struct.dfs_cache_tgt_list*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.dfs_cache_entry*, align 8
  store i32 %0, i32* %9, align 4
  store %struct.cifs_ses* %1, %struct.cifs_ses** %10, align 8
  store %struct.nls_table* %2, %struct.nls_table** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.dfs_info3_param* %5, %struct.dfs_info3_param** %14, align 8
  store %struct.dfs_cache_tgt_list* %6, %struct.dfs_cache_tgt_list** %15, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = call i32 @is_path_valid(i8* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %78

29:                                               ; preds = %7
  %30 = load i8*, i8** %13, align 8
  %31 = call i32 @get_normalized_path(i8* %30, i8** %17)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %8, align 4
  br label %78

36:                                               ; preds = %29
  %37 = call i32 @mutex_lock(i32* @dfs_cache_list_lock)
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.cifs_ses*, %struct.cifs_ses** %10, align 8
  %40 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = call %struct.dfs_cache_entry* @do_dfs_cache_find(i32 %38, %struct.cifs_ses* %39, %struct.nls_table* %40, i32 %41, i8* %42, i32 0)
  store %struct.dfs_cache_entry* %43, %struct.dfs_cache_entry** %18, align 8
  %44 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %18, align 8
  %45 = call i32 @IS_ERR(%struct.dfs_cache_entry* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %36
  %48 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %14, align 8
  %49 = icmp ne %struct.dfs_info3_param* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i8*, i8** %13, align 8
  %52 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %18, align 8
  %53 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %14, align 8
  %54 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %18, align 8
  %55 = call i32 @get_tgt_name(%struct.dfs_cache_entry* %54)
  %56 = call i32 @setup_ref(i8* %51, %struct.dfs_cache_entry* %52, %struct.dfs_info3_param* %53, i32 %55)
  store i32 %56, i32* %16, align 4
  br label %58

57:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_list** %15, align 8
  %63 = icmp ne %struct.dfs_cache_tgt_list* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %18, align 8
  %66 = load %struct.dfs_cache_tgt_list*, %struct.dfs_cache_tgt_list** %15, align 8
  %67 = call i32 @get_tgt_list(%struct.dfs_cache_entry* %65, %struct.dfs_cache_tgt_list* %66)
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %64, %61, %58
  br label %72

69:                                               ; preds = %36
  %70 = load %struct.dfs_cache_entry*, %struct.dfs_cache_entry** %18, align 8
  %71 = call i32 @PTR_ERR(%struct.dfs_cache_entry* %70)
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %69, %68
  %73 = call i32 @mutex_unlock(i32* @dfs_cache_list_lock)
  %74 = load i8*, i8** %13, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = call i32 @free_normalized_path(i8* %74, i8* %75)
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %34, %26
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_path_valid(i8*) #1

declare dso_local i32 @get_normalized_path(i8*, i8**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dfs_cache_entry* @do_dfs_cache_find(i32, %struct.cifs_ses*, %struct.nls_table*, i32, i8*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dfs_cache_entry*) #1

declare dso_local i32 @setup_ref(i8*, %struct.dfs_cache_entry*, %struct.dfs_info3_param*, i32) #1

declare dso_local i32 @get_tgt_name(%struct.dfs_cache_entry*) #1

declare dso_local i32 @get_tgt_list(%struct.dfs_cache_entry*, %struct.dfs_cache_tgt_list*) #1

declare dso_local i32 @PTR_ERR(%struct.dfs_cache_entry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_normalized_path(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
