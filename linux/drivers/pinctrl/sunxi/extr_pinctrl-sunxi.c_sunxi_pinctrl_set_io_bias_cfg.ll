; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_set_io_bias_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pinctrl_set_io_bias_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_pinctrl = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regulator = type { i32 }

@PINS_PER_BANK = common dso_local global i32 0, align 4
@IO_BIAS_MASK = common dso_local global i32 0, align 4
@PIO_POW_MOD_SEL_REG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_pinctrl*, i32, %struct.regulator*)* @sunxi_pinctrl_set_io_bias_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pinctrl_set_io_bias_cfg(%struct.sunxi_pinctrl* %0, i32 %1, %struct.regulator* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sunxi_pinctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sunxi_pinctrl* %0, %struct.sunxi_pinctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regulator* %2, %struct.regulator** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PINS_PER_BANK, align 4
  %15 = udiv i32 %13, %14
  %16 = trunc i32 %15 to i16
  store i16 %16, i16* %8, align 2
  %17 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %18 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %130

24:                                               ; preds = %3
  %25 = load %struct.regulator*, %struct.regulator** %7, align 8
  %26 = call i32 @regulator_get_voltage(%struct.regulator* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %130

31:                                               ; preds = %24
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %130

35:                                               ; preds = %31
  %36 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %37 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %127 [
    i32 129, label %41
    i32 128, label %90
  ]

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = icmp sle i32 %42, 1800000
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %61

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = icmp sle i32 %46, 2500000
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 6, i32* %10, align 4
  br label %60

49:                                               ; preds = %45
  %50 = load i32, i32* %12, align 4
  %51 = icmp sle i32 %50, 2800000
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 9, i32* %10, align 4
  br label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %12, align 4
  %55 = icmp sle i32 %54, 3000000
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 10, i32* %10, align 4
  br label %58

57:                                               ; preds = %53
  store i32 13, i32* %10, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %52
  br label %60

60:                                               ; preds = %59, %48
  br label %61

61:                                               ; preds = %60, %44
  %62 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %63 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = sub i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %70 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @sunxi_grp_config_reg(i32 %72)
  %74 = add nsw i64 %71, %73
  %75 = call i32 @readl(i64 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @IO_BIAS_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %84 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i64 @sunxi_grp_config_reg(i32 %86)
  %88 = add nsw i64 %85, %87
  %89 = call i32 @writel(i32 %82, i64 %88)
  store i32 0, i32* %4, align 4
  br label %130

90:                                               ; preds = %35
  %91 = load i32, i32* %12, align 4
  %92 = icmp sle i32 %91, 1800000
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 0
  store i32 %94, i32* %10, align 4
  %95 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %96 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %95, i32 0, i32 0
  %97 = load i64, i64* %9, align 8
  %98 = call i32 @raw_spin_lock_irqsave(i32* %96, i64 %97)
  %99 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %100 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @PIO_POW_MOD_SEL_REG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @readl(i64 %103)
  store i32 %104, i32* %11, align 4
  %105 = load i16, i16* %8, align 2
  %106 = zext i16 %105 to i32
  %107 = shl i32 1, %106
  %108 = xor i32 %107, -1
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, %108
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i16, i16* %8, align 2
  %114 = zext i16 %113 to i32
  %115 = shl i32 %112, %114
  %116 = or i32 %111, %115
  %117 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %118 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @PIO_POW_MOD_SEL_REG, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @writel(i32 %116, i64 %121)
  %123 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %5, align 8
  %124 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %123, i32 0, i32 0
  %125 = load i64, i64* %9, align 8
  %126 = call i32 @raw_spin_unlock_irqrestore(i32* %124, i64 %125)
  store i32 0, i32* %4, align 4
  br label %130

127:                                              ; preds = %35
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %127, %90, %61, %34, %29, %23
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @regulator_get_voltage(%struct.regulator*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @sunxi_grp_config_reg(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
