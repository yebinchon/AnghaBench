; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_parse_generic_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/freescale/extr_pinctrl-imx.c_imx_pinconf_parse_generic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.imx_pinctrl = type { %struct.pinctrl_dev*, %struct.imx_pinctrl_soc_info* }
%struct.pinctrl_dev = type { i32 }
%struct.imx_pinctrl_soc_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.imx_pinctrl*)* @imx_pinconf_parse_generic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pinconf_parse_generic_config(%struct.device_node* %0, %struct.imx_pinctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.imx_pinctrl*, align 8
  %6 = alloca %struct.imx_pinctrl_soc_info*, align 8
  %7 = alloca %struct.pinctrl_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.imx_pinctrl* %1, %struct.imx_pinctrl** %5, align 8
  %11 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %5, align 8
  %12 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %11, i32 0, i32 1
  %13 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %12, align 8
  store %struct.imx_pinctrl_soc_info* %13, %struct.imx_pinctrl_soc_info** %6, align 8
  %14 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %5, align 8
  %15 = getelementptr inbounds %struct.imx_pinctrl, %struct.imx_pinctrl* %14, i32 0, i32 0
  %16 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %15, align 8
  store %struct.pinctrl_dev* %16, %struct.pinctrl_dev** %7, align 8
  %17 = load %struct.imx_pinctrl_soc_info*, %struct.imx_pinctrl_soc_info** %6, align 8
  %18 = getelementptr inbounds %struct.imx_pinctrl_soc_info, %struct.imx_pinctrl_soc_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %25 = call i32 @pinconf_generic_parse_dt_config(%struct.device_node* %23, %struct.pinctrl_dev* %24, i64** %9, i32* %8)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %34

29:                                               ; preds = %22
  %30 = load %struct.imx_pinctrl*, %struct.imx_pinctrl** %5, align 8
  %31 = load i64*, i64** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @imx_pinconf_decode_generic_config(%struct.imx_pinctrl* %30, i64* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %28, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @pinconf_generic_parse_dt_config(%struct.device_node*, %struct.pinctrl_dev*, i64**, i32*) #1

declare dso_local i32 @imx_pinconf_decode_generic_config(%struct.imx_pinctrl*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
