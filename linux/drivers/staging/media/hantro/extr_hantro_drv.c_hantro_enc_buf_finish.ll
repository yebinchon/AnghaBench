; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_enc_buf_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_enc_buf_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_6__*, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.vb2_buffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hantro_ctx*, %struct.vb2_buffer*, i32)* @hantro_enc_buf_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_enc_buf_finish(%struct.hantro_ctx* %0, %struct.vb2_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hantro_ctx*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %5, align 8
  store %struct.vb2_buffer* %1, %struct.vb2_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %10 = call i64 @vb2_plane_size(%struct.vb2_buffer* %9, i32 0)
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %10, %15
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* %8, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %61

24:                                               ; preds = %3
  %25 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %24
  %32 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %33 = call i64 @vb2_plane_vaddr(%struct.vb2_buffer* %32, i32 0)
  %34 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %33, %38
  %40 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @memcpy(i64 %39, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %24
  %48 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i64 %55, i64* %60, align 8
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %47, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @vb2_plane_vaddr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
