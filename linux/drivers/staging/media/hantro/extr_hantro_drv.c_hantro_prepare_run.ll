; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_prepare_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_prepare_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_prepare_run(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %4 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %5 = call %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx* %4)
  store %struct.vb2_v4l2_buffer* %5, %struct.vb2_v4l2_buffer** %3, align 8
  %6 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %11, i32 0, i32 0
  %13 = call i32 @v4l2_ctrl_request_setup(i32 %10, i32* %12)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @v4l2_ctrl_request_setup(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
