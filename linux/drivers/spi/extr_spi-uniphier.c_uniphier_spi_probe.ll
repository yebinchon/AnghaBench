; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-uniphier.c_uniphier_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.uniphier_spi_priv = type { i32, i32, i32, i32, %struct.spi_master* }
%struct.spi_master = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@uniphier_spi_handler = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"uniphier-spi\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@SSI_MIN_CLK_DIVIDER = common dso_local global i32 0, align 4
@SSI_MAX_CLK_DIVIDER = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@uniphier_spi_set_cs = common dso_local global i32 0, align 4
@uniphier_spi_transfer_one = common dso_local global i32 0, align 4
@uniphier_spi_prepare_transfer_hardware = common dso_local global i32 0, align 4
@uniphier_spi_unprepare_transfer_hardware = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.uniphier_spi_priv*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__* %10, i32 24)
  store %struct.spi_master* %11, %struct.spi_master** %5, align 8
  %12 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %13 = icmp ne %struct.spi_master* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %162

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.spi_master* %19)
  %21 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %22 = call %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master* %21)
  store %struct.uniphier_spi_priv* %22, %struct.uniphier_spi_priv** %4, align 8
  %23 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %24 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %25 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %24, i32 0, i32 4
  store %struct.spi_master* %23, %struct.spi_master** %25, align 8
  %26 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %27 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @devm_platform_ioremap_resource(%struct.platform_device* %28, i32 0)
  %30 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %31 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %33 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %17
  %38 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %39 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @PTR_ERR(i32 %40)
  store i32 %41, i32* %8, align 4
  br label %158

42:                                               ; preds = %17
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @devm_clk_get(%struct.TYPE_8__* %44, i32* null)
  %46 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %47 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %49 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @IS_ERR(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_8__* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %58 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %8, align 4
  br label %158

61:                                               ; preds = %42
  %62 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %63 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_prepare_enable(i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %158

69:                                               ; preds = %61
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = call i32 @platform_get_irq(%struct.platform_device* %70, i32 0)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %8, align 4
  br label %153

76:                                               ; preds = %69
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @uniphier_spi_handler, align 4
  %81 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %82 = call i32 @devm_request_irq(%struct.TYPE_8__* %78, i32 %79, i32 %80, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.uniphier_spi_priv* %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = call i32 @dev_err(%struct.TYPE_8__* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %153

89:                                               ; preds = %76
  %90 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %91 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %90, i32 0, i32 2
  %92 = call i32 @init_completion(i32* %91)
  %93 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %94 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @clk_get_rate(i32 %95)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* @SSI_MIN_CLK_DIVIDER, align 4
  %99 = call i8* @DIV_ROUND_UP(i64 %97, i32 %98)
  %100 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %101 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %100, i32 0, i32 10
  store i8* %99, i8** %101, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load i32, i32* @SSI_MAX_CLK_DIVIDER, align 4
  %104 = call i8* @DIV_ROUND_UP(i64 %102, i32 %103)
  %105 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %106 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %105, i32 0, i32 9
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @SPI_CPOL, align 4
  %108 = load i32, i32* @SPI_CPHA, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SPI_CS_HIGH, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @SPI_LSB_FIRST, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %115 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %121 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %120, i32 0, i32 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %127 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = call i32 @SPI_BPW_RANGE_MASK(i32 1, i32 32)
  %129 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %130 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @uniphier_spi_set_cs, align 4
  %132 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %133 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @uniphier_spi_transfer_one, align 4
  %135 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %136 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @uniphier_spi_prepare_transfer_hardware, align 4
  %138 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %139 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @uniphier_spi_unprepare_transfer_hardware, align 4
  %141 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %142 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %144 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %143, i32 0, i32 1
  store i32 1, i32* %144, align 4
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %148 = call i32 @devm_spi_register_master(%struct.TYPE_8__* %146, %struct.spi_master* %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %89
  br label %153

152:                                              ; preds = %89
  store i32 0, i32* %2, align 4
  br label %162

153:                                              ; preds = %151, %85, %74
  %154 = load %struct.uniphier_spi_priv*, %struct.uniphier_spi_priv** %4, align 8
  %155 = getelementptr inbounds %struct.uniphier_spi_priv, %struct.uniphier_spi_priv* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @clk_disable_unprepare(i32 %156)
  br label %158

158:                                              ; preds = %153, %68, %53, %37
  %159 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %160 = call i32 @spi_master_put(%struct.spi_master* %159)
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %158, %152, %14
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.uniphier_spi_priv* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_8__*, i32, i32, i32, i8*, %struct.uniphier_spi_priv*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @SPI_BPW_RANGE_MASK(i32, i32) #1

declare dso_local i32 @devm_spi_register_master(%struct.TYPE_8__*, %struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
