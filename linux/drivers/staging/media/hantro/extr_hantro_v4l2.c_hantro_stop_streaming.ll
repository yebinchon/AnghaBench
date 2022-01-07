; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_v4l2.c_hantro_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.hantro_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hantro_ctx*)* }

@v4l2_m2m_src_buf_remove = common dso_local global i32 0, align 4
@v4l2_m2m_dst_buf_remove = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @hantro_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.hantro_ctx*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %4 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %5 = call %struct.hantro_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %4)
  store %struct.hantro_ctx* %5, %struct.hantro_ctx** %3, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %7 = call i64 @hantro_vq_is_coded(%struct.vb2_queue* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %1
  %10 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %9
  %15 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hantro_ctx*)*, i32 (%struct.hantro_ctx*)** %18, align 8
  %20 = icmp ne i32 (%struct.hantro_ctx*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.hantro_ctx*)*, i32 (%struct.hantro_ctx*)** %25, align 8
  %27 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %28 = call i32 %26(%struct.hantro_ctx* %27)
  br label %29

29:                                               ; preds = %21, %14, %9
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %38 = load i32, i32* @v4l2_m2m_src_buf_remove, align 4
  %39 = call i32 @hantro_return_bufs(%struct.vb2_queue* %37, i32 %38)
  br label %44

40:                                               ; preds = %30
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %42 = load i32, i32* @v4l2_m2m_dst_buf_remove, align 4
  %43 = call i32 @hantro_return_bufs(%struct.vb2_queue* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %36
  ret void
}

declare dso_local %struct.hantro_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @hantro_vq_is_coded(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @hantro_return_bufs(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
