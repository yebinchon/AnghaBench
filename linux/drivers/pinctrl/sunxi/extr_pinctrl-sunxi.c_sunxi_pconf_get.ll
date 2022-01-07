; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pconf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pconf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sunxi_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SUN4I_PINCTRL_PULL_UP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SUN4I_PINCTRL_PULL_DOWN = common dso_local global i32 0, align 4
@SUN4I_PINCTRL_NO_PULL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @sunxi_pconf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pconf_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sunxi_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %17 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %16)
  store %struct.sunxi_pinctrl* %17, %struct.sunxi_pinctrl** %8, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pinconf_to_config_param(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %8, align 8
  %22 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @sunxi_pconf_reg(i32 %30, i32 %31, i32* %10, i32* %11, i32* %12)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %4, align 4
  br label %88

37:                                               ; preds = %3
  %38 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %8, align 8
  %39 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @readl(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pinconf_to_config_param(i64 %49)
  switch i32 %50, label %79 [
    i32 128, label %51
    i32 129, label %55
    i32 130, label %63
    i32 131, label %71
  ]

51:                                               ; preds = %37
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  %54 = mul nsw i32 %53, 10
  store i32 %54, i32* %14, align 4
  br label %83

55:                                               ; preds = %37
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @SUN4I_PINCTRL_PULL_UP, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %88

62:                                               ; preds = %55
  store i32 1, i32* %14, align 4
  br label %83

63:                                               ; preds = %37
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @SUN4I_PINCTRL_PULL_DOWN, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %88

70:                                               ; preds = %63
  store i32 1, i32* %14, align 4
  br label %83

71:                                               ; preds = %37
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @SUN4I_PINCTRL_NO_PULL, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %88

78:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  br label %83

79:                                               ; preds = %37
  %80 = call i32 @WARN_ON(i32 1)
  %81 = load i32, i32* @ENOTSUPP, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %88

83:                                               ; preds = %78, %70, %62, %51
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i64 @pinconf_to_config_packed(i32 %84, i32 %85)
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %79, %75, %67, %59, %35
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @sunxi_pconf_reg(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
