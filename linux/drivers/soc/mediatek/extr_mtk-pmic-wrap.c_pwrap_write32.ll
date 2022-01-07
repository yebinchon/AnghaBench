; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-pmic-wrap.c_pwrap_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmic_wrapper = type { i32 }

@pwrap_is_fsm_idle = common dso_local global i32 0, align 4
@PWRAP_WACS2_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmic_wrapper*, i32, i32)* @pwrap_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwrap_write32(%struct.pmic_wrapper* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pmic_wrapper*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmic_wrapper* %0, %struct.pmic_wrapper** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, i32* %9, align 4
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %16 = load i32, i32* @pwrap_is_fsm_idle, align 4
  %17 = call i32 @pwrap_wait_for_state(%struct.pmic_wrapper* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %22 = call i32 @pwrap_leave_fsm_vldclr(%struct.pmic_wrapper* %21)
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %51

24:                                               ; preds = %14
  %25 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 %26, 30
  %28 = or i32 -2147483648, %27
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %28, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 16
  %35 = ashr i32 %32, %34
  %36 = and i32 %35, 65535
  %37 = or i32 %31, %36
  %38 = load i32, i32* @PWRAP_WACS2_CMD, align 4
  %39 = call i32 @pwrap_writel(%struct.pmic_wrapper* %25, i32 %37, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %24
  %43 = load %struct.pmic_wrapper*, %struct.pmic_wrapper** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pwrap_read(%struct.pmic_wrapper* %43, i32 %44, i32* %10)
  br label %46

46:                                               ; preds = %42, %24
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %11

50:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %20
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @pwrap_wait_for_state(%struct.pmic_wrapper*, i32) #1

declare dso_local i32 @pwrap_leave_fsm_vldclr(%struct.pmic_wrapper*) #1

declare dso_local i32 @pwrap_writel(%struct.pmic_wrapper*, i32, i32) #1

declare dso_local i32 @pwrap_read(%struct.pmic_wrapper*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
