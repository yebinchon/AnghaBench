; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_gpio_disable_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_gpio_disable_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cygnus_gpio_mux* }
%struct.cygnus_gpio_mux = type { i32, i64, i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.cygnus_pinctrl = type { i32, i64 }

@.str = private unnamed_addr constant [47 x i8] c"gpio disable free pin=%u offset=0x%x shift=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @cygnus_gpio_disable_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cygnus_gpio_disable_free(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.pinctrl_gpio_range*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cygnus_pinctrl*, align 8
  %8 = alloca %struct.cygnus_gpio_mux*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %12 = call %struct.cygnus_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.cygnus_pinctrl* %12, %struct.cygnus_pinctrl** %7, align 8
  %13 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %21, align 8
  store %struct.cygnus_gpio_mux* %22, %struct.cygnus_gpio_mux** %8, align 8
  %23 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %8, align 8
  %24 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %72

28:                                               ; preds = %3
  %29 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %30 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %34 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %8, align 8
  %37 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %8, align 8
  %42 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 3, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %50 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %8, align 8
  %53 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  %56 = call i32 @writel(i32 %48, i64 %55)
  %57 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %7, align 8
  %58 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %57, i32 0, i32 0
  %59 = load i64, i64* %10, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %8, align 8
  %66 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %8, align 8
  %69 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %64, i64 %67, i32 %70)
  br label %72

72:                                               ; preds = %28, %27
  ret void
}

declare dso_local %struct.cygnus_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
