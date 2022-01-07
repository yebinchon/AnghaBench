; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_init_charger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm8350_power.c_wm8350_init_charger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_IRQ_CHG_BAT_HOT = common dso_local global i32 0, align 4
@wm8350_charger_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Battery hot\00", align 1
@WM8350_IRQ_CHG_BAT_COLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Battery cold\00", align 1
@WM8350_IRQ_CHG_BAT_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Battery fail\00", align 1
@WM8350_IRQ_CHG_TO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Charger timeout\00", align 1
@WM8350_IRQ_CHG_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"Charge end\00", align 1
@WM8350_IRQ_CHG_START = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"Charge start\00", align 1
@WM8350_IRQ_CHG_FAST_RDY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Fast charge ready\00", align 1
@WM8350_IRQ_CHG_VBATT_LT_3P9 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"Battery <3.9V\00", align 1
@WM8350_IRQ_CHG_VBATT_LT_3P1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Battery <3.1V\00", align 1
@WM8350_IRQ_CHG_VBATT_LT_2P85 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"Battery <2.85V\00", align 1
@WM8350_IRQ_EXT_USB_FB = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"USB\00", align 1
@WM8350_IRQ_EXT_WALL_FB = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"Wall\00", align 1
@WM8350_IRQ_EXT_BAT_FB = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wm8350*)* @wm8350_init_charger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wm8350_init_charger(%struct.wm8350* %0) #0 {
  %2 = alloca %struct.wm8350*, align 8
  store %struct.wm8350* %0, %struct.wm8350** %2, align 8
  %3 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %4 = load i32, i32* @WM8350_IRQ_CHG_BAT_HOT, align 4
  %5 = load i32, i32* @wm8350_charger_handler, align 4
  %6 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %7 = call i32 @wm8350_register_irq(%struct.wm8350* %3, i32 %4, i32 %5, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.wm8350* %6)
  %8 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %9 = load i32, i32* @WM8350_IRQ_CHG_BAT_COLD, align 4
  %10 = load i32, i32* @wm8350_charger_handler, align 4
  %11 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %12 = call i32 @wm8350_register_irq(%struct.wm8350* %8, i32 %9, i32 %10, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.wm8350* %11)
  %13 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %14 = load i32, i32* @WM8350_IRQ_CHG_BAT_FAIL, align 4
  %15 = load i32, i32* @wm8350_charger_handler, align 4
  %16 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %17 = call i32 @wm8350_register_irq(%struct.wm8350* %13, i32 %14, i32 %15, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.wm8350* %16)
  %18 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %19 = load i32, i32* @WM8350_IRQ_CHG_TO, align 4
  %20 = load i32, i32* @wm8350_charger_handler, align 4
  %21 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %22 = call i32 @wm8350_register_irq(%struct.wm8350* %18, i32 %19, i32 %20, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), %struct.wm8350* %21)
  %23 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %24 = load i32, i32* @WM8350_IRQ_CHG_END, align 4
  %25 = load i32, i32* @wm8350_charger_handler, align 4
  %26 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %27 = call i32 @wm8350_register_irq(%struct.wm8350* %23, i32 %24, i32 %25, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), %struct.wm8350* %26)
  %28 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %29 = load i32, i32* @WM8350_IRQ_CHG_START, align 4
  %30 = load i32, i32* @wm8350_charger_handler, align 4
  %31 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %32 = call i32 @wm8350_register_irq(%struct.wm8350* %28, i32 %29, i32 %30, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), %struct.wm8350* %31)
  %33 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %34 = load i32, i32* @WM8350_IRQ_CHG_FAST_RDY, align 4
  %35 = load i32, i32* @wm8350_charger_handler, align 4
  %36 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %37 = call i32 @wm8350_register_irq(%struct.wm8350* %33, i32 %34, i32 %35, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), %struct.wm8350* %36)
  %38 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %39 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P9, align 4
  %40 = load i32, i32* @wm8350_charger_handler, align 4
  %41 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %42 = call i32 @wm8350_register_irq(%struct.wm8350* %38, i32 %39, i32 %40, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.wm8350* %41)
  %43 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %44 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_3P1, align 4
  %45 = load i32, i32* @wm8350_charger_handler, align 4
  %46 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %47 = call i32 @wm8350_register_irq(%struct.wm8350* %43, i32 %44, i32 %45, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), %struct.wm8350* %46)
  %48 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %49 = load i32, i32* @WM8350_IRQ_CHG_VBATT_LT_2P85, align 4
  %50 = load i32, i32* @wm8350_charger_handler, align 4
  %51 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %52 = call i32 @wm8350_register_irq(%struct.wm8350* %48, i32 %49, i32 %50, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), %struct.wm8350* %51)
  %53 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %54 = load i32, i32* @WM8350_IRQ_EXT_USB_FB, align 4
  %55 = load i32, i32* @wm8350_charger_handler, align 4
  %56 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %57 = call i32 @wm8350_register_irq(%struct.wm8350* %53, i32 %54, i32 %55, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), %struct.wm8350* %56)
  %58 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %59 = load i32, i32* @WM8350_IRQ_EXT_WALL_FB, align 4
  %60 = load i32, i32* @wm8350_charger_handler, align 4
  %61 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %62 = call i32 @wm8350_register_irq(%struct.wm8350* %58, i32 %59, i32 %60, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %struct.wm8350* %61)
  %63 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %64 = load i32, i32* @WM8350_IRQ_EXT_BAT_FB, align 4
  %65 = load i32, i32* @wm8350_charger_handler, align 4
  %66 = load %struct.wm8350*, %struct.wm8350** %2, align 8
  %67 = call i32 @wm8350_register_irq(%struct.wm8350* %63, i32 %64, i32 %65, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), %struct.wm8350* %66)
  ret void
}

declare dso_local i32 @wm8350_register_irq(%struct.wm8350*, i32, i32, i32, i8*, %struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
