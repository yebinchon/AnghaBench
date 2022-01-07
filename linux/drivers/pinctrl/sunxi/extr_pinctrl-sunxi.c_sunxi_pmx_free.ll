; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pmx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sunxi_pinctrl = type { %struct.sunxi_pinctrl_regulator*, %struct.TYPE_2__* }
%struct.sunxi_pinctrl_regulator = type { i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@PINS_PER_BANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32)* @sunxi_pmx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pmx_free(%struct.pinctrl_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sunxi_pinctrl*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.sunxi_pinctrl_regulator*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %11 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %10)
  store %struct.sunxi_pinctrl* %11, %struct.sunxi_pinctrl** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PINS_PER_BANK, align 4
  %14 = udiv i32 %12, %13
  %15 = trunc i32 %14 to i16
  store i16 %15, i16* %7, align 2
  %16 = load i16, i16* %7, align 2
  %17 = zext i16 %16 to i32
  %18 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %19 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PINS_PER_BANK, align 4
  %24 = udiv i32 %22, %23
  %25 = sub i32 %17, %24
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %8, align 2
  %27 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %6, align 8
  %28 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %27, i32 0, i32 0
  %29 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %28, align 8
  %30 = load i16, i16* %8, align 2
  %31 = zext i16 %30 to i64
  %32 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %29, i64 %31
  store %struct.sunxi_pinctrl_regulator* %32, %struct.sunxi_pinctrl_regulator** %9, align 8
  %33 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %34 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %33, i32 0, i32 1
  %35 = call i32 @refcount_dec_and_test(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

38:                                               ; preds = %2
  %39 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %40 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @regulator_disable(i32* %41)
  %43 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %44 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @regulator_put(i32* %45)
  %47 = load %struct.sunxi_pinctrl_regulator*, %struct.sunxi_pinctrl_regulator** %9, align 8
  %48 = getelementptr inbounds %struct.sunxi_pinctrl_regulator, %struct.sunxi_pinctrl_regulator* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @regulator_disable(i32*) #1

declare dso_local i32 @regulator_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
