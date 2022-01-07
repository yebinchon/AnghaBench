; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_gpio_request_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/bcm/extr_pinctrl-cygnus-mux.c_cygnus_gpio_request_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cygnus_gpio_mux* }
%struct.cygnus_gpio_mux = type { i32, i64, i32 }
%struct.pinctrl_gpio_range = type { i32 }
%struct.cygnus_pinctrl = type { i32, i64 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"gpio request enable pin=%u offset=0x%x shift=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.pinctrl_gpio_range*, i32)* @cygnus_gpio_request_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cygnus_gpio_request_enable(%struct.pinctrl_dev* %0, %struct.pinctrl_gpio_range* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca %struct.pinctrl_gpio_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cygnus_pinctrl*, align 8
  %9 = alloca %struct.cygnus_gpio_mux*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store %struct.pinctrl_gpio_range* %1, %struct.pinctrl_gpio_range** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %13 = call %struct.cygnus_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.cygnus_pinctrl* %13, %struct.cygnus_pinctrl** %8, align 8
  %14 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %22, align 8
  store %struct.cygnus_gpio_mux* %23, %struct.cygnus_gpio_mux** %9, align 8
  %24 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %9, align 8
  %25 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %3
  %32 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %8, align 8
  %33 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %32, i32 0, i32 0
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %8, align 8
  %37 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %9, align 8
  %40 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %9, align 8
  %45 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 3, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %8, align 8
  %52 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %9, align 8
  %55 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = call i32 @writel(i32 %50, i64 %57)
  %59 = load %struct.cygnus_pinctrl*, %struct.cygnus_pinctrl** %8, align 8
  %60 = getelementptr inbounds %struct.cygnus_pinctrl, %struct.cygnus_pinctrl* %59, i32 0, i32 0
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %64 = getelementptr inbounds %struct.pinctrl_dev, %struct.pinctrl_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %9, align 8
  %68 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.cygnus_gpio_mux*, %struct.cygnus_gpio_mux** %9, align 8
  %71 = getelementptr inbounds %struct.cygnus_gpio_mux, %struct.cygnus_gpio_mux* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @dev_dbg(i32 %65, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %66, i64 %69, i32 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %31, %28
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.cygnus_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
