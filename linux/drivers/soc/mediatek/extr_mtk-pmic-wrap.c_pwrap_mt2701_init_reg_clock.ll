; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_mt2701_init_reg_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_mt2701_init_reg_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@PWRAP_RDDMY = common dso_local global i32 0, align 4
@PWRAP_DEW_RDDMY_NO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*)* @pwrap_mt2701_init_reg_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_mt2701_init_reg_clock(%struct.pmic_wrapper* %0) #0 {
  %2 = alloca %struct.pmic_wrapper*, align 8
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %2, align 8
  %3 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %4 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %30 [
    i32 128, label %8
    i32 129, label %14
  ]

8:                                                ; preds = %1
  %9 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %10 = load i32, i32* @PWRAP_RDDMY, align 4
  %11 = call i32 @pwrap_writel(%struct.pmic_wrapper* %9, i32 12, i32 %10)
  %12 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %13 = call i32 @pwrap_init_chip_select_ext(%struct.pmic_wrapper* %12, i32 4, i32 0, i32 2, i32 2)
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %16 = load i32, i32* @PWRAP_RDDMY, align 4
  %17 = call i32 @pwrap_writel(%struct.pmic_wrapper* %15, i32 8, i32 %16)
  %18 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %19 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %20 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @PWRAP_DEW_RDDMY_NO, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pwrap_write(%struct.pmic_wrapper* %18, i32 %26, i32 8)
  %28 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %2, align 8
  %29 = call i32 @pwrap_init_chip_select_ext(%struct.pmic_wrapper* %28, i32 5, i32 0, i32 2, i32 2)
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %14, %8
  ret i32 0
}

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i32 @pwrap_init_chip_select_ext(%struct.pmic_wrapper*, i32, i32, i32, i32) #1

declare dso_local i32 @pwrap_write(%struct.pmic_wrapper*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
