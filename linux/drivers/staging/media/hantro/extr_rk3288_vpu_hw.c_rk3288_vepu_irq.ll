; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3288_vpu_hw.c_rk3288_vepu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_rk3288_vpu_hw.c_rk3288_vepu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_dev = type { i32 }

@H1_REG_INTERRUPT = common dso_local global i32 0, align 4
@H1_REG_STR_BUF_LIMIT = common dso_local global i32 0, align 4
@H1_REG_INTERRUPT_FRAME_RDY = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@H1_REG_AXI_CTRL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rk3288_vepu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3288_vepu_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hantro_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hantro_dev*
  store %struct.hantro_dev* %10, %struct.hantro_dev** %5, align 8
  %11 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %12 = load i32, i32* @H1_REG_INTERRUPT, align 4
  %13 = call i32 @vepu_read(%struct.hantro_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %15 = load i32, i32* @H1_REG_STR_BUF_LIMIT, align 4
  %16 = call i32 @vepu_read(%struct.hantro_dev* %14, i32 %15)
  %17 = sdiv i32 %16, 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @H1_REG_INTERRUPT_FRAME_RDY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %29 = load i32, i32* @H1_REG_INTERRUPT, align 4
  %30 = call i32 @vepu_write(%struct.hantro_dev* %28, i32 0, i32 %29)
  %31 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %32 = load i32, i32* @H1_REG_AXI_CTRL, align 4
  %33 = call i32 @vepu_write(%struct.hantro_dev* %31, i32 0, i32 %32)
  %34 = load %struct.hantro_dev*, %struct.hantro_dev** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @hantro_irq_done(%struct.hantro_dev* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %38
}

declare dso_local i32 @vepu_read(%struct.hantro_dev*, i32) #1

declare dso_local i32 @vepu_write(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @hantro_irq_done(%struct.hantro_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
