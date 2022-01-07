; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_cache_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_cache_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_cache_t = type { i64, i32, i32, %struct.buf_cache_t* }
%struct.super_block = type { i32 }
%struct.fs_info_t = type { i32, i64, %struct.buf_cache_t* }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@BUF_CACHE_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf_cache_t* (%struct.super_block*, i32)* @buf_cache_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf_cache_t* @buf_cache_find(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.buf_cache_t*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf_cache_t*, align 8
  %8 = alloca %struct.buf_cache_t*, align 8
  %9 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.fs_info_t* %12, %struct.fs_info_t** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %16 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %14, %17
  %19 = add nsw i32 %13, %18
  %20 = load i32, i32* @BUF_CACHE_HASH_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %25 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %24, i32 0, i32 2
  %26 = load %struct.buf_cache_t*, %struct.buf_cache_t** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %26, i64 %27
  store %struct.buf_cache_t* %28, %struct.buf_cache_t** %8, align 8
  %29 = load %struct.buf_cache_t*, %struct.buf_cache_t** %8, align 8
  %30 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %29, i32 0, i32 3
  %31 = load %struct.buf_cache_t*, %struct.buf_cache_t** %30, align 8
  store %struct.buf_cache_t* %31, %struct.buf_cache_t** %7, align 8
  br label %32

32:                                               ; preds = %57, %2
  %33 = load %struct.buf_cache_t*, %struct.buf_cache_t** %7, align 8
  %34 = load %struct.buf_cache_t*, %struct.buf_cache_t** %8, align 8
  %35 = icmp ne %struct.buf_cache_t* %33, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %32
  %37 = load %struct.buf_cache_t*, %struct.buf_cache_t** %7, align 8
  %38 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.fs_info_t*, %struct.fs_info_t** %9, align 8
  %41 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.buf_cache_t*, %struct.buf_cache_t** %7, align 8
  %46 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.buf_cache_t*, %struct.buf_cache_t** %7, align 8
  %52 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @touch_buffer(i32 %53)
  %55 = load %struct.buf_cache_t*, %struct.buf_cache_t** %7, align 8
  store %struct.buf_cache_t* %55, %struct.buf_cache_t** %3, align 8
  br label %62

56:                                               ; preds = %44, %36
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.buf_cache_t*, %struct.buf_cache_t** %7, align 8
  %59 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %58, i32 0, i32 3
  %60 = load %struct.buf_cache_t*, %struct.buf_cache_t** %59, align 8
  store %struct.buf_cache_t* %60, %struct.buf_cache_t** %7, align 8
  br label %32

61:                                               ; preds = %32
  store %struct.buf_cache_t* null, %struct.buf_cache_t** %3, align 8
  br label %62

62:                                               ; preds = %61, %50
  %63 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  ret %struct.buf_cache_t* %63
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @touch_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
