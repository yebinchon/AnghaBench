; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PWRAP_INT_FLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unexpected interrupt int=0x%x\0A\00", align 1
@PWRAP_INT_CLR = common dso_local global i32 0, align 4
@PWRAP_CAP_INT1_EN = common dso_local global i32 0, align 4
@PWRAP_INT1_FLG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unexpected interrupt int1=0x%x\0A\00", align 1
@PWRAP_INT1_CLR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pwrap_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pmic_wrapper*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.pmic_wrapper*
  store %struct.pmic_wrapper* %8, %struct.pmic_wrapper** %6, align 8
  %9 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %6, align 8
  %10 = load i32, i32* @PWRAP_INT_FLG, align 4
  %11 = call i32 @pwrap_readl(%struct.pmic_wrapper* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %6, align 8
  %13 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %6, align 8
  %18 = load i32, i32* @PWRAP_INT_CLR, align 4
  %19 = call i32 @pwrap_writel(%struct.pmic_wrapper* %17, i32 -1, i32 %18)
  %20 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %6, align 8
  %21 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PWRAP_CAP_INT1_EN, align 4
  %26 = call i64 @HAS_CAP(i32 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %2
  %29 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %6, align 8
  %30 = load i32, i32* @PWRAP_INT1_FLG, align 4
  %31 = call i32 @pwrap_readl(%struct.pmic_wrapper* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %6, align 8
  %33 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %6, align 8
  %38 = load i32, i32* @PWRAP_INT1_CLR, align 4
  %39 = call i32 @pwrap_writel(%struct.pmic_wrapper* %37, i32 -1, i32 %38)
  br label %40

40:                                               ; preds = %28, %2
  %41 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %41
}

declare dso_local i32 @pwrap_readl(%struct.pmic_wrapper*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i64 @HAS_CAP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
