; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_init_valid_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_init_valid_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.msm_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"invalid list of reserved GPIOs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"gpios\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"could not read list of GPIOs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i64*, i32)* @msm_gpio_init_valid_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gpio_init_valid_mask(%struct.gpio_chip* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_pinctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %15 = call %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip* %14)
  store %struct.msm_pinctrl* %15, %struct.msm_pinctrl** %8, align 8
  %16 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %17 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %65

23:                                               ; preds = %3
  %24 = load i64*, i64** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @bitmap_fill(i64* %24, i32 %25)
  store i32 0, i32* %11, align 4
  br label %27

27:                                               ; preds = %61, %23
  %28 = load i32*, i32** %12, align 8
  %29 = load i32, i32* %11, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp uge i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %11, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp uge i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38, %34
  %47 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %48 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %127

53:                                               ; preds = %38
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %11, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i64*, i64** %6, align 8
  %60 = call i32 @clear_bit(i32 %58, i64* %59)
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %27

64:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %127

65:                                               ; preds = %3
  %66 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %67 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @device_property_count_u16(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %9, align 4
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %127

73:                                               ; preds = %65
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ugt i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %127

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call i32* @kmalloc_array(i32 %81, i32 4, i32 %82)
  store i32* %83, i32** %13, align 8
  %84 = load i32*, i32** %13, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %127

89:                                               ; preds = %80
  %90 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %91 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @device_property_read_u16_array(i32 %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %8, align 8
  %100 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @dev_err(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %123

103:                                              ; preds = %89
  %104 = load i64*, i64** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @bitmap_zero(i64* %104, i32 %105)
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %119, %103
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %11, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i64*, i64** %6, align 8
  %118 = call i32 @set_bit(i32 %116, i64* %117)
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %11, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %107

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122, %98
  %124 = load i32*, i32** %13, align 8
  %125 = call i32 @kfree(i32* %124)
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123, %86, %77, %72, %64, %46
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.msm_pinctrl* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @bitmap_fill(i64*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local i32 @device_property_count_u16(i32, i8*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @device_property_read_u16_array(i32, i8*, i32*, i32) #1

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
