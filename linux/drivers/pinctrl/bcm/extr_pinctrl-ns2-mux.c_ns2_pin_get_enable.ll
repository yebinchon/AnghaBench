; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_get_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_get_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ns2_pin* }
%struct.ns2_pin = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ns2_pinctrl = type { i32, i64 }

@NS2_PIN_INPUT_EN_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pin:%u get disable:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32)* @ns2_pin_get_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns2_pin_get_enable(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pinctrl_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ns2_pinctrl*, align 8
  %6 = alloca %struct.ns2_pin*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %10 = call %struct.ns2_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %9)
  store %struct.ns2_pinctrl* %10, %struct.ns2_pinctrl** %5, align 8
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %12 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.ns2_pin*, %struct.ns2_pin** %19, align 8
  store %struct.ns2_pin* %20, %struct.ns2_pin** %6, align 8
  %21 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %5, align 8
  %22 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %5, align 8
  %26 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ns2_pin*, %struct.ns2_pin** %6, align 8
  %29 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %27, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ns2_pin*, %struct.ns2_pin** %6, align 8
  %36 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %34, %38
  %40 = load i32, i32* @NS2_PIN_INPUT_EN_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %5, align 8
  %43 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %42, i32 0, i32 0
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %2
  %49 = load i32, i32* @NS2_PIN_INPUT_EN_MASK, align 4
  store i32 %49, i32* %8, align 4
  br label %51

50:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %50, %48
  %52 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %3, align 8
  %53 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  ret i32 %58
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
