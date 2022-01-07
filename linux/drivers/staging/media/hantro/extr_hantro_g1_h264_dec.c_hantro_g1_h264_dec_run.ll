; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_hantro_g1_h264_dec_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_hantro_g1_h264_dec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }

@G1_REG_CONFIG_DEC_TIMEOUT_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_OUT_ENDIAN = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_STRENDIAN_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_OUTSWAP32_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_INSWAP32_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_STRSWAP32_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_CLK_GATE_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG = common dso_local global i32 0, align 4
@G1_REG_INTERRUPT_DEC_E = common dso_local global i32 0, align 4
@G1_REG_INTERRUPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_g1_h264_dec_run(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_dev*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %4 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %4, i32 0, i32 0
  %6 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  store %struct.hantro_dev* %6, %struct.hantro_dev** %3, align 8
  %7 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %8 = call i64 @hantro_h264_dec_prepare_run(%struct.hantro_ctx* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %13 = call i32 @set_params(%struct.hantro_ctx* %12)
  %14 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %15 = call i32 @set_ref(%struct.hantro_ctx* %14)
  %16 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %17 = call i32 @set_buffers(%struct.hantro_ctx* %16)
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %19 = call i32 @hantro_finish_run(%struct.hantro_ctx* %18)
  %20 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %21 = call i32 @G1_REG_CONFIG_DEC_AXI_RD_ID(i32 255)
  %22 = load i32, i32* @G1_REG_CONFIG_DEC_TIMEOUT_E, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @G1_REG_CONFIG_DEC_OUT_ENDIAN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @G1_REG_CONFIG_DEC_STRENDIAN_E, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @G1_REG_CONFIG_DEC_MAX_BURST(i32 16)
  %29 = or i32 %27, %28
  %30 = load i32, i32* @G1_REG_CONFIG_DEC_OUTSWAP32_E, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @G1_REG_CONFIG_DEC_INSWAP32_E, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @G1_REG_CONFIG_DEC_STRSWAP32_E, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @G1_REG_CONFIG_DEC_CLK_GATE_E, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @G1_REG_CONFIG, align 4
  %39 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %20, i32 %37, i32 %38)
  %40 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %41 = load i32, i32* @G1_REG_INTERRUPT_DEC_E, align 4
  %42 = load i32, i32* @G1_REG_INTERRUPT, align 4
  %43 = call i32 @vdpu_write(%struct.hantro_dev* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @hantro_h264_dec_prepare_run(%struct.hantro_ctx*) #1

declare dso_local i32 @set_params(%struct.hantro_ctx*) #1

declare dso_local i32 @set_ref(%struct.hantro_ctx*) #1

declare dso_local i32 @set_buffers(%struct.hantro_ctx*) #1

declare dso_local i32 @hantro_finish_run(%struct.hantro_ctx*) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @G1_REG_CONFIG_DEC_AXI_RD_ID(i32) #1

declare dso_local i32 @G1_REG_CONFIG_DEC_MAX_BURST(i32) #1

declare dso_local i32 @vdpu_write(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
