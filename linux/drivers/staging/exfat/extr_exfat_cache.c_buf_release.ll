; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buf_cache_t = type { i32, i32*, i64, i32 }
%struct.fs_info_t = type { i32 }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@b_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_release(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buf_cache_t*, align 8
  %6 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.fs_info_t* %9, %struct.fs_info_t** %6, align 8
  %10 = call i32 @down(i32* @b_sem)
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.buf_cache_t* @buf_cache_find(%struct.super_block* %11, i32 %12)
  store %struct.buf_cache_t* %13, %struct.buf_cache_t** %5, align 8
  %14 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %15 = call i64 @likely(%struct.buf_cache_t* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  %18 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %19 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 8
  %20 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %21 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %20, i32 0, i32 3
  store i32 -1, i32* %21, align 8
  %22 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %23 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %25 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %30 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @__brelse(i32* %31)
  %33 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %34 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %17
  %36 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %37 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %38 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %37, i32 0, i32 0
  %39 = call i32 @move_to_lru(%struct.buf_cache_t* %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %2
  %41 = call i32 @up(i32* @b_sem)
  ret void
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.buf_cache_t* @buf_cache_find(%struct.super_block*, i32) #1

declare dso_local i64 @likely(%struct.buf_cache_t*) #1

declare dso_local i32 @__brelse(i32*) #1

declare dso_local i32 @move_to_lru(%struct.buf_cache_t*, i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
