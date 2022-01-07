; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_pinctrl_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-lantiq.c_ltq_pinctrl_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ltq_pinmux_info = type { i32, i32*, %struct.pinctrl_desc* }
%struct.pinctrl_desc = type { i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@ltq_pctrl_ops = common dso_local global i32 0, align 4
@ltq_pmx_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to register LTQ pinmux driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ltq_pinctrl_register(%struct.platform_device* %0, %struct.ltq_pinmux_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ltq_pinmux_info*, align 8
  %6 = alloca %struct.pinctrl_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ltq_pinmux_info* %1, %struct.ltq_pinmux_info** %5, align 8
  %7 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %8 = icmp ne %struct.ltq_pinmux_info* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %14 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %13, i32 0, i32 2
  %15 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %14, align 8
  store %struct.pinctrl_desc* %15, %struct.pinctrl_desc** %6, align 8
  %16 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %17 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %16, i32 0, i32 1
  store i32* @ltq_pctrl_ops, i32** %17, align 8
  %18 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %19 = getelementptr inbounds %struct.pinctrl_desc, %struct.pinctrl_desc* %18, i32 0, i32 0
  store i32* @ltq_pmx_ops, i32** %19, align 8
  %20 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %23 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.pinctrl_desc*, %struct.pinctrl_desc** %6, align 8
  %27 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %28 = call i32 @devm_pinctrl_register(i32* %25, %struct.pinctrl_desc* %26, %struct.ltq_pinmux_info* %27)
  %29 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %30 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %32 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %12
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %41 = getelementptr inbounds %struct.ltq_pinmux_info, %struct.ltq_pinmux_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %12
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = load %struct.ltq_pinmux_info*, %struct.ltq_pinmux_info** %5, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.ltq_pinmux_info* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %36, %9
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @devm_pinctrl_register(i32*, %struct.pinctrl_desc*, %struct.ltq_pinmux_info*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ltq_pinmux_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
