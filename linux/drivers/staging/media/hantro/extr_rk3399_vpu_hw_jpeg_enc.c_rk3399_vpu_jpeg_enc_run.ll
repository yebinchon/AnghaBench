; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_jpeg_enc.c_rk3399_vpu_jpeg_enc_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3399_vpu_hw_jpeg_enc.c_rk3399_vpu_jpeg_enc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.hantro_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hantro_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.hantro_jpeg_ctx = type { i32, i32, i32, i32 }

@VEPU_REG_ENCODE_FORMAT_JPEG = common dso_local global i32 0, align 4
@VEPU_REG_ENCODE_START = common dso_local global i32 0, align 4
@VEPU_REG_OUTPUT_SWAP32 = common dso_local global i32 0, align 4
@VEPU_REG_OUTPUT_SWAP16 = common dso_local global i32 0, align 4
@VEPU_REG_OUTPUT_SWAP8 = common dso_local global i32 0, align 4
@VEPU_REG_INPUT_SWAP8 = common dso_local global i32 0, align 4
@VEPU_REG_INPUT_SWAP16 = common dso_local global i32 0, align 4
@VEPU_REG_INPUT_SWAP32 = common dso_local global i32 0, align 4
@VEPU_REG_DATA_ENDIAN = common dso_local global i32 0, align 4
@VEPU_REG_AXI_CTRL = common dso_local global i32 0, align 4
@VEPU_REG_FRAME_TYPE_INTRA = common dso_local global i32 0, align 4
@VEPU_REG_ENCODE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rk3399_vpu_jpeg_enc_run(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_dev*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.hantro_jpeg_ctx, align 4
  %7 = alloca i32, align 4
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %8 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %8, i32 0, i32 3
  %10 = load %struct.hantro_dev*, %struct.hantro_dev** %9, align 8
  store %struct.hantro_dev* %10, %struct.hantro_dev** %3, align 8
  %11 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %12 = call %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx* %11)
  store %struct.vb2_v4l2_buffer* %12, %struct.vb2_v4l2_buffer** %4, align 8
  %13 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %14 = call %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx* %13)
  store %struct.vb2_v4l2_buffer* %14, %struct.vb2_v4l2_buffer** %5, align 8
  %15 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %16 = call i32 @hantro_prepare_run(%struct.hantro_ctx* %15)
  %17 = call i32 @memset(%struct.hantro_jpeg_ctx* %6, i32 0, i32 16)
  %18 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %19 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %18, i32 0, i32 0
  %20 = call i32 @vb2_plane_vaddr(i32* %19, i32 0)
  %21 = getelementptr inbounds %struct.hantro_jpeg_ctx, %struct.hantro_jpeg_ctx* %6, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.hantro_jpeg_ctx, %struct.hantro_jpeg_ctx* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.hantro_jpeg_ctx, %struct.hantro_jpeg_ctx* %6, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.hantro_jpeg_ctx, %struct.hantro_jpeg_ctx* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = call i32 @hantro_jpeg_header_assemble(%struct.hantro_jpeg_ctx* %6)
  %37 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %38 = load i32, i32* @VEPU_REG_ENCODE_FORMAT_JPEG, align 4
  %39 = load i32, i32* @VEPU_REG_ENCODE_START, align 4
  %40 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %37, i32 %38, i32 %39)
  %41 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %42 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %43 = call i32 @rk3399_vpu_set_src_img_ctrl(%struct.hantro_dev* %41, %struct.hantro_ctx* %42)
  %44 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %45 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %46, i32 0, i32 0
  %48 = call i32 @rk3399_vpu_jpeg_enc_set_buffers(%struct.hantro_dev* %44, %struct.hantro_ctx* %45, i32* %47)
  %49 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %50 = call i32 @hantro_jpeg_get_qtable(%struct.hantro_jpeg_ctx* %6, i32 0)
  %51 = call i32 @hantro_jpeg_get_qtable(%struct.hantro_jpeg_ctx* %6, i32 1)
  %52 = call i32 @rk3399_vpu_jpeg_enc_set_qtable(%struct.hantro_dev* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @VEPU_REG_OUTPUT_SWAP32, align 4
  %54 = load i32, i32* @VEPU_REG_OUTPUT_SWAP16, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @VEPU_REG_OUTPUT_SWAP8, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VEPU_REG_INPUT_SWAP8, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @VEPU_REG_INPUT_SWAP16, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @VEPU_REG_INPUT_SWAP32, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @VEPU_REG_DATA_ENDIAN, align 4
  %67 = call i32 @vepu_write(%struct.hantro_dev* %64, i32 %65, i32 %66)
  %68 = call i32 @VEPU_REG_AXI_CTRL_BURST_LEN(i32 16)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @VEPU_REG_AXI_CTRL, align 4
  %72 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %74 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @JPEG_MB_WIDTH(i32 %76)
  %78 = call i32 @VEPU_REG_MB_WIDTH(i32 %77)
  %79 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %80 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @JPEG_MB_HEIGHT(i32 %82)
  %84 = call i32 @VEPU_REG_MB_HEIGHT(i32 %83)
  %85 = or i32 %78, %84
  %86 = load i32, i32* @VEPU_REG_FRAME_TYPE_INTRA, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @VEPU_REG_ENCODE_FORMAT_JPEG, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @VEPU_REG_ENCODE_ENABLE, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %7, align 4
  %92 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %93 = call i32 @hantro_finish_run(%struct.hantro_ctx* %92)
  %94 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @VEPU_REG_ENCODE_START, align 4
  %97 = call i32 @vepu_write(%struct.hantro_dev* %94, i32 %95, i32 %96)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_prepare_run(%struct.hantro_ctx*) #1

declare dso_local i32 @memset(%struct.hantro_jpeg_ctx*, i32, i32) #1

declare dso_local i32 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @hantro_jpeg_header_assemble(%struct.hantro_jpeg_ctx*) #1

declare dso_local i32 @vepu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @rk3399_vpu_set_src_img_ctrl(%struct.hantro_dev*, %struct.hantro_ctx*) #1

declare dso_local i32 @rk3399_vpu_jpeg_enc_set_buffers(%struct.hantro_dev*, %struct.hantro_ctx*, i32*) #1

declare dso_local i32 @rk3399_vpu_jpeg_enc_set_qtable(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @hantro_jpeg_get_qtable(%struct.hantro_jpeg_ctx*, i32) #1

declare dso_local i32 @vepu_write(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @VEPU_REG_AXI_CTRL_BURST_LEN(i32) #1

declare dso_local i32 @VEPU_REG_MB_WIDTH(i32) #1

declare dso_local i32 @JPEG_MB_WIDTH(i32) #1

declare dso_local i32 @VEPU_REG_MB_HEIGHT(i32) #1

declare dso_local i32 @JPEG_MB_HEIGHT(i32) #1

declare dso_local i32 @hantro_finish_run(%struct.hantro_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
