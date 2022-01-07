; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_cache_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_cache.c_buf_cache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_cache_t = type { i32, %struct.buf_cache_t* }
%struct.super_block = type { i32 }
%struct.fs_info_t = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.buf_cache_t* }
%struct.TYPE_4__ = type { %struct.fs_info_t }

@LOCKBIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buf_cache_t* (%struct.super_block*, i32)* @buf_cache_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buf_cache_t* @buf_cache_get(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buf_cache_t*, align 8
  %6 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.TYPE_4__* @EXFAT_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.fs_info_t* %9, %struct.fs_info_t** %6, align 8
  %10 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %11 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.buf_cache_t*, %struct.buf_cache_t** %12, align 8
  store %struct.buf_cache_t* %13, %struct.buf_cache_t** %5, align 8
  br label %14

14:                                               ; preds = %21, %2
  %15 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %16 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @LOCKBIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %23 = getelementptr inbounds %struct.buf_cache_t, %struct.buf_cache_t* %22, i32 0, i32 1
  %24 = load %struct.buf_cache_t*, %struct.buf_cache_t** %23, align 8
  store %struct.buf_cache_t* %24, %struct.buf_cache_t** %5, align 8
  br label %14

25:                                               ; preds = %14
  %26 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  %27 = load %struct.fs_info_t*, %struct.fs_info_t** %6, align 8
  %28 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %27, i32 0, i32 0
  %29 = call i32 @move_to_mru(%struct.buf_cache_t* %26, %struct.TYPE_3__* %28)
  %30 = load %struct.buf_cache_t*, %struct.buf_cache_t** %5, align 8
  ret %struct.buf_cache_t* %30
}

declare dso_local %struct.TYPE_4__* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @move_to_mru(%struct.buf_cache_t*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
