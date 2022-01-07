; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_write_partial_entries_in_entry_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_write_partial_entries_in_entry_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.entry_set_cache_t = type { i8*, i32, i64, i64, i32 }
%struct.dentry_t = type { i32 }
%struct.fs_info_t = type { i32 }
%struct.bd_info_t = type { i64, i64 }
%struct.chain_t = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bd_info_t, %struct.fs_info_t }

@FFS_ERROR = common dso_local global i64 0, align 8
@FFS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @write_partial_entries_in_entry_set(%struct.super_block* %0, %struct.entry_set_cache_t* %1, %struct.dentry_t* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.entry_set_cache_t*, align 8
  %8 = alloca %struct.dentry_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.fs_info_t*, align 8
  %16 = alloca %struct.bd_info_t*, align 8
  %17 = alloca %struct.chain_t, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.entry_set_cache_t* %1, %struct.entry_set_cache_t** %7, align 8
  store %struct.dentry_t* %2, %struct.dentry_t** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.fs_info_t* %20, %struct.fs_info_t** %15, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.bd_info_t* %23, %struct.bd_info_t** %16, align 8
  %24 = load %struct.dentry_t*, %struct.dentry_t** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dentry_t, %struct.dentry_t* %24, i64 %26
  %28 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %29 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %28, i32 0, i32 0
  %30 = bitcast i8** %29 to %struct.dentry_t*
  %31 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %32 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.dentry_t, %struct.dentry_t* %30, i64 %34
  %36 = icmp ugt %struct.dentry_t* %27, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i64, i64* @FFS_ERROR, align 8
  store i64 %38, i64* %5, align 8
  br label %111

39:                                               ; preds = %4
  %40 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %41 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @GET_CLUSTER_FROM_SECTOR(i64 %42)
  %44 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %17, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %46 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %17, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %17, i32 0, i32 0
  store i32 -1, i32* %49, align 4
  %50 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %51 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.chain_t, %struct.chain_t* %17, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @START_SECTOR(i32 %54)
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.bd_info_t*, %struct.bd_info_t** %16, align 8
  %58 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = shl i64 %56, %59
  store i64 %60, i64* %11, align 8
  %61 = load %struct.dentry_t*, %struct.dentry_t** %8, align 8
  %62 = bitcast %struct.dentry_t* %61 to i8**
  %63 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %64 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %63, i32 0, i32 0
  %65 = ptrtoint i8** %62 to i64
  %66 = ptrtoint i8** %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %70 = getelementptr inbounds %struct.entry_set_cache_t, %struct.entry_set_cache_t* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load i64, i64* %11, align 8
  %74 = add nsw i64 %73, %72
  store i64 %74, i64* %11, align 8
  %75 = load %struct.super_block*, %struct.super_block** %6, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @_walk_fat_chain(%struct.super_block* %75, %struct.chain_t* %17, i64 %76, i32* %13)
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @FFS_SUCCESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %39
  %82 = load i64, i64* %10, align 8
  store i64 %82, i64* %5, align 8
  br label %111

83:                                               ; preds = %39
  %84 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %85 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %11, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.bd_info_t*, %struct.bd_info_t** %16, align 8
  %93 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = and i64 %91, %94
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.bd_info_t*, %struct.bd_info_t** %16, align 8
  %98 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = ashr i64 %96, %99
  store i64 %100, i64* %14, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i64 @START_SECTOR(i32 %101)
  %103 = load i64, i64* %14, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %14, align 8
  %105 = load %struct.super_block*, %struct.super_block** %6, align 8
  %106 = load %struct.entry_set_cache_t*, %struct.entry_set_cache_t** %7, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @__write_partial_entries_in_entry_set(%struct.super_block* %105, %struct.entry_set_cache_t* %106, i64 %107, i64 %108, i32 %109)
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %83, %81, %37
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @GET_CLUSTER_FROM_SECTOR(i64) #1

declare dso_local i64 @START_SECTOR(i32) #1

declare dso_local i64 @_walk_fat_chain(%struct.super_block*, %struct.chain_t*, i64, i32*) #1

declare dso_local i64 @__write_partial_entries_in_entry_set(%struct.super_block*, %struct.entry_set_cache_t*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
