; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pconf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pconf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sunxi_pinctrl = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @sunxi_pconf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pconf_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sunxi_pinctrl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %22 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %21)
  store %struct.sunxi_pinctrl* %22, %struct.sunxi_pinctrl** %10, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %113, %4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %116

27:                                               ; preds = %23
  %28 = load i64*, i64** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @pinconf_to_config_param(i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i64*, i64** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @pinconf_to_config_argument(i64 %38)
  store i32 %39, i32* %18, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @sunxi_pconf_reg(i32 %40, i32 %41, i32* %14, i32* %15, i32* %16)
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %20, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i32, i32* %20, align 4
  store i32 %46, i32* %5, align 4
  br label %117

47:                                               ; preds = %27
  %48 = load i32, i32* %12, align 4
  switch i32 %48, label %77 [
    i32 128, label %49
    i32 131, label %62
    i32 129, label %63
    i32 130, label %70
  ]

49:                                               ; preds = %47
  %50 = load i32, i32* %18, align 4
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %18, align 4
  %54 = icmp sgt i32 %53, 40
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %49
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %117

58:                                               ; preds = %52
  %59 = load i32, i32* %18, align 4
  %60 = sdiv i32 %59, 10
  %61 = sub nsw i32 %60, 1
  store i32 %61, i32* %19, align 4
  br label %81

62:                                               ; preds = %47
  store i32 0, i32* %19, align 4
  br label %81

63:                                               ; preds = %47
  %64 = load i32, i32* %18, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %117

69:                                               ; preds = %63
  store i32 1, i32* %19, align 4
  br label %81

70:                                               ; preds = %47
  %71 = load i32, i32* %18, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %117

76:                                               ; preds = %70
  store i32 2, i32* %19, align 4
  br label %81

77:                                               ; preds = %47
  %78 = call i32 @WARN_ON(i32 1)
  %79 = load i32, i32* @ENOTSUPP, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %117

81:                                               ; preds = %76, %69, %62, %58
  %82 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %10, align 8
  %83 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %82, i32 0, i32 1
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @raw_spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %10, align 8
  %87 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @readl(i32 %90)
  store i32 %91, i32* %17, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %15, align 4
  %94 = shl i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %17, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %17, align 4
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %15, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %98, %101
  %103 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %10, align 8
  %104 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @writel(i32 %102, i32 %107)
  %109 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %10, align 8
  %110 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %109, i32 0, i32 1
  %111 = load i64, i64* %13, align 8
  %112 = call i32 @raw_spin_unlock_irqrestore(i32* %110, i64 %111)
  br label %113

113:                                              ; preds = %81
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %23

116:                                              ; preds = %23
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %116, %77, %73, %66, %55, %45
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @pinconf_to_config_argument(i64) #1

declare dso_local i32 @sunxi_pconf_reg(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
