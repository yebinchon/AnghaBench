; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_eint_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_eint_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pinctrl_drv_data = type { i32, %struct.device*, %struct.samsung_pin_bank*, i32 }
%struct.device = type { i32 }
%struct.samsung_pin_bank = type { i64, i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"irq number not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@exynos_eint_gpio_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"irq request failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EINT_TYPE_GPIO = common dso_local global i64 0, align 8
@exynos_eint_irqd_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"gpio irq domain add failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exynos_gpio_irq_chip = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exynos_eint_gpio_init(%struct.samsung_pinctrl_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %4 = alloca %struct.samsung_pin_bank*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.samsung_pinctrl_drv_data* %0, %struct.samsung_pinctrl_drv_data** %3, align 8
  %8 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %9 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %8, i32 0, i32 1
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %129

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %23 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @exynos_eint_gpio_irq, align 4
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @dev_name(%struct.device* %26)
  %28 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %29 = call i32 @devm_request_irq(%struct.device* %21, i32 %24, i32 %25, i32 0, i32 %27, %struct.samsung_pinctrl_drv_data* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %129

37:                                               ; preds = %20
  %38 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %39 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %38, i32 0, i32 2
  %40 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %39, align 8
  store %struct.samsung_pin_bank* %40, %struct.samsung_pin_bank** %4, align 8
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %96, %37
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %44 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %101

47:                                               ; preds = %41
  %48 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %49 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EINT_TYPE_GPIO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %96

54:                                               ; preds = %47
  %55 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %56 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %59 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %62 = call i32 @irq_domain_add_linear(i32 %57, i32 %60, i32* @exynos_eint_irqd_ops, %struct.samsung_pin_bank* %61)
  %63 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %64 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %66 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %54
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %102

74:                                               ; preds = %54
  %75 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %76 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %75, i32 0, i32 1
  %77 = load %struct.device*, %struct.device** %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @devm_kzalloc(%struct.device* %77, i32 4, i32 %78)
  %80 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %81 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %83 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %74
  %87 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %88 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @irq_domain_remove(i32 %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %102

93:                                               ; preds = %74
  %94 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %95 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %94, i32 0, i32 2
  store i32* @exynos_gpio_irq_chip, i32** %95, align 8
  br label %96

96:                                               ; preds = %93, %53
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  %99 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %100 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %99, i32 1
  store %struct.samsung_pin_bank* %100, %struct.samsung_pin_bank** %4, align 8
  br label %41

101:                                              ; preds = %41
  store i32 0, i32* %2, align 4
  br label %129

102:                                              ; preds = %86, %69
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  %105 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %106 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %105, i32 -1
  store %struct.samsung_pin_bank* %106, %struct.samsung_pin_bank** %4, align 8
  br label %107

107:                                              ; preds = %122, %102
  %108 = load i32, i32* %7, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %112 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @EINT_TYPE_GPIO, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  br label %122

117:                                              ; preds = %110
  %118 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %119 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @irq_domain_remove(i32 %120)
  br label %122

122:                                              ; preds = %117, %116
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %7, align 4
  %125 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %4, align 8
  %126 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %125, i32 -1
  store %struct.samsung_pin_bank* %126, %struct.samsung_pin_bank** %4, align 8
  br label %107

127:                                              ; preds = %107
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %101, %32, %15
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.samsung_pinctrl_drv_data*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @irq_domain_add_linear(i32, i32, i32*, %struct.samsung_pin_bank*) #1

declare dso_local i32 @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
