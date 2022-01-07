; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_release_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_FAT_release_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buf_cache_t = type { i32, %struct.buf_cache_t*, i32*, i64, i32 }
%struct.fs_info_t = type { i32, %struct.buf_cache_t }
%struct.TYPE_2__ = type { %struct.fs_info_t }

@f_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FAT_release_all(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.buf_cache_t*, align 8
  %4 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.TYPE_2__* @EXFAT_SB(%struct.super_block* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.fs_info_t* %7, %struct.fs_info_t** %4, align 8
  %8 = call i32 @down(i32* @f_sem)
  %9 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %10 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %10, i32 0, i32 1
  %12 = load %struct.buf_cache_t*, %struct.buf_cache_t** %11, align 8
  store %struct.buf_cache_t* %12, %struct.buf_cache_t** %3, align 8
  br label %13

13:                                               ; preds = %45, %1
  %14 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %15 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %16 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %15, i32 0, i32 1
  %17 = icmp ne %struct.buf_cache_t* %14, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %13
  %19 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %20 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.fs_info_t*, %struct.fs_info_t** %4, align 8
  %23 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %28 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %30 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %29, i32 0, i32 4
  store i32 -1, i32* %30, align 8
  %31 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %32 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %34 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %39 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @__brelse(i32* %40)
  %42 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %43 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %26
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.buf_cache_t*, %struct.buf_cache_t** %3, align 8
  %47 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %46, i32 0, i32 1
  %48 = load %struct.buf_cache_t*, %struct.buf_cache_t** %47, align 8
  store %struct.buf_cache_t* %48, %struct.buf_cache_t** %3, align 8
  br label %13

49:                                               ; preds = %13
  %50 = call i32 @up(i32* @f_sem)
  ret void
}

declare dso_local %struct.TYPE_2__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local i32 @__brelse(i32*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
