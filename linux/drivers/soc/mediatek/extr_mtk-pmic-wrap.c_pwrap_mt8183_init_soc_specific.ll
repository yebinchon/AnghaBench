; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_mt8183_init_soc_specific.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_mt8183_init_soc_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@PWRAP_STAUPD_GRPEN = common dso_local global i32 0, align 4
@PWRAP_DEW_CRC_EN = common dso_local global i64 0, align 8
@PWRAP_CRC_EN = common dso_local global i32 0, align 4
@PWRAP_SIG_ADR = common dso_local global i32 0, align 4
@PWRAP_EINT_STA0_ADR = common dso_local global i32 0, align 4
@PWRAP_WACS_P2P_EN = common dso_local global i32 0, align 4
@PWRAP_WACS_MD32_EN = common dso_local global i32 0, align 4
@PWRAP_INIT_DONE_P2P = common dso_local global i32 0, align 4
@PWRAP_INIT_DONE_MD32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*)* @pwrap_mt8183_init_soc_specific to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_mt8183_init_soc_specific(%struct.pmic_wrapper* %0) #0 {
  %2 = alloca %struct.pmic_wrapper*, align 8
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %2, align 8
  %3 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %4 = load i32, i32* @PWRAP_STAUPD_GRPEN, align 4
  %5 = call i32 @pwrap_writel(%struct.pmic_wrapper* %3, i32 245, i32 %4)
  %6 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %7 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %8 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @PWRAP_DEW_CRC_EN, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pwrap_write(%struct.pmic_wrapper* %6, i32 %14, i32 1)
  %16 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %17 = load i32, i32* @PWRAP_CRC_EN, align 4
  %18 = call i32 @pwrap_writel(%struct.pmic_wrapper* %16, i32 1, i32 %17)
  %19 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %20 = load i32, i32* @PWRAP_SIG_ADR, align 4
  %21 = call i32 @pwrap_writel(%struct.pmic_wrapper* %19, i32 1046, i32 %20)
  %22 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %23 = load i32, i32* @PWRAP_EINT_STA0_ADR, align 4
  %24 = call i32 @pwrap_writel(%struct.pmic_wrapper* %22, i32 1070, i32 %23)
  %25 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %26 = load i32, i32* @PWRAP_WACS_P2P_EN, align 4
  %27 = call i32 @pwrap_writel(%struct.pmic_wrapper* %25, i32 1, i32 %26)
  %28 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %29 = load i32, i32* @PWRAP_WACS_MD32_EN, align 4
  %30 = call i32 @pwrap_writel(%struct.pmic_wrapper* %28, i32 1, i32 %29)
  %31 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %32 = load i32, i32* @PWRAP_INIT_DONE_P2P, align 4
  %33 = call i32 @pwrap_writel(%struct.pmic_wrapper* %31, i32 1, i32 %32)
  %34 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %35 = load i32, i32* @PWRAP_INIT_DONE_MD32, align 4
  %36 = call i32 @pwrap_writel(%struct.pmic_wrapper* %34, i32 1, i32 %35)
  ret i32 0
}

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i32 @pwrap_write(%struct.pmic_wrapper*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
