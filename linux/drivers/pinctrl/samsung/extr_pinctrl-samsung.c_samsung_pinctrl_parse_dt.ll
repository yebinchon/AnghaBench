; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-samsung.c_samsung_pinctrl_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.samsung_pinctrl_drv_data = type { i32, i32, %struct.samsung_pmx_func*, %struct.samsung_pmx_func* }
%struct.samsung_pmx_func = type { i32 }
%struct.samsung_pin_group = type opaque

@.str = private unnamed_addr constant [28 x i8] c"failed to parse pin groups\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to parse pin functions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.samsung_pinctrl_drv_data*)* @samsung_pinctrl_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @samsung_pinctrl_parse_dt(%struct.platform_device* %0, %struct.samsung_pinctrl_drv_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.samsung_pin_group*, align 8
  %8 = alloca %struct.samsung_pmx_func*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.samsung_pinctrl_drv_data* %1, %struct.samsung_pinctrl_drv_data** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %15 = call %struct.samsung_pmx_func* @samsung_pinctrl_create_groups(%struct.device* %13, %struct.samsung_pinctrl_drv_data* %14, i32* %9)
  %16 = bitcast %struct.samsung_pmx_func* %15 to %struct.samsung_pin_group*
  store %struct.samsung_pin_group* %16, %struct.samsung_pin_group** %7, align 8
  %17 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %7, align 8
  %18 = bitcast %struct.samsung_pin_group* %17 to %struct.samsung_pmx_func*
  %19 = call i64 @IS_ERR(%struct.samsung_pmx_func* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @dev_err(%struct.device* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %7, align 8
  %25 = bitcast %struct.samsung_pin_group* %24 to %struct.samsung_pmx_func*
  %26 = call i32 @PTR_ERR(%struct.samsung_pmx_func* %25)
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %30 = call %struct.samsung_pmx_func* @samsung_pinctrl_create_functions(%struct.device* %28, %struct.samsung_pinctrl_drv_data* %29, i32* %10)
  store %struct.samsung_pmx_func* %30, %struct.samsung_pmx_func** %8, align 8
  %31 = load %struct.samsung_pmx_func*, %struct.samsung_pmx_func** %8, align 8
  %32 = call i64 @IS_ERR(%struct.samsung_pmx_func* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.samsung_pmx_func*, %struct.samsung_pmx_func** %8, align 8
  %38 = call i32 @PTR_ERR(%struct.samsung_pmx_func* %37)
  store i32 %38, i32* %3, align 4
  br label %53

39:                                               ; preds = %27
  %40 = load %struct.samsung_pin_group*, %struct.samsung_pin_group** %7, align 8
  %41 = bitcast %struct.samsung_pin_group* %40 to %struct.samsung_pmx_func*
  %42 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %43 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %42, i32 0, i32 3
  store %struct.samsung_pmx_func* %41, %struct.samsung_pmx_func** %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %46 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.samsung_pmx_func*, %struct.samsung_pmx_func** %8, align 8
  %48 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %49 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %48, i32 0, i32 2
  store %struct.samsung_pmx_func* %47, %struct.samsung_pmx_func** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %5, align 8
  %52 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %39, %34, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.samsung_pmx_func* @samsung_pinctrl_create_groups(%struct.device*, %struct.samsung_pinctrl_drv_data*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.samsung_pmx_func*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.samsung_pmx_func*) #1

declare dso_local %struct.samsung_pmx_func* @samsung_pinctrl_create_functions(%struct.device*, %struct.samsung_pinctrl_drv_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
