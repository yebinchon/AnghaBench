; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttlectl_cpu_level_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_throttlectl_cpu_level_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_soctherm = type { i32 }

@CCROC_THROT_PSKIP_RAMP_DURATION_MASK = common dso_local global i32 0, align 4
@CCROC_THROT_PSKIP_RAMP_STEP_MASK = common dso_local global i32 0, align 4
@CCROC_THROT_PSKIP_CTRL_ENB_MASK = common dso_local global i32 0, align 4
@CCROC_THROT_PSKIP_CTRL_DIVIDEND_MASK = common dso_local global i32 0, align 4
@CCROC_THROT_PSKIP_CTRL_DIVISOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_soctherm*, i32)* @throttlectl_cpu_level_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throttlectl_cpu_level_cfg(%struct.tegra_soctherm* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_soctherm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_soctherm* %0, %struct.tegra_soctherm** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %13 [
    i32 130, label %9
    i32 129, label %10
    i32 131, label %11
    i32 128, label %12
  ]

9:                                                ; preds = %2
  store i32 50, i32* %5, align 4
  br label %14

10:                                               ; preds = %2
  store i32 75, i32* %5, align 4
  br label %14

11:                                               ; preds = %2
  store i32 80, i32* %5, align 4
  br label %14

12:                                               ; preds = %2
  br label %51

13:                                               ; preds = %2
  br label %51

14:                                               ; preds = %11, %10, %9
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @THROT_DEPTH_DIVIDEND(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @CCROC_THROT_PSKIP_RAMP_CPU_REG(i32 %18)
  %20 = call i32 @ccroc_readl(%struct.tegra_soctherm* %17, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CCROC_THROT_PSKIP_RAMP_DURATION_MASK, align 4
  %23 = call i32 @REG_SET_MASK(i32 %21, i32 %22, i32 255)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CCROC_THROT_PSKIP_RAMP_STEP_MASK, align 4
  %26 = call i32 @REG_SET_MASK(i32 %24, i32 %25, i32 15)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CCROC_THROT_PSKIP_RAMP_CPU_REG(i32 %29)
  %31 = call i32 @ccroc_writel(%struct.tegra_soctherm* %27, i32 %28, i32 %30)
  %32 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CCROC_THROT_PSKIP_CTRL_CPU_REG(i32 %33)
  %35 = call i32 @ccroc_readl(%struct.tegra_soctherm* %32, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @CCROC_THROT_PSKIP_CTRL_ENB_MASK, align 4
  %38 = call i32 @REG_SET_MASK(i32 %36, i32 %37, i32 1)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @CCROC_THROT_PSKIP_CTRL_DIVIDEND_MASK, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @REG_SET_MASK(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @CCROC_THROT_PSKIP_CTRL_DIVISOR_MASK, align 4
  %45 = call i32 @REG_SET_MASK(i32 %43, i32 %44, i32 255)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @CCROC_THROT_PSKIP_CTRL_CPU_REG(i32 %48)
  %50 = call i32 @ccroc_writel(%struct.tegra_soctherm* %46, i32 %47, i32 %49)
  br label %51

51:                                               ; preds = %14, %13, %12
  ret void
}

declare dso_local i32 @THROT_DEPTH_DIVIDEND(i32) #1

declare dso_local i32 @ccroc_readl(%struct.tegra_soctherm*, i32) #1

declare dso_local i32 @CCROC_THROT_PSKIP_RAMP_CPU_REG(i32) #1

declare dso_local i32 @REG_SET_MASK(i32, i32, i32) #1

declare dso_local i32 @ccroc_writel(%struct.tegra_soctherm*, i32, i32) #1

declare dso_local i32 @CCROC_THROT_PSKIP_CTRL_CPU_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
