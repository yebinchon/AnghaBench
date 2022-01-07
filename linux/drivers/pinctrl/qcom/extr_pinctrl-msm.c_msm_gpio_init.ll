; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/qcom/extr_pinctrl-msm.c_msm_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_pinctrl = type { %struct.gpio_chip, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.gpio_chip = type { i32, i32, %struct.gpio_irq_chip, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.gpio_irq_chip = type { i32, i32*, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_NR_GPIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@msm_gpio_init_valid_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"msmgpio\00", align 1
@msm_gpio_irq_enable = common dso_local global i32 0, align 4
@msm_gpio_irq_mask = common dso_local global i32 0, align 4
@msm_gpio_irq_unmask = common dso_local global i32 0, align 4
@msm_gpio_irq_ack = common dso_local global i32 0, align 4
@msm_gpio_irq_set_type = common dso_local global i32 0, align 4
@msm_gpio_irq_set_wake = common dso_local global i32 0, align 4
@msm_gpio_irq_reqres = common dso_local global i32 0, align 4
@msm_gpio_irq_relres = common dso_local global i32 0, align 4
@msm_gpio_irq_handler = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IRQ_TYPE_NONE = common dso_local global i32 0, align 4
@handle_bad_irq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed register gpiochip\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to add pin range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_pinctrl*)* @msm_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_gpio_init(%struct.msm_pinctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msm_pinctrl*, align 8
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca %struct.gpio_irq_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msm_pinctrl* %0, %struct.msm_pinctrl** %3, align 8
  %8 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %9 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %8, i32 0, i32 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_NR_GPIO, align 4
  %15 = icmp ugt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %177

22:                                               ; preds = %1
  %23 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %24 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %23, i32 0, i32 0
  store %struct.gpio_chip* %24, %struct.gpio_chip** %4, align 8
  %25 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %26 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %31 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = call i32 @dev_name(%struct.TYPE_8__* %32)
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %37 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %40 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %39, i32 0, i32 6
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %40, align 8
  %41 = load i32, i32* @THIS_MODULE, align 4
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %45 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %50 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %52 = call i64 @msm_gpio_needs_valid_mask(%struct.msm_pinctrl* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %22
  %55 = load i32, i32* @msm_gpio_init_valid_mask, align 4
  %56 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %57 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %54, %22
  %59 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %60 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %61, align 8
  %62 = load i32, i32* @msm_gpio_irq_enable, align 4
  %63 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %64 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 8
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @msm_gpio_irq_mask, align 4
  %67 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %68 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 7
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @msm_gpio_irq_unmask, align 4
  %71 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %72 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 6
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @msm_gpio_irq_ack, align 4
  %75 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %76 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 5
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* @msm_gpio_irq_set_type, align 4
  %79 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %80 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @msm_gpio_irq_set_wake, align 4
  %83 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %84 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 8
  %86 = load i32, i32* @msm_gpio_irq_reqres, align 4
  %87 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %88 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @msm_gpio_irq_relres, align 4
  %91 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %92 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 8
  %94 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %95 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %94, i32 0, i32 2
  store %struct.gpio_irq_chip* %95, %struct.gpio_irq_chip** %5, align 8
  %96 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %97 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %96, i32 0, i32 3
  %98 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %99 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %98, i32 0, i32 5
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  %100 = load i32, i32* @msm_gpio_irq_handler, align 4
  %101 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %102 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 8
  %103 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %104 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %106 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %105, i32 0, i32 1
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call i32* @devm_kcalloc(%struct.TYPE_8__* %107, i32 1, i32 4, i32 %108)
  %110 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %111 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %113 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %58
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %177

119:                                              ; preds = %58
  %120 = load i32, i32* @IRQ_TYPE_NONE, align 4
  %121 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %122 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @handle_bad_irq, align 4
  %124 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %125 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %127 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.gpio_irq_chip*, %struct.gpio_irq_chip** %5, align 8
  %130 = getelementptr inbounds %struct.gpio_irq_chip, %struct.gpio_irq_chip* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 %128, i32* %132, align 4
  %133 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %134 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %133, i32 0, i32 0
  %135 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %136 = call i32 @gpiochip_add_data(%struct.gpio_chip* %134, %struct.msm_pinctrl* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %119
  %140 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %141 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = call i32 @dev_err(%struct.TYPE_8__* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %2, align 4
  br label %177

145:                                              ; preds = %119
  %146 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %147 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %146, i32 0, i32 1
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @of_property_read_bool(i32 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %176, label %153

153:                                              ; preds = %145
  %154 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %155 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %154, i32 0, i32 0
  %156 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %157 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %156, i32 0, i32 1
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = call i32 @dev_name(%struct.TYPE_8__* %158)
  %160 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %161 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @gpiochip_add_pin_range(%struct.gpio_chip* %155, i32 %159, i32 0, i32 0, i32 %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %153
  %167 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %168 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = call i32 @dev_err(%struct.TYPE_8__* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %171 = load %struct.msm_pinctrl*, %struct.msm_pinctrl** %3, align 8
  %172 = getelementptr inbounds %struct.msm_pinctrl, %struct.msm_pinctrl* %171, i32 0, i32 0
  %173 = call i32 @gpiochip_remove(%struct.gpio_chip* %172)
  %174 = load i32, i32* %6, align 4
  store i32 %174, i32* %2, align 4
  br label %177

175:                                              ; preds = %153
  br label %176

176:                                              ; preds = %175, %145
  store i32 0, i32* %2, align 4
  br label %177

177:                                              ; preds = %176, %166, %139, %116, %19
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_8__*) #1

declare dso_local i64 @msm_gpio_needs_valid_mask(%struct.msm_pinctrl*) #1

declare dso_local i32* @devm_kcalloc(%struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.msm_pinctrl*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @gpiochip_add_pin_range(%struct.gpio_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
