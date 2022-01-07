; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { i32 }

@pwrap_is_fsm_idle = common dso_local global i32 0, align 4
@PWRAP_WACS2_CMD = common dso_local global i32 0, align 4
@pwrap_is_fsm_vldclr = common dso_local global i32 0, align 4
@PWRAP_WACS2_RDATA = common dso_local global i32 0, align 4
@PWRAP_WACS2_VLDCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*, i32, i32*)* @pwrap_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_read16(%struct.pmic_wrapper* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmic_wrapper*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %10 = load i32, i32* @pwrap_is_fsm_idle, align 4
  %11 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %9, i32 %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %16 = call i32 @pwrap_leave_fsm_vldclr(%struct.pmic_wrapper* %15)
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 1
  %22 = shl i32 %21, 16
  %23 = load i32, i32* @PWRAP_WACS2_CMD, align 4
  %24 = call i32 @pwrap_writel(%struct.pmic_wrapper* %19, i32 %22, i32 %23)
  %25 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %26 = load i32, i32* @pwrap_is_fsm_vldclr, align 4
  %27 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %18
  %33 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %34 = load i32, i32* @PWRAP_WACS2_RDATA, align 4
  %35 = call i32 @pwrap_readl(%struct.pmic_wrapper* %33, i32 %34)
  %36 = call i32 @PWRAP_GET_WACS_RDATA(i32 %35)
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %39 = load i32, i32* @PWRAP_WACS2_VLDCLR, align 4
  %40 = call i32 @pwrap_writel(%struct.pmic_wrapper* %38, i32 1, i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %30, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @pwrap_wait_for_state(%struct.pmic_wrapper*, i32) #1

declare dso_local i32 @pwrap_leave_fsm_vldclr(%struct.pmic_wrapper*) #1

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i32 @PWRAP_GET_WACS_RDATA(i32) #1

declare dso_local i32 @pwrap_readl(%struct.pmic_wrapper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
