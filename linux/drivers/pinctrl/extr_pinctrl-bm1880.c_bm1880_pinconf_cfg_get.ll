; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinconf_cfg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-bm1880.c_bm1880_pinconf_cfg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.bm1880_pinctrl = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@BM1880_REG_MUX = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*)* @bm1880_pinconf_cfg_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bm1880_pinconf_cfg_get(%struct.pinctrl_dev* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.bm1880_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %16 = call %struct.bm1880_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %15)
  store %struct.bm1880_pinctrl* %16, %struct.bm1880_pinctrl** %8, align 8
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @pinconf_to_config_param(i64 %18)
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = lshr i32 %20, 1
  %22 = shl i32 %21, 2
  store i32 %22, i32* %12, align 4
  %23 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %8, align 8
  %24 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BM1880_REG_MUX, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %114 [
    i32 131, label %33
    i32 132, label %44
    i32 133, label %55
    i32 129, label %66
    i32 128, label %77
    i32 130, label %88
  ]

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @BM1880_PINCONF_PULLUP(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %117

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @BM1880_PINCONF_PULLDOWN(i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %10, align 4
  br label %117

55:                                               ; preds = %3
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @BM1880_PINCONF_PULLCTRL(i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %10, align 4
  br label %117

66:                                               ; preds = %3
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @BM1880_PINCONF_SCHMITT(i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @BIT(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %10, align 4
  br label %117

77:                                               ; preds = %3
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @BM1880_PINCONF_SLEW(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @BIT(i32 %81)
  %83 = and i32 %80, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %10, align 4
  br label %117

88:                                               ; preds = %3
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @BM1880_PINCONF_DRV(i32 %89)
  store i32 %90, i32* %13, align 4
  %91 = load %struct.bm1880_pinctrl*, %struct.bm1880_pinctrl** %8, align 8
  %92 = getelementptr inbounds %struct.bm1880_pinctrl, %struct.bm1880_pinctrl* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @BIT(i32 %100)
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @bm1880_pinconf_drv_get(i32 %98, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %88
  %111 = load i32, i32* %14, align 4
  store i32 %111, i32* %4, align 4
  br label %122

112:                                              ; preds = %88
  %113 = load i32, i32* %14, align 4
  store i32 %113, i32* %10, align 4
  br label %117

114:                                              ; preds = %3
  %115 = load i32, i32* @ENOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  br label %122

117:                                              ; preds = %112, %77, %66, %55, %44, %33
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @pinconf_to_config_packed(i32 %118, i32 %119)
  %121 = load i64*, i64** %7, align 8
  store i64 %120, i64* %121, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %114, %110
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.bm1880_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @pinconf_to_config_param(i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @BM1880_PINCONF_PULLUP(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @BM1880_PINCONF_PULLDOWN(i32) #1

declare dso_local i32 @BM1880_PINCONF_PULLCTRL(i32) #1

declare dso_local i32 @BM1880_PINCONF_SCHMITT(i32) #1

declare dso_local i32 @BM1880_PINCONF_SLEW(i32) #1

declare dso_local i32 @BM1880_PINCONF_DRV(i32) #1

declare dso_local i32 @bm1880_pinconf_drv_get(i32, i32) #1

declare dso_local i64 @pinconf_to_config_packed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
