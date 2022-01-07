; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_job_finish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_drv.c_hantro_job_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.hantro_ctx = type { i32 (%struct.hantro_ctx*, i32*, i32)*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i64 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, %struct.hantro_ctx*, i32, i32)* @hantro_job_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_job_finish(%struct.hantro_dev* %0, %struct.hantro_ctx* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hantro_dev*, align 8
  %6 = alloca %struct.hantro_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vb2_v4l2_buffer*, align 8
  %10 = alloca %struct.vb2_v4l2_buffer*, align 8
  %11 = alloca i32, align 4
  store %struct.hantro_dev* %0, %struct.hantro_dev** %5, align 8
  store %struct.hantro_ctx* %1, %struct.hantro_ctx** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %13 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_mark_last_busy(i32 %14)
  %16 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %17 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @pm_runtime_put_autosuspend(i32 %18)
  %20 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %21 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %26 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_bulk_disable(i32 %24, i32 %27)
  %29 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %32)
  store %struct.vb2_v4l2_buffer* %33, %struct.vb2_v4l2_buffer** %9, align 8
  %34 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %37)
  store %struct.vb2_v4l2_buffer* %38, %struct.vb2_v4l2_buffer** %10, align 8
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %40 = icmp ne %struct.vb2_v4l2_buffer* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  br label %96

46:                                               ; preds = %4
  %47 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %48 = icmp ne %struct.vb2_v4l2_buffer* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @WARN_ON(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %96

54:                                               ; preds = %46
  %55 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %61 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = sext i32 %64 to i64
  %67 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %68 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %69, i32 0, i32 0
  %71 = load i32 (%struct.hantro_ctx*, i32*, i32)*, i32 (%struct.hantro_ctx*, i32*, i32)** %70, align 8
  %72 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %73 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %74 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %73, i32 0, i32 0
  %75 = load i32, i32* %7, align 4
  %76 = call i32 %71(%struct.hantro_ctx* %72, i32* %74, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %54
  %80 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %54
  %82 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %9, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %82, i32 %83)
  %85 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %10, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %85, i32 %86)
  %88 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %89 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.hantro_ctx*, %struct.hantro_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @v4l2_m2m_job_finish(i32 %90, i32 %94)
  br label %96

96:                                               ; preds = %81, %53, %45
  ret void
}

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @clk_bulk_disable(i32, i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
