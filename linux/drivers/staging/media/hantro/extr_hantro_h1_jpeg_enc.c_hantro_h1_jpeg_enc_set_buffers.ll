; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h1_jpeg_enc.c_hantro_h1_jpeg_enc_set_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h1_jpeg_enc.c_hantro_h1_jpeg_enc_set_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }
%struct.hantro_ctx = type { %struct.TYPE_4__, %struct.v4l2_pix_format_mplane }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32 }
%struct.vb2_buffer = type { i32 }

@H1_REG_ADDR_OUTPUT_STREAM = common dso_local global i32 0, align 4
@H1_REG_STR_BUF_LIMIT = common dso_local global i32 0, align 4
@H1_REG_ADDR_IN_PLANE_0 = common dso_local global i32 0, align 4
@H1_REG_ADDR_IN_PLANE_1 = common dso_local global i32 0, align 4
@H1_REG_ADDR_IN_PLANE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_dev*, %struct.hantro_ctx*, %struct.vb2_buffer*)* @hantro_h1_jpeg_enc_set_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hantro_h1_jpeg_enc_set_buffers(%struct.hantro_dev* %0, %struct.hantro_ctx* %1, %struct.vb2_buffer* %2) #0 {
  %4 = alloca %struct.hantro_dev*, align 8
  %5 = alloca %struct.hantro_ctx*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %8 = alloca [3 x i32], align 4
  store %struct.hantro_dev* %0, %struct.hantro_dev** %4, align 8
  store %struct.hantro_ctx* %1, %struct.hantro_ctx** %5, align 8
  store %struct.vb2_buffer* %2, %struct.vb2_buffer** %6, align 8
  %9 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %9, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %10, %struct.v4l2_pix_format_mplane** %7, align 8
  %11 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 3
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @H1_REG_ADDR_OUTPUT_STREAM, align 4
  %24 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %17, i32 %22, i32 %23)
  %25 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %26 = load %struct.hantro_ctx*, %struct.hantro_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @H1_REG_STR_BUF_LIMIT, align 4
  %32 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %25, i32 %30, i32 %31)
  %33 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %3
  %38 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %39 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %38, i32 0)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %39, i32* %40, align 4
  %41 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @H1_REG_ADDR_IN_PLANE_0, align 4
  %45 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %41, i32 %43, i32 %44)
  br label %94

46:                                               ; preds = %3
  %47 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %53 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %52, i32 0)
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %56 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %55, i32 1)
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @H1_REG_ADDR_IN_PLANE_0, align 4
  %62 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %58, i32 %60, i32 %61)
  %63 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @H1_REG_ADDR_IN_PLANE_1, align 4
  %67 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %63, i32 %65, i32 %66)
  br label %93

68:                                               ; preds = %46
  %69 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %70 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %69, i32 0)
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %73 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %72, i32 1)
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %76 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %75, i32 2)
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %76, i32* %77, align 4
  %78 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @H1_REG_ADDR_IN_PLANE_0, align 4
  %82 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %78, i32 %80, i32 %81)
  %83 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @H1_REG_ADDR_IN_PLANE_1, align 4
  %87 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %83, i32 %85, i32 %86)
  %88 = load %struct.hantro_dev*, %struct.hantro_dev** %4, align 8
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @H1_REG_ADDR_IN_PLANE_2, align 4
  %92 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %88, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %68, %51
  br label %94

94:                                               ; preds = %93, %37
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @vepu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
