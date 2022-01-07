; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_cache_insert_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_cache_insert_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buf_cache_t = type { i32, %struct.buf_cache_t*, %struct.buf_cache_t* }
%struct.fs_info_t = type { i32, %struct.buf_cache_t* }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@FAT_CACHE_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.buf_cache_t*)* @FAT_cache_insert_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FAT_cache_insert_hash(%struct.super_block* %0, %struct.buf_cache_t* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buf_cache_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.buf_cache_t*, align 8
  %7 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.buf_cache_t* %1, %struct.buf_cache_t** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.fs_info_t* %10, %struct.fs_info_t** %7, align 8
  %11 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %12 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %15 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %18 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %16, %19
  %21 = add nsw i32 %13, %20
  %22 = load i32, i32* @FAT_CACHE_HASH_SIZE, align 4
  %23 = sub nsw i32 %22, 1
  %24 = and i32 %21, %23
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %5, align 8
  %26 = load %struct.fs_info_t*, %struct.fs_info_t** %7, align 8
  %27 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %26, i32 0, i32 1
  %28 = load %struct.buf_cache_t*, %struct.buf_cache_t** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %28, i64 %29
  store %struct.buf_cache_t* %30, %struct.buf_cache_t** %6, align 8
  %31 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %32 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %31, i32 0, i32 1
  %33 = load %struct.buf_cache_t*, %struct.buf_cache_t** %32, align 8
  %34 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %35 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %34, i32 0, i32 1
  store %struct.buf_cache_t* %33, %struct.buf_cache_t** %35, align 8
  %36 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %37 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %38 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %37, i32 0, i32 2
  store %struct.buf_cache_t* %36, %struct.buf_cache_t** %38, align 8
  %39 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %40 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %41 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %40, i32 0, i32 1
  %42 = load %struct.buf_cache_t*, %struct.buf_cache_t** %41, align 8
  %43 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %42, i32 0, i32 2
  store %struct.buf_cache_t* %39, %struct.buf_cache_t** %43, align 8
  %44 = load %struct.buf_cache_t*, %struct.buf_cache_t** %4, align 8
  %45 = load %struct.buf_cache_t*, %struct.buf_cache_t** %6, align 8
  %46 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %45, i32 0, i32 1
  store %struct.buf_cache_t* %44, %struct.buf_cache_t** %46, align 8
  ret void
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
