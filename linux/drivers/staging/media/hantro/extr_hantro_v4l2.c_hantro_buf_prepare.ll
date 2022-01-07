; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i32 }
%struct.hantro_ctx = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @hantro_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hantro_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca %struct.hantro_ctx*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  store %struct.vb2_queue* %8, %struct.vb2_queue** %4, align 8
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.hantro_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.hantro_ctx* %10, %struct.hantro_ctx** %5, align 8
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %21, i32 0, i32 2
  %23 = call i32 @hantro_buf_plane_check(%struct.vb2_buffer* %17, i32 %20, i32* %22)
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %26 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %29, i32 0, i32 0
  %31 = call i32 @hantro_buf_plane_check(%struct.vb2_buffer* %25, i32 %28, i32* %30)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.hantro_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @hantro_buf_plane_check(%struct.vb2_buffer*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
