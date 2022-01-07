; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear300.c_spear300_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/spear/extr_pinctrl-spear300.c_spear300_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8*, i8*, i64, i32*, i8*, i8*, i8*, i8* }
%struct.platform_device = type { i32 }

@spear300_pingroups = common dso_local global i8* null, align 8
@spear3xx_machdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@spear300_functions = common dso_local global i8* null, align 8
@spear300_pmx_modes = common dso_local global i8* null, align 8
@PMX_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear300_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear300_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load i8*, i8** @spear300_pingroups, align 8
  store i8* %5, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 8), align 8
  %6 = load i8*, i8** @spear300_pingroups, align 8
  %7 = call i8* @ARRAY_SIZE(i8* %6)
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 7), align 8
  %8 = load i8*, i8** @spear300_functions, align 8
  store i8* %8, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 6), align 8
  %9 = load i8*, i8** @spear300_functions, align 8
  %10 = call i8* @ARRAY_SIZE(i8* %9)
  store i8* %10, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 5), align 8
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 0), align 8
  %11 = load i8*, i8** @spear300_pmx_modes, align 8
  store i8* %11, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 2), align 8
  %12 = load i8*, i8** @spear300_pmx_modes, align 8
  %13 = call i8* @ARRAY_SIZE(i8* %12)
  store i8* %13, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @spear3xx_machdata, i32 0, i32 1), align 8
  %14 = load i32, i32* @PMX_CONFIG_REG, align 4
  %15 = call i32 @pmx_init_addr(%struct.TYPE_4__* @spear3xx_machdata, i32 %14)
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @spear_pinctrl_probe(%struct.platform_device* %16, %struct.TYPE_4__* @spear3xx_machdata)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @pmx_init_addr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spear_pinctrl_probe(%struct.platform_device*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
