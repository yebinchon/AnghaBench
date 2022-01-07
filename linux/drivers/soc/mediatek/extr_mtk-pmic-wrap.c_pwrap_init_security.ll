; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_init_security.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@PWRAP_DEW_CRC_EN = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@PWRAP_CRC_EN = common dso_local global i32 0, align 4
@PWRAP_SIG_MODE = common dso_local global i32 0, align 4
@PWRAP_DEW_CRC_VAL = common dso_local global i64 0, align 8
@PWRAP_SIG_ADR = common dso_local global i32 0, align 4
@PWRAP_HIPRIO_ARB_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*)* @pwrap_init_security to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_init_security(%struct.pmic_wrapper* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pmic_wrapper*, align 8
  %4 = alloca i32, align 4
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %3, align 8
  %5 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %6 = call i32 @pwrap_init_cipher(%struct.pmic_wrapper* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %52

11:                                               ; preds = %1
  %12 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %13 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %14 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @PWRAP_DEW_CRC_EN, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @pwrap_write(%struct.pmic_wrapper* %12, i32 %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %52

26:                                               ; preds = %11
  %27 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %28 = load i32, i32* @PWRAP_CRC_EN, align 4
  %29 = call i32 @pwrap_writel(%struct.pmic_wrapper* %27, i32 1, i32 %28)
  %30 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %31 = load i32, i32* @PWRAP_SIG_MODE, align 4
  %32 = call i32 @pwrap_writel(%struct.pmic_wrapper* %30, i32 0, i32 %31)
  %33 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %34 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %35 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @PWRAP_DEW_CRC_VAL, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PWRAP_SIG_ADR, align 4
  %43 = call i32 @pwrap_writel(%struct.pmic_wrapper* %33, i32 %41, i32 %42)
  %44 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %45 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %3, align 8
  %46 = getelementptr inbounds %struct.pmic_wrapper, %struct.pmic_wrapper* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PWRAP_HIPRIO_ARB_EN, align 4
  %51 = call i32 @pwrap_writel(%struct.pmic_wrapper* %44, i32 %49, i32 %50)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %26, %23, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pwrap_init_cipher(%struct.pmic_wrapper*) #1

declare dso_local i64 @pwrap_write(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
