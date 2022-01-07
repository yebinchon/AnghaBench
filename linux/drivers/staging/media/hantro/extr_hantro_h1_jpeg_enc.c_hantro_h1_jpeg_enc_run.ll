; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h1_jpeg_enc.c_hantro_h1_jpeg_enc_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_h1_jpeg_enc.c_hantro_h1_jpeg_enc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, %struct.hantro_dev* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.hantro_dev = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.hantro_jpeg_ctx = type { i32, i32, i32, i32 }

@H1_REG_ENC_CTRL_ENC_MODE_JPEG = common dso_local global i32 0, align 4
@H1_REG_ENC_CTRL = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL_OUTPUT_SWAP16 = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL_INPUT_SWAP16 = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL_OUTPUT_SWAP32 = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL_INPUT_SWAP32 = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL_OUTPUT_SWAP8 = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL_INPUT_SWAP8 = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL = common dso_local global i32 0, align 4
@H1_REG_ENC_PIC_INTRA = common dso_local global i32 0, align 4
@H1_REG_ENC_CTRL_EN_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_h1_jpeg_enc_run(%struct.hantro_ctx* %0) #0 {
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
  %38 = load i32, i32* @H1_REG_ENC_CTRL_ENC_MODE_JPEG, align 4
  %39 = load i32, i32* @H1_REG_ENC_CTRL, align 4
  %40 = call i32 @vepu_write_relaxed(%struct.hantro_dev* %37, i32 %38, i32 %39)
  %41 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %42 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %43 = call i32 @hantro_h1_set_src_img_ctrl(%struct.hantro_dev* %41, %struct.hantro_ctx* %42)
  %44 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %45 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %46 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %46, i32 0, i32 0
  %48 = call i32 @hantro_h1_jpeg_enc_set_buffers(%struct.hantro_dev* %44, %struct.hantro_ctx* %45, i32* %47)
  %49 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %50 = call i32 @hantro_jpeg_get_qtable(%struct.hantro_jpeg_ctx* %6, i32 0)
  %51 = call i32 @hantro_jpeg_get_qtable(%struct.hantro_jpeg_ctx* %6, i32 1)
  %52 = call i32 @hantro_h1_jpeg_enc_set_qtable(%struct.hantro_dev* %49, i32 %50, i32 %51)
  %53 = load i32, i32* @H1_REG_AXI_CTRL_OUTPUT_SWAP16, align 4
  %54 = load i32, i32* @H1_REG_AXI_CTRL_INPUT_SWAP16, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @H1_REG_AXI_CTRL_BURST_LEN(i32 16)
  %57 = or i32 %55, %56
  %58 = load i32, i32* @H1_REG_AXI_CTRL_OUTPUT_SWAP32, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @H1_REG_AXI_CTRL_INPUT_SWAP32, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @H1_REG_AXI_CTRL_OUTPUT_SWAP8, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @H1_REG_AXI_CTRL_INPUT_SWAP8, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @H1_REG_AXI_CTRL, align 4
  %69 = call i32 @vepu_write(%struct.hantro_dev* %66, i32 %67, i32 %68)
  %70 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %71 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @JPEG_MB_WIDTH(i32 %73)
  %75 = call i32 @H1_REG_ENC_CTRL_WIDTH(i32 %74)
  %76 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @JPEG_MB_HEIGHT(i32 %79)
  %81 = call i32 @H1_REG_ENC_CTRL_HEIGHT(i32 %80)
  %82 = or i32 %75, %81
  %83 = load i32, i32* @H1_REG_ENC_CTRL_ENC_MODE_JPEG, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @H1_REG_ENC_PIC_INTRA, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @H1_REG_ENC_CTRL_EN_BIT, align 4
  %88 = or i32 %86, %87
  store i32 %88, i32* %7, align 4
  %89 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %90 = call i32 @hantro_finish_run(%struct.hantro_ctx* %89)
  %91 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @H1_REG_ENC_CTRL, align 4
  %94 = call i32 @vepu_write(%struct.hantro_dev* %91, i32 %92, i32 %93)
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_src_buf(%struct.hantro_ctx*) #1

declare dso_local %struct.vb2_v4l2_buffer* @hantro_get_dst_buf(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_prepare_run(%struct.hantro_ctx*) #1

declare dso_local i32 @memset(%struct.hantro_jpeg_ctx*, i32, i32) #1

declare dso_local i32 @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @hantro_jpeg_header_assemble(%struct.hantro_jpeg_ctx*) #1

declare dso_local i32 @vepu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @hantro_h1_set_src_img_ctrl(%struct.hantro_dev*, %struct.hantro_ctx*) #1

declare dso_local i32 @hantro_h1_jpeg_enc_set_buffers(%struct.hantro_dev*, %struct.hantro_ctx*, i32*) #1

declare dso_local i32 @hantro_h1_jpeg_enc_set_qtable(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @hantro_jpeg_get_qtable(%struct.hantro_jpeg_ctx*, i32) #1

declare dso_local i32 @H1_REG_AXI_CTRL_BURST_LEN(i32) #1

declare dso_local i32 @vepu_write(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @H1_REG_ENC_CTRL_WIDTH(i32) #1

declare dso_local i32 @JPEG_MB_WIDTH(i32) #1

declare dso_local i32 @H1_REG_ENC_CTRL_HEIGHT(i32) #1

declare dso_local i32 @JPEG_MB_HEIGHT(i32) #1

declare dso_local i32 @hantro_finish_run(%struct.hantro_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
