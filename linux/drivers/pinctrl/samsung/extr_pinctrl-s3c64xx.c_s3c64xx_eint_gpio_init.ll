; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-s3c64xx.c_s3c64xx_eint_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pinctrl_drv_data = type { i32, i32, %struct.samsung_pin_bank*, %struct.device* }
%struct.samsung_pin_bank = type { i64, i32, i64, i32 }
%struct.device = type { i32 }
%struct.s3c64xx_eint_gpio_data = type { i64*, %struct.samsung_pinctrl_drv_data* }

@.str = private unnamed_addr constant [26 x i8] c"irq number not available\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EINT_TYPE_GPIO = common dso_local global i64 0, align 8
@s3c64xx_gpio_irqd_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"gpio irq domain add failed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@domains = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s3c64xx_eint_gpio_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_pinctrl_drv_data*)* @s3c64xx_eint_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_eint_gpio_init(%struct.samsung_pinctrl_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %4 = alloca %struct.s3c64xx_eint_gpio_data*, align 8
  %5 = alloca %struct.samsung_pin_bank*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.samsung_pinctrl_drv_data* %0, %struct.samsung_pinctrl_drv_data** %3, align 8
  %11 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %11, i32 0, i32 3
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %15 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call i32 @dev_err(%struct.device* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %127

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %24 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %25 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %24, i32 0, i32 2
  %26 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %25, align 8
  store %struct.samsung_pin_bank* %26, %struct.samsung_pin_bank** %5, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %66, %23
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %30 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %27
  %34 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %35 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @EINT_TYPE_GPIO, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %66

40:                                               ; preds = %33
  %41 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %42 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @fls(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %47 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %51 = call i64 @irq_domain_add_linear(i32 %48, i32 %49, i32* @s3c64xx_gpio_irqd_ops, %struct.samsung_pin_bank* %50)
  %52 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %53 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %55 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %40
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENXIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %127

63:                                               ; preds = %40
  %64 = load i32, i32* %7, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %39
  %67 = load i32, i32* %8, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %70 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %69, i32 1
  store %struct.samsung_pin_bank* %70, %struct.samsung_pin_bank** %5, align 8
  br label %27

71:                                               ; preds = %27
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = load %struct.s3c64xx_eint_gpio_data*, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %74 = load i32, i32* @domains, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @struct_size(%struct.s3c64xx_eint_gpio_data* %73, i32 %74, i32 %75)
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.s3c64xx_eint_gpio_data* @devm_kzalloc(%struct.device* %72, i32 %76, i32 %77)
  store %struct.s3c64xx_eint_gpio_data* %78, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %79 = load %struct.s3c64xx_eint_gpio_data*, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %80 = icmp ne %struct.s3c64xx_eint_gpio_data* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %127

84:                                               ; preds = %71
  %85 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %86 = load %struct.s3c64xx_eint_gpio_data*, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %87 = getelementptr inbounds %struct.s3c64xx_eint_gpio_data, %struct.s3c64xx_eint_gpio_data* %86, i32 0, i32 1
  store %struct.samsung_pinctrl_drv_data* %85, %struct.samsung_pinctrl_drv_data** %87, align 8
  %88 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %89 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %88, i32 0, i32 2
  %90 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %89, align 8
  store %struct.samsung_pin_bank* %90, %struct.samsung_pin_bank** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %115, %84
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %94 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp ult i32 %92, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %91
  %98 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %99 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @EINT_TYPE_GPIO, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %115

104:                                              ; preds = %97
  %105 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %106 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.s3c64xx_eint_gpio_data*, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %109 = getelementptr inbounds %struct.s3c64xx_eint_gpio_data, %struct.s3c64xx_eint_gpio_data* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %7, align 4
  %113 = zext i32 %111 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  store i64 %107, i64* %114, align 8
  br label %115

115:                                              ; preds = %104, %103
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  %118 = load %struct.samsung_pin_bank*, %struct.samsung_pin_bank** %5, align 8
  %119 = getelementptr inbounds %struct.samsung_pin_bank, %struct.samsung_pin_bank* %118, i32 1
  store %struct.samsung_pin_bank* %119, %struct.samsung_pin_bank** %5, align 8
  br label %91

120:                                              ; preds = %91
  %121 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %3, align 8
  %122 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @s3c64xx_eint_gpio_irq, align 4
  %125 = load %struct.s3c64xx_eint_gpio_data*, %struct.s3c64xx_eint_gpio_data** %4, align 8
  %126 = call i32 @irq_set_chained_handler_and_data(i32 %123, i32 %124, %struct.s3c64xx_eint_gpio_data* %125)
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %120, %81, %58, %18
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @irq_domain_add_linear(i32, i32, i32*, %struct.samsung_pin_bank*) #1

declare dso_local %struct.s3c64xx_eint_gpio_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @struct_size(%struct.s3c64xx_eint_gpio_data*, i32, i32) #1

declare dso_local i32 @irq_set_chained_handler_and_data(i32, i32, %struct.s3c64xx_eint_gpio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
