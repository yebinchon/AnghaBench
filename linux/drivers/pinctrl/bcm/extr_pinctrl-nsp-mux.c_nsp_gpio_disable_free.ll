; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-mux.c_nsp_gpio_disable_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-nsp-mux.c_nsp_gpio_disable_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.pinctrl_gpio_range = type { i32 }
%struct.nsp_pinctrl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @nsp_gpio_disable_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nsp_gpio_disable_free(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nsp_pinctrl*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.nsp_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.nsp_pinctrl* %12, %struct.nsp_pinctrl** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %7, align 8
  %24 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %23, i32 0, i32 0
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %7, align 8
  %28 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readl(i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %36, %37
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = shl i32 1, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %40
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %7, align 8
  %57 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @writel(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %3
  %61 = load %struct.nsp_pinctrl*, %struct.nsp_pinctrl** %7, align 8
  %62 = getelementptr inbounds %struct.nsp_pinctrl, %struct.nsp_pinctrl* %61, i32 0, i32 0
  %63 = load i64, i64* %10, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  ret void
}

declare dso_local %struct.nsp_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
