; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_pinctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-rza2.c_rza2_pinctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rza2_pinctrl_priv = type { i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@RZA2_PINS_PER_PORT = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@rza2_pinctrl_ops = common dso_local global i32 0, align 4
@rza2_pinmux_ops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Registered ports P0 - P%c\0A\00", align 1
@port_names = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rza2_pinctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rza2_pinctrl_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rza2_pinctrl_priv*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rza2_pinctrl_priv* @devm_kzalloc(i32* %8, i32 56, i32 %9)
  store %struct.rza2_pinctrl_priv* %10, %struct.rza2_pinctrl_priv** %4, align 8
  %11 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %12 = icmp ne %struct.rza2_pinctrl_priv* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %87

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %20 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %19, i32 0, i32 3
  store i32* %18, i32** %20, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = load i32, i32* @IORESOURCE_MEM, align 4
  %23 = call %struct.resource* @platform_get_resource(%struct.platform_device* %21, i32 %22, i32 0)
  store %struct.resource* %23, %struct.resource** %5, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load %struct.resource*, %struct.resource** %5, align 8
  %27 = call i32 @devm_ioremap_resource(i32* %25, %struct.resource* %26)
  %28 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %29 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %31 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @IS_ERR(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %16
  %36 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %37 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %87

40:                                               ; preds = %16
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %43 = call i32 @platform_set_drvdata(%struct.platform_device* %41, %struct.rza2_pinctrl_priv* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i64 @of_device_get_match_data(i32* %45)
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @RZA2_PINS_PER_PORT, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %51 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @DRIVER_NAME, align 4
  %53 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %54 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  store i32 %52, i32* %55, align 8
  %56 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %57 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  store i32* @rza2_pinctrl_ops, i32** %58, align 8
  %59 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %60 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32* @rza2_pinmux_ops, i32** %61, align 8
  %62 = load i32, i32* @THIS_MODULE, align 4
  %63 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %64 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %67 = call i32 @rza2_pinctrl_register(%struct.rza2_pinctrl_priv* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %40
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %87

72:                                               ; preds = %40
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load i32*, i32** @port_names, align 8
  %76 = load %struct.rza2_pinctrl_priv*, %struct.rza2_pinctrl_priv** %4, align 8
  %77 = getelementptr inbounds %struct.rza2_pinctrl_priv, %struct.rza2_pinctrl_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @RZA2_PINS_PER_PORT, align 4
  %81 = sdiv i32 %79, %80
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %75, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %72, %70, %35, %13
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.rza2_pinctrl_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rza2_pinctrl_priv*) #1

declare dso_local i64 @of_device_get_match_data(i32*) #1

declare dso_local i32 @rza2_pinctrl_register(%struct.rza2_pinctrl_priv*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
