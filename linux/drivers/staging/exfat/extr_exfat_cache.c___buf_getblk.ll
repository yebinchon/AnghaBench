; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c___buf_getblk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c___buf_getblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buf_cache_t = type { i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.fs_info_t = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@FFS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.super_block*, i32)* @__buf_getblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @__buf_getblk(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buf_cache_t*, align 8
  %7 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.fs_info_t* %10, %struct.fs_info_t** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.buf_cache_t* @buf_cache_find(%struct.super_block* %11, i32 %12)
  store %struct.buf_cache_t* %13, %struct.buf_cache_t** %6, align 8
  %14 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %15 = icmp ne %struct.buf_cache_t* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %18 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %19 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %18, i32 0, i32 1
  %20 = call i32 @move_to_mru(%struct.buf_cache_t* %17, i32* %19)
  %21 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %22 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %3, align 8
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.buf_cache_t* @buf_cache_get(%struct.super_block* %27, i32 %28)
  store %struct.buf_cache_t* %29, %struct.buf_cache_t** %6, align 8
  %30 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %31 = call i32 @buf_cache_remove_hash(%struct.buf_cache_t* %30)
  %32 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %33 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %36 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %39 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %41 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %44 = call i32 @buf_cache_insert_hash(%struct.super_block* %42, %struct.buf_cache_t* %43)
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %48 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %47, i32 0, i32 1
  %49 = call i64 @sector_read(%struct.super_block* %45, i32 %46, %struct.TYPE_3__** %48, i32 1)
  %50 = load i64, i64* @FFS_SUCCESS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %26
  %53 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %54 = call i32 @buf_cache_remove_hash(%struct.buf_cache_t* %53)
  %55 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %56 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %58 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %57, i32 0, i32 3
  store i32 -1, i32* %58, align 8
  %59 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %60 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %62 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %61, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %62, align 8
  %63 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %64 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %65 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %64, i32 0, i32 1
  %66 = call i32 @move_to_lru(%struct.buf_cache_t* %63, i32* %65)
  store i32* null, i32** %3, align 8
  br label %73

67:                                               ; preds = %26
  %68 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %69 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %68, i32 0, i32 1
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %3, align 8
  br label %73

73:                                               ; preds = %67, %52, %16
  %74 = load i32*, i32** %3, align 8
  ret i32* %74
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local %struct.buf_cache_t* @buf_cache_find(%struct.super_block*, i32) #1

declare dso_local i32 @move_to_mru(%struct.buf_cache_t*, i32*) #1

declare dso_local %struct.buf_cache_t* @buf_cache_get(%struct.super_block*, i32) #1

declare dso_local i32 @buf_cache_remove_hash(%struct.buf_cache_t*) #1

declare dso_local i32 @buf_cache_insert_hash(%struct.super_block*, %struct.buf_cache_t*) #1

declare dso_local i64 @sector_read(%struct.super_block*, i32, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @move_to_lru(%struct.buf_cache_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
