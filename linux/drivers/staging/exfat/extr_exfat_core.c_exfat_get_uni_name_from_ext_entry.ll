; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_get_uni_name_from_ext_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_exfat_get_uni_name_from_ext_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.dentry_t = type { i32 }
%struct.entry_set_cache_t = type { i32 }
%struct.fs_info_t = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (%struct.dentry_t*)* }
%struct.TYPE_4__ = type { %struct.fs_info_t }
%struct.name_dentry_t = type { i32 }

@ES_ALL_ENTRIES = common dso_local global i32 0, align 4
@TYPE_EXTEND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exfat_get_uni_name_from_ext_entry(%struct.super_block* %0, %struct.chain_t* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.chain_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry_t*, align 8
  %11 = alloca %struct.entry_set_cache_t*, align 8
  %12 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.chain_t* %1, %struct.chain_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.fs_info_t* %15, %struct.fs_info_t** %12, align 8
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load %struct.chain_t*, %struct.chain_t** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ES_ALL_ENTRIES, align 4
  %20 = call %struct.entry_set_cache_t* @get_entry_set_in_dir(%struct.super_block* %16, %struct.chain_t* %17, i32 %18, i32 %19, %struct.dentry_t** %10)
  store %struct.entry_set_cache_t* %20, %struct.entry_set_cache_t** %11, align 8
  %21 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %11, align 8
  %22 = icmp ne %struct.entry_set_cache_t* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %11, align 8
  %25 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %35

28:                                               ; preds = %23, %4
  %29 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %11, align 8
  %30 = icmp ne %struct.entry_set_cache_t* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %11, align 8
  %33 = call i32 @release_entry_set(%struct.entry_set_cache_t* %32)
  br label %34

34:                                               ; preds = %31, %28
  br label %73

35:                                               ; preds = %23
  %36 = load %struct.dentry_t*, %struct.dentry_t** %10, align 8
  %37 = getelementptr inbounds %struct.dentry_t, %struct.dentry_t* %36, i64 2
  store %struct.dentry_t* %37, %struct.dentry_t** %10, align 8
  store i32 2, i32* %9, align 4
  br label %38

38:                                               ; preds = %64, %35
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %11, align 8
  %41 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %38
  %45 = load %struct.fs_info_t*, %struct.fs_info_t** %12, align 8
  %46 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64 (%struct.dentry_t*)*, i64 (%struct.dentry_t*)** %48, align 8
  %50 = load %struct.dentry_t*, %struct.dentry_t** %10, align 8
  %51 = call i64 %49(%struct.dentry_t* %50)
  %52 = load i64, i64* @TYPE_EXTEND, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.dentry_t*, %struct.dentry_t** %10, align 8
  %56 = bitcast %struct.dentry_t* %55 to %struct.name_dentry_t*
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @extract_uni_name_from_name_entry(%struct.name_dentry_t* %56, i32* %57, i32 %58)
  br label %61

60:                                               ; preds = %44
  br label %70

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 15
  store i32* %63, i32** %8, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load %struct.dentry_t*, %struct.dentry_t** %10, align 8
  %68 = getelementptr inbounds %struct.dentry_t, %struct.dentry_t* %67, i32 1
  store %struct.dentry_t* %68, %struct.dentry_t** %10, align 8
  br label %38

69:                                               ; preds = %38
  br label %70

70:                                               ; preds = %69, %60
  %71 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %11, align 8
  %72 = call i32 @release_entry_set(%struct.entry_set_cache_t* %71)
  br label %73

73:                                               ; preds = %70, %34
  ret void
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.entry_set_cache_t* @get_entry_set_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32, %struct.dentry_t**) #1

declare dso_local i32 @release_entry_set(%struct.entry_set_cache_t*) #1

declare dso_local i32 @extract_uni_name_from_name_entry(%struct.name_dentry_t*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
