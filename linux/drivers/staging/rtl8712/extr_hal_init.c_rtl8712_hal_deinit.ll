; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl8712_hal_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl8712_hal_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@RF_CTRL = common dso_local global i64 0, align 8
@SYS_CLKR = common dso_local global i64 0, align 8
@SYS_FUNC_EN = common dso_local global i64 0, align 8
@PMC_FSM = common dso_local global i64 0, align 8
@SYS_ISO_CTRL = common dso_local global i64 0, align 8
@AFE_PLL_CTRL = common dso_local global i64 0, align 8
@LDOA15_CTRL = common dso_local global i64 0, align 8
@LDOV12D_CTRL = common dso_local global i64 0, align 8
@AFE_MISC = common dso_local global i64 0, align 8
@SPS0_CTRL = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8712_hal_deinit(%struct._adapter* %0) #0 {
  %2 = alloca %struct._adapter*, align 8
  store %struct._adapter* %0, %struct._adapter** %2, align 8
  %3 = load %struct._adapter*, %struct._adapter** %2, align 8
  %4 = load i64, i64* @RF_CTRL, align 8
  %5 = call i32 @r8712_write8(%struct._adapter* %3, i64 %4, i32 0)
  %6 = call i32 @msleep(i32 20)
  %7 = load %struct._adapter*, %struct._adapter** %2, align 8
  %8 = load i64, i64* @SYS_CLKR, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @r8712_write8(%struct._adapter* %7, i64 %9, i32 56)
  %11 = load %struct._adapter*, %struct._adapter** %2, align 8
  %12 = load i64, i64* @SYS_FUNC_EN, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @r8712_write8(%struct._adapter* %11, i64 %13, i32 112)
  %15 = load %struct._adapter*, %struct._adapter** %2, align 8
  %16 = load i64, i64* @PMC_FSM, align 8
  %17 = call i32 @r8712_write8(%struct._adapter* %15, i64 %16, i32 6)
  %18 = load %struct._adapter*, %struct._adapter** %2, align 8
  %19 = load i64, i64* @SYS_ISO_CTRL, align 8
  %20 = call i32 @r8712_write8(%struct._adapter* %18, i64 %19, i32 249)
  %21 = load %struct._adapter*, %struct._adapter** %2, align 8
  %22 = load i64, i64* @SYS_ISO_CTRL, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @r8712_write8(%struct._adapter* %21, i64 %23, i32 232)
  %25 = load %struct._adapter*, %struct._adapter** %2, align 8
  %26 = load i64, i64* @AFE_PLL_CTRL, align 8
  %27 = call i32 @r8712_write8(%struct._adapter* %25, i64 %26, i32 0)
  %28 = load %struct._adapter*, %struct._adapter** %2, align 8
  %29 = load i64, i64* @LDOA15_CTRL, align 8
  %30 = call i32 @r8712_write8(%struct._adapter* %28, i64 %29, i32 84)
  %31 = load %struct._adapter*, %struct._adapter** %2, align 8
  %32 = load i64, i64* @SYS_FUNC_EN, align 8
  %33 = add nsw i64 %32, 1
  %34 = call i32 @r8712_write8(%struct._adapter* %31, i64 %33, i32 80)
  %35 = load %struct._adapter*, %struct._adapter** %2, align 8
  %36 = load i64, i64* @LDOV12D_CTRL, align 8
  %37 = call i32 @r8712_write8(%struct._adapter* %35, i64 %36, i32 36)
  %38 = load %struct._adapter*, %struct._adapter** %2, align 8
  %39 = load i64, i64* @AFE_MISC, align 8
  %40 = call i32 @r8712_write8(%struct._adapter* %38, i64 %39, i32 48)
  %41 = load %struct._adapter*, %struct._adapter** %2, align 8
  %42 = load i64, i64* @SPS0_CTRL, align 8
  %43 = call i32 @r8712_write8(%struct._adapter* %41, i64 %42, i32 86)
  %44 = load %struct._adapter*, %struct._adapter** %2, align 8
  %45 = load i64, i64* @SPS0_CTRL, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @r8712_write8(%struct._adapter* %44, i64 %46, i32 67)
  %48 = load i32, i32* @_SUCCESS, align 4
  ret i32 %48
}

declare dso_local i32 @r8712_write8(%struct._adapter*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
