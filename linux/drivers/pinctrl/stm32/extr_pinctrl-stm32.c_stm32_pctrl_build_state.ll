; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_build_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_build_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_pinctrl = type { i32, i32, i32*, %struct.stm32_pinctrl_group*, %struct.stm32_desc_pin* }
%struct.stm32_pinctrl_group = type { i32, i32 }
%struct.stm32_desc_pin = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_pctrl_build_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pctrl_build_state(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_pinctrl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stm32_desc_pin*, align 8
  %7 = alloca %struct.stm32_pinctrl_group*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.stm32_pinctrl* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.stm32_pinctrl* %9, %struct.stm32_pinctrl** %4, align 8
  %10 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %11 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %14 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %18 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @devm_kcalloc(i32* %16, i32 %19, i32 8, i32 %20)
  %22 = bitcast i8* %21 to %struct.stm32_pinctrl_group*
  %23 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %24 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %23, i32 0, i32 3
  store %struct.stm32_pinctrl_group* %22, %struct.stm32_pinctrl_group** %24, align 8
  %25 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %26 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %25, i32 0, i32 3
  %27 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %26, align 8
  %28 = icmp ne %struct.stm32_pinctrl_group* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %96

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @devm_kcalloc(i32* %34, i32 %37, i32 4, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %42 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %41, i32 0, i32 2
  store i32* %40, i32** %42, align 8
  %43 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %44 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %96

50:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %92, %50
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %54 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %51
  %58 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %59 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %58, i32 0, i32 4
  %60 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %60, i64 %62
  store %struct.stm32_desc_pin* %63, %struct.stm32_desc_pin** %6, align 8
  %64 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %65 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %64, i32 0, i32 3
  %66 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %66, i64 %68
  store %struct.stm32_pinctrl_group* %69, %struct.stm32_pinctrl_group** %7, align 8
  %70 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %6, align 8
  %71 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %7, align 8
  %75 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %6, align 8
  %77 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %7, align 8
  %81 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.stm32_desc_pin*, %struct.stm32_desc_pin** %6, align 8
  %83 = getelementptr inbounds %struct.stm32_desc_pin, %struct.stm32_desc_pin* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %4, align 8
  %87 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %57
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %51

95:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %47, %29
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.stm32_pinctrl* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
