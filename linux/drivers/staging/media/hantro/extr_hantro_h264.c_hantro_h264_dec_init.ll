; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_hantro_h264_dec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h264.c_hantro_h264_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_3__, %struct.hantro_h264_dec_hw_ctx, %struct.hantro_dev* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.hantro_h264_dec_hw_ctx = type { i32, %struct.hantro_aux_buf }
%struct.hantro_aux_buf = type { i32, %struct.hantro_h264_dec_priv_tbl*, i32 }
%struct.hantro_h264_dec_priv_tbl = type { i32 }
%struct.hantro_dev = type { i32 }
%struct.v4l2_pix_format_mplane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@h264_cabac_table = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hantro_h264_dec_init(%struct.hantro_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca %struct.hantro_h264_dec_hw_ctx*, align 8
  %6 = alloca %struct.hantro_aux_buf*, align 8
  %7 = alloca %struct.hantro_h264_dec_priv_tbl*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  %9 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %9, i32 0, i32 2
  %11 = load %struct.hantro_dev*, %struct.hantro_dev** %10, align 8
  store %struct.hantro_dev* %11, %struct.hantro_dev** %4, align 8
  %12 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %12, i32 0, i32 1
  store %struct.hantro_h264_dec_hw_ctx* %13, %struct.hantro_h264_dec_hw_ctx** %5, align 8
  %14 = load %struct.hantro_h264_dec_hw_ctx*, %struct.hantro_h264_dec_hw_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.hantro_h264_dec_hw_ctx, %struct.hantro_h264_dec_hw_ctx* %14, i32 0, i32 1
  store %struct.hantro_aux_buf* %15, %struct.hantro_aux_buf** %6, align 8
  %16 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hantro_dev, %struct.hantro_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %6, align 8
  %20 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %19, i32 0, i32 2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.hantro_h264_dec_priv_tbl* @dma_alloc_coherent(i32 %18, i32 4, i32* %20, i32 %21)
  %23 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %6, align 8
  %24 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %23, i32 0, i32 1
  store %struct.hantro_h264_dec_priv_tbl* %22, %struct.hantro_h264_dec_priv_tbl** %24, align 8
  %25 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %6, align 8
  %26 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %25, i32 0, i32 1
  %27 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %26, align 8
  %28 = icmp ne %struct.hantro_h264_dec_priv_tbl* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %63

32:                                               ; preds = %1
  %33 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %6, align 8
  %34 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load %struct.hantro_aux_buf*, %struct.hantro_aux_buf** %6, align 8
  %36 = getelementptr inbounds %struct.hantro_aux_buf, %struct.hantro_aux_buf* %35, i32 0, i32 1
  %37 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %36, align 8
  store %struct.hantro_h264_dec_priv_tbl* %37, %struct.hantro_h264_dec_priv_tbl** %7, align 8
  %38 = load %struct.hantro_h264_dec_priv_tbl*, %struct.hantro_h264_dec_priv_tbl** %7, align 8
  %39 = getelementptr inbounds %struct.hantro_h264_dec_priv_tbl, %struct.hantro_h264_dec_priv_tbl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @h264_cabac_table, align 4
  %42 = call i32 @memcpy(i32 %40, i32 %41, i32 4)
  %43 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @v4l2_fill_pixfmt_mp(%struct.v4l2_pix_format_mplane* %8, i32 %46, i32 %50, i32 %54)
  %56 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %8, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hantro_h264_dec_hw_ctx*, %struct.hantro_h264_dec_hw_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.hantro_h264_dec_hw_ctx, %struct.hantro_h264_dec_hw_ctx* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %32, %29
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.hantro_h264_dec_priv_tbl* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @v4l2_fill_pixfmt_mp(%struct.v4l2_pix_format_mplane*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
