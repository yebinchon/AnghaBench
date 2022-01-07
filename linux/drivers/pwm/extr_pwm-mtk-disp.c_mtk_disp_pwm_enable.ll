; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mtk-disp.c_mtk_disp_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mtk-disp.c_mtk_disp_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.mtk_disp_pwm = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@DISP_PWM_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @mtk_disp_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_disp_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.mtk_disp_pwm*, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.mtk_disp_pwm* @to_mtk_disp_pwm(%struct.pwm_chip* %8)
  store %struct.mtk_disp_pwm* %9, %struct.mtk_disp_pwm** %6, align 8
  %10 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %6, align 8
  %11 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_enable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %6, align 8
  %20 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_enable(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %6, align 8
  %27 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_disable(i32 %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %6, align 8
  %33 = load i32, i32* @DISP_PWM_EN, align 4
  %34 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mtk_disp_pwm*, %struct.mtk_disp_pwm** %6, align 8
  %40 = getelementptr inbounds %struct.mtk_disp_pwm, %struct.mtk_disp_pwm* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm* %32, i32 %33, i32 %38, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %31, %25, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.mtk_disp_pwm* @to_mtk_disp_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mtk_disp_pwm_update_bits(%struct.mtk_disp_pwm*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
