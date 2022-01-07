; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-hspi.c_hspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-hspi.c_hspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.resource = type { i32 }
%struct.spi_controller = type { i32, i32, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.hspi_priv = type { i32, %struct.TYPE_10__*, %struct.clk*, %struct.spi_controller* }
%struct.clk = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"couldn't get clock\0A\00", align 1
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@hspi_transfer_one_message = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"devm_spi_register_controller error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.hspi_priv*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %4, align 8
  %12 = load %struct.resource*, %struct.resource** %4, align 8
  %13 = icmp ne %struct.resource* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 @dev_err(%struct.TYPE_10__* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %127

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call %struct.spi_controller* @spi_alloc_master(%struct.TYPE_10__* %22, i32 32)
  store %struct.spi_controller* %23, %struct.spi_controller** %5, align 8
  %24 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %25 = icmp ne %struct.spi_controller* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %127

29:                                               ; preds = %20
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = call %struct.clk* @clk_get(%struct.TYPE_10__* %31, i32* null)
  store %struct.clk* %32, %struct.clk** %7, align 8
  %33 = load %struct.clk*, %struct.clk** %7, align 8
  %34 = call i64 @IS_ERR(%struct.clk* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_err(%struct.TYPE_10__* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %123

42:                                               ; preds = %29
  %43 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %44 = call %struct.hspi_priv* @spi_controller_get_devdata(%struct.spi_controller* %43)
  store %struct.hspi_priv* %44, %struct.hspi_priv** %6, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.hspi_priv*, %struct.hspi_priv** %6, align 8
  %47 = call i32 @platform_set_drvdata(%struct.platform_device* %45, %struct.hspi_priv* %46)
  %48 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %49 = load %struct.hspi_priv*, %struct.hspi_priv** %6, align 8
  %50 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %49, i32 0, i32 3
  store %struct.spi_controller* %48, %struct.spi_controller** %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.hspi_priv*, %struct.hspi_priv** %6, align 8
  %54 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %53, i32 0, i32 1
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %54, align 8
  %55 = load %struct.clk*, %struct.clk** %7, align 8
  %56 = load %struct.hspi_priv*, %struct.hspi_priv** %6, align 8
  %57 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %56, i32 0, i32 2
  store %struct.clk* %55, %struct.clk** %57, align 8
  %58 = load %struct.hspi_priv*, %struct.hspi_priv** %6, align 8
  %59 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load %struct.resource*, %struct.resource** %4, align 8
  %62 = getelementptr inbounds %struct.resource, %struct.resource* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.resource*, %struct.resource** %4, align 8
  %65 = call i32 @resource_size(%struct.resource* %64)
  %66 = call i32 @devm_ioremap(%struct.TYPE_10__* %60, i32 %63, i32 %65)
  %67 = load %struct.hspi_priv*, %struct.hspi_priv** %6, align 8
  %68 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.hspi_priv*, %struct.hspi_priv** %6, align 8
  %70 = getelementptr inbounds %struct.hspi_priv, %struct.hspi_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %42
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %120

76:                                               ; preds = %42
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @pm_runtime_enable(%struct.TYPE_10__* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %84 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @SPI_CPOL, align 4
  %86 = load i32, i32* @SPI_CPHA, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %89 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %91 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %95 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %98 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @hspi_transfer_one_message, align 4
  %100 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %101 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = call i32 @SPI_BPW_MASK(i32 8)
  %103 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %104 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %108 = call i32 @devm_spi_register_controller(%struct.TYPE_10__* %106, %struct.spi_controller* %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %76
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = call i32 @dev_err(%struct.TYPE_10__* %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %116

115:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %127

116:                                              ; preds = %111
  %117 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %118 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %117, i32 0, i32 0
  %119 = call i32 @pm_runtime_disable(%struct.TYPE_10__* %118)
  br label %120

120:                                              ; preds = %116, %73
  %121 = load %struct.clk*, %struct.clk** %7, align 8
  %122 = call i32 @clk_put(%struct.clk* %121)
  br label %123

123:                                              ; preds = %120, %36
  %124 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %125 = call i32 @spi_controller_put(%struct.spi_controller* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %115, %26, %14
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.TYPE_10__*, i32) #1

declare dso_local %struct.clk* @clk_get(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local %struct.hspi_priv* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hspi_priv*) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_10__*) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local i32 @devm_spi_register_controller(%struct.TYPE_10__*, %struct.spi_controller*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_10__*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
