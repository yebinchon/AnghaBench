; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_get_pull.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-ns2-mux.c_ns2_pin_get_pull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ns2_pin* }
%struct.ns2_pin = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.ns2_pinctrl = type { i32, i64 }

@NS2_PIN_PULL_MASK = common dso_local global i32 0, align 4
@NS2_PIN_PULL_UP = common dso_local global i32 0, align 4
@NS2_PIN_PULL_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, i32, i32*, i32*)* @ns2_pin_get_pull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns2_pin_get_pull(%struct.pinctrl_dev* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ns2_pinctrl*, align 8
  %10 = alloca %struct.ns2_pin*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %14 = call %struct.ns2_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %13)
  store %struct.ns2_pinctrl* %14, %struct.ns2_pinctrl** %9, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.ns2_pin*, %struct.ns2_pin** %23, align 8
  store %struct.ns2_pin* %24, %struct.ns2_pin** %10, align 8
  %25 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %9, align 8
  %26 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %25, i32 0, i32 0
  %27 = load i64, i64* %11, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %9, align 8
  %30 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ns2_pin*, %struct.ns2_pin** %10, align 8
  %33 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.ns2_pin*, %struct.ns2_pin** %10, align 8
  %40 = getelementptr inbounds %struct.ns2_pin, %struct.ns2_pin* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = ashr i32 %38, %42
  %44 = load i32, i32* @NS2_PIN_PULL_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %7, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @NS2_PIN_PULL_UP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %4
  %52 = load i32*, i32** %7, align 8
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @NS2_PIN_PULL_DOWN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32*, i32** %8, align 8
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %57, %53
  %60 = load %struct.ns2_pinctrl*, %struct.ns2_pinctrl** %9, align 8
  %61 = getelementptr inbounds %struct.ns2_pinctrl, %struct.ns2_pinctrl* %60, i32 0, i32 0
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  ret void
}

declare dso_local %struct.ns2_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
