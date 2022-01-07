; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-at91.c_at91_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.pinctrl_pin_desc*, i32 }
%struct.pinctrl_pin_desc = type { i32, i32 }
%struct.platform_device = type { i32 }
%struct.at91_pinctrl = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpio_banks = common dso_local global i32 0, align 4
@gpio_chips = common dso_local global %struct.TYPE_4__** null, align 8
@.str = private unnamed_addr constant [47 x i8] c"All GPIO chips are not registered yet (%d/%d)\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@at91_pinctrl_desc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAX_NB_GPIO_PER_BANK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pio%c%d\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not register AT91 pinctrl driver\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"initialized AT91 pinctrl driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @at91_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.at91_pinctrl*, align 8
  %5 = alloca %struct.pinctrl_pin_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.at91_pinctrl* @devm_kzalloc(i32* %12, i32 8, i32 %13)
  store %struct.at91_pinctrl* %14, %struct.at91_pinctrl** %4, align 8
  %15 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %16 = icmp ne %struct.at91_pinctrl* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %170

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %23 = call i32 @at91_pinctrl_probe_dt(%struct.platform_device* %21, %struct.at91_pinctrl* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %170

28:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @gpio_banks, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @gpio_chips, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %50 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %58 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %64 = call i32 @devm_kfree(i32* %62, %struct.at91_pinctrl* %63)
  %65 = load i32, i32* @EPROBE_DEFER, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %170

67:                                               ; preds = %47
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 @dev_name(i32* %69)
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @at91_pinctrl_desc, i32 0, i32 2), align 8
  %71 = load i32, i32* @gpio_banks, align 4
  %72 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @at91_pinctrl_desc, i32 0, i32 0), align 8
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @at91_pinctrl_desc, i32 0, i32 0), align 8
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.pinctrl_pin_desc* @devm_kcalloc(i32* %75, i32 %76, i32 8, i32 %77)
  store %struct.pinctrl_pin_desc* %78, %struct.pinctrl_pin_desc** %5, align 8
  store %struct.pinctrl_pin_desc* %78, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @at91_pinctrl_desc, i32 0, i32 1), align 8
  %79 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @at91_pinctrl_desc, i32 0, i32 1), align 8
  %80 = icmp ne %struct.pinctrl_pin_desc* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %170

84:                                               ; preds = %67
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %113, %84
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @gpio_banks, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @MAX_NB_GPIO_PER_BANK, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %97 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 65
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @kasprintf(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101)
  %103 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %104 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.pinctrl_pin_desc*, %struct.pinctrl_pin_desc** %5, align 8
  %106 = getelementptr inbounds %struct.pinctrl_pin_desc, %struct.pinctrl_pin_desc* %105, i32 1
  store %struct.pinctrl_pin_desc* %106, %struct.pinctrl_pin_desc** %5, align 8
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %90

112:                                              ; preds = %90
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %85

116:                                              ; preds = %85
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %119 = call i32 @platform_set_drvdata(%struct.platform_device* %117, %struct.at91_pinctrl* %118)
  %120 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %121 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %120, i32 0, i32 0
  %122 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %123 = call i32 @devm_pinctrl_register(i32* %121, %struct.TYPE_5__* @at91_pinctrl_desc, %struct.at91_pinctrl* %122)
  %124 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %125 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %127 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @IS_ERR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %116
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32 @dev_err(i32* %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %135 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %136 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @PTR_ERR(i32 %137)
  store i32 %138, i32* %2, align 4
  br label %170

139:                                              ; preds = %116
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %163, %139
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @gpio_banks, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %166

144:                                              ; preds = %140
  %145 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @gpio_chips, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %145, i64 %147
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = icmp ne %struct.TYPE_4__* %149, null
  br i1 %150, label %151, label %162

151:                                              ; preds = %144
  %152 = load %struct.at91_pinctrl*, %struct.at91_pinctrl** %4, align 8
  %153 = getelementptr inbounds %struct.at91_pinctrl, %struct.at91_pinctrl* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @gpio_chips, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %155, i64 %157
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = call i32 @pinctrl_add_gpio_range(i32 %154, i32* %160)
  br label %162

162:                                              ; preds = %151, %144
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %140

166:                                              ; preds = %140
  %167 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %168 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %167, i32 0, i32 0
  %169 = call i32 @dev_info(i32* %168, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %166, %131, %81, %53, %26, %17
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.at91_pinctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @at91_pinctrl_probe_dt(%struct.platform_device*, %struct.at91_pinctrl*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.at91_pinctrl*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.pinctrl_pin_desc* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.at91_pinctrl*) #1

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.TYPE_5__*, %struct.at91_pinctrl*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pinctrl_add_gpio_range(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
