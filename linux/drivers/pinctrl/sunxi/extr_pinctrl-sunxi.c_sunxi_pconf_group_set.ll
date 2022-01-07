; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pconf_group_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sunxi/extr_pinctrl-sunxi.c_sunxi_pconf_group_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.sunxi_pinctrl = type { %struct.sunxi_pinctrl_group* }
%struct.sunxi_pinctrl_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, i32, i64*, i32)* @sunxi_pconf_group_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_pconf_group_set(%struct.pinctrl_dev* %0, i32 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.pinctrl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sunxi_pinctrl*, align 8
  %10 = alloca %struct.sunxi_pinctrl_group*, align 8
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %12 = call %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %11)
  store %struct.sunxi_pinctrl* %12, %struct.sunxi_pinctrl** %9, align 8
  %13 = load %struct.sunxi_pinctrl*, %struct.sunxi_pinctrl** %9, align 8
  %14 = getelementptr inbounds %struct.sunxi_pinctrl, %struct.sunxi_pinctrl* %13, i32 0, i32 0
  %15 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %15, i64 %17
  store %struct.sunxi_pinctrl_group* %18, %struct.sunxi_pinctrl_group** %10, align 8
  %19 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %5, align 8
  %20 = load %struct.sunxi_pinctrl_group*, %struct.sunxi_pinctrl_group** %10, align 8
  %21 = getelementptr inbounds %struct.sunxi_pinctrl_group, %struct.sunxi_pinctrl_group* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @sunxi_pconf_set(%struct.pinctrl_dev* %19, i32 %22, i64* %23, i32 %24)
  ret i32 %25
}

declare dso_local %struct.sunxi_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i32 @sunxi_pconf_set(%struct.pinctrl_dev*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
