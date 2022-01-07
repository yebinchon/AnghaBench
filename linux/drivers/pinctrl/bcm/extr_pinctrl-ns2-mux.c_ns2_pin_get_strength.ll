; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_get_strength.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_get_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ns2_pin* }
%struct.ns2_pin = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ns2_pinctrl = type { i32, i64 }

@NS2_PIN_DRIVE_STRENGTH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"pin:%u get drive strength:%d mA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i32*)* @ns2_pin_get_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_pin_get_strength(%struct.pinctrl_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ns2_pinctrl*, align 8
  %8 = alloca %struct.ns2_pin*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.ns2_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.ns2_pinctrl* %12, %struct.ns2_pinctrl** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.ns2_pin*, %struct.ns2_pin** %21, align 8
  store %struct.ns2_pin* %22, %struct.ns2_pin** %8, align 8
  %23 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %7, align 8
  %24 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %7, align 8
  %28 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ns2_pin*, %struct.ns2_pin** %8, align 8
  %31 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %29, %33
  %35 = call i32 @readl(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ns2_pin*, %struct.ns2_pin** %8, align 8
  %38 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = ashr i32 %36, %40
  %42 = load i32, i32* @NS2_PIN_DRIVE_STRENGTH_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 %47, 2
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %7, align 8
  %51 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %50, i32 0, i32 0
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* %51, i64 %52)
  %54 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59)
  ret i32 0
}

declare dso_local %struct.ns2_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
