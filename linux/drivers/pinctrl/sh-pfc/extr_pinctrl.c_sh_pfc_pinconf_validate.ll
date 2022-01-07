; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_pinconf_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sh-pfc/extr_pinctrl.c_sh_pfc_pinconf_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_pfc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sh_pfc_pin* }
%struct.sh_pfc_pin = type { i32 }

@SH_PFC_PIN_CFG_PULL_UP_DOWN = common dso_local global i32 0, align 4
@SH_PFC_PIN_CFG_PULL_UP = common dso_local global i32 0, align 4
@SH_PFC_PIN_CFG_PULL_DOWN = common dso_local global i32 0, align 4
@SH_PFC_PIN_CFG_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@SH_PFC_PIN_CFG_IO_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_pfc*, i32, i32)* @sh_pfc_pinconf_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_pfc_pinconf_validate(%struct.sh_pfc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_pfc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sh_pfc_pin*, align 8
  store %struct.sh_pfc* %0, %struct.sh_pfc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sh_pfc_get_pin_index(%struct.sh_pfc* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.sh_pfc*, %struct.sh_pfc** %5, align 8
  %14 = getelementptr inbounds %struct.sh_pfc, %struct.sh_pfc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %17, i64 %19
  store %struct.sh_pfc_pin* %20, %struct.sh_pfc_pin** %9, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %52 [
    i32 132, label %22
    i32 130, label %28
    i32 131, label %34
    i32 129, label %40
    i32 128, label %46
  ]

22:                                               ; preds = %3
  %23 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %9, align 8
  %24 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SH_PFC_PIN_CFG_PULL_UP_DOWN, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %3
  %29 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %9, align 8
  %30 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SH_PFC_PIN_CFG_PULL_UP, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %4, align 4
  br label %53

34:                                               ; preds = %3
  %35 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %9, align 8
  %36 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SH_PFC_PIN_CFG_PULL_DOWN, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %3
  %41 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %9, align 8
  %42 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SH_PFC_PIN_CFG_DRIVE_STRENGTH, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %4, align 4
  br label %53

46:                                               ; preds = %3
  %47 = load %struct.sh_pfc_pin*, %struct.sh_pfc_pin** %9, align 8
  %48 = getelementptr inbounds %struct.sh_pfc_pin, %struct.sh_pfc_pin* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @SH_PFC_PIN_CFG_IO_VOLTAGE, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46, %40, %34, %28, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @sh_pfc_get_pin_index(%struct.sh_pfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
