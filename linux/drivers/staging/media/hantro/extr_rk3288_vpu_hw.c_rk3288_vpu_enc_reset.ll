; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3288_vpu_hw.c_rk3288_vpu_enc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3288_vpu_hw.c_rk3288_vpu_enc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.hantro_dev* }
%struct.hantro_dev = type { i32 }

@H1_REG_INTERRUPT_DIS_BIT = common dso_local global i32 0, align 4
@H1_REG_INTERRUPT = common dso_local global i32 0, align 4
@H1_REG_ENC_CTRL = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*)* @rk3288_vpu_enc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3288_vpu_enc_reset(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.hantro_dev*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %4 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %4, i32 0, i32 0
  %6 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  store %struct.hantro_dev* %6, %struct.hantro_dev** %3, align 8
  %7 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %8 = load i32, i32* @H1_REG_INTERRUPT_DIS_BIT, align 4
  %9 = load i32, i32* @H1_REG_INTERRUPT, align 4
  %10 = call i32 @vepu_write(%struct.hantro_dev* %7, i32 %8, i32 %9)
  %11 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %12 = load i32, i32* @H1_REG_ENC_CTRL, align 4
  %13 = call i32 @vepu_write(%struct.hantro_dev* %11, i32 0, i32 %12)
  %14 = load %struct.hantro_dev*, %struct.hantro_dev** %3, align 8
  %15 = load i32, i32* @H1_REG_AXI_CTRL, align 4
  %16 = call i32 @vepu_write(%struct.hantro_dev* %14, i32 0, i32 %15)
  ret void
}

declare dso_local i32 @vepu_write(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
