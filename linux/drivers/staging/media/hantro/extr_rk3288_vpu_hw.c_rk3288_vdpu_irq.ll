; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3288_vpu_hw.c_rk3288_vdpu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3288_vpu_hw.c_rk3288_vdpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }

@G1_REG_INTERRUPT = common dso_local global i32 0, align 4
@G1_REG_INTERRUPT_DEC_RDY_INT = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@G1_REG_CONFIG_DEC_CLK_GATE_E = common dso_local global i32 0, align 4
@G1_REG_CONFIG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rk3288_vdpu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3288_vdpu_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hantro_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hantro_dev*
  store %struct.hantro_dev* %9, %struct.hantro_dev** %5, align 8
  %10 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %11 = load i32, i32* @G1_REG_INTERRUPT, align 4
  %12 = call i32 @vdpu_read(%struct.hantro_dev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @G1_REG_INTERRUPT_DEC_RDY_INT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %6, align 4
  %23 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %24 = load i32, i32* @G1_REG_INTERRUPT, align 4
  %25 = call i32 @vdpu_write(%struct.hantro_dev* %23, i32 0, i32 %24)
  %26 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %27 = load i32, i32* @G1_REG_CONFIG_DEC_CLK_GATE_E, align 4
  %28 = load i32, i32* @G1_REG_CONFIG, align 4
  %29 = call i32 @vdpu_write(%struct.hantro_dev* %26, i32 %27, i32 %28)
  %30 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @hantro_irq_done(%struct.hantro_dev* %30, i32 0, i32 %31)
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %33
}

declare dso_local i32 @vdpu_read(%struct.hantro_dev*, i32) #1

declare dso_local i32 @vdpu_write(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @hantro_irq_done(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
