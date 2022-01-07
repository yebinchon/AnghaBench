; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sprd.c_sprd_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.spi_controller = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.resource = type { i32 }
%struct.sprd_spi = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_3WIRE = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@sprd_spi_chipselect = common dso_local global i32 0, align 4
@sprd_spi_transfer_one = common dso_local global i32 0, align 4
@sprd_spi_can_dma = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@SPRD_SPI_MAX_SPEED_HZ = common dso_local global i32 0, align 4
@SPRD_SPI_AUTOSUSPEND_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to resume SPI controller\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sprd_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_spi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.sprd_spi*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @of_alias_get_id(i32 %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.spi_controller* @spi_alloc_master(%struct.TYPE_16__* %16, i32 32)
  store %struct.spi_controller* %17, %struct.spi_controller** %4, align 8
  %18 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %19 = icmp ne %struct.spi_controller* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %191

23:                                               ; preds = %1
  %24 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %25 = call %struct.sprd_spi* @spi_controller_get_devdata(%struct.spi_controller* %24)
  store %struct.sprd_spi* %25, %struct.sprd_spi** %6, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load i32, i32* @IORESOURCE_MEM, align 4
  %28 = call %struct.resource* @platform_get_resource(%struct.platform_device* %26, i32 %27, i32 0)
  store %struct.resource* %28, %struct.resource** %5, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %5, align 8
  %32 = call i32 @devm_ioremap_resource(%struct.TYPE_16__* %30, %struct.resource* %31)
  %33 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %34 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %36 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_ERR(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %42 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %7, align 4
  br label %187

45:                                               ; preds = %23
  %46 = load %struct.resource*, %struct.resource** %5, align 8
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %50 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %54 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %53, i32 0, i32 3
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %60 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %59, i32 0, i32 7
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @SPI_CPOL, align 4
  %63 = load i32, i32* @SPI_CPHA, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SPI_3WIRE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SPI_TX_DUAL, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %70 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %75 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @sprd_spi_chipselect, align 4
  %77 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %78 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @sprd_spi_transfer_one, align 4
  %80 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %81 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @sprd_spi_can_dma, align 4
  %83 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %84 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %86 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* @u32, align 4
  %88 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %89 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = ashr i32 %90, 1
  %92 = load i32, i32* @SPRD_SPI_MAX_SPEED_HZ, align 4
  %93 = call i32 @min_t(i32 %87, i32 %91, i32 %92)
  %94 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %95 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %97 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %96, i32 0, i32 2
  %98 = call i32 @init_completion(i32* %97)
  %99 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %100 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %101 = call i32 @platform_set_drvdata(%struct.platform_device* %99, %struct.spi_controller* %100)
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %104 = call i32 @sprd_spi_clk_init(%struct.platform_device* %102, %struct.sprd_spi* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %45
  br label %187

108:                                              ; preds = %45
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %111 = call i32 @sprd_spi_irq_init(%struct.platform_device* %109, %struct.sprd_spi* %110)
  store i32 %111, i32* %7, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %187

115:                                              ; preds = %108
  %116 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %117 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %118 = call i32 @sprd_spi_dma_init(%struct.platform_device* %116, %struct.sprd_spi* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %187

122:                                              ; preds = %115
  %123 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %124 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @clk_prepare_enable(i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %184

130:                                              ; preds = %122
  %131 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %132 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %131, i32 0, i32 0
  %133 = call i32 @pm_runtime_set_active(%struct.TYPE_16__* %132)
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %179

137:                                              ; preds = %130
  %138 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %139 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %138, i32 0, i32 0
  %140 = load i32, i32* @SPRD_SPI_AUTOSUSPEND_DELAY, align 4
  %141 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_16__* %139, i32 %140)
  %142 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %143 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %142, i32 0, i32 0
  %144 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_16__* %143)
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32 @pm_runtime_enable(%struct.TYPE_16__* %146)
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %148, i32 0, i32 0
  %150 = call i32 @pm_runtime_get_sync(%struct.TYPE_16__* %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %137
  %154 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %155 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %154, i32 0, i32 0
  %156 = call i32 @dev_err(%struct.TYPE_16__* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %172

157:                                              ; preds = %137
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %161 = call i32 @devm_spi_register_controller(%struct.TYPE_16__* %159, %struct.spi_controller* %160)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %172

165:                                              ; preds = %157
  %166 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %167 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %166, i32 0, i32 0
  %168 = call i32 @pm_runtime_mark_last_busy(%struct.TYPE_16__* %167)
  %169 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %170 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %169, i32 0, i32 0
  %171 = call i32 @pm_runtime_put_autosuspend(%struct.TYPE_16__* %170)
  store i32 0, i32* %2, align 4
  br label %191

172:                                              ; preds = %164, %153
  %173 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %174 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %173, i32 0, i32 0
  %175 = call i32 @pm_runtime_put_noidle(%struct.TYPE_16__* %174)
  %176 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %177 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %176, i32 0, i32 0
  %178 = call i32 @pm_runtime_disable(%struct.TYPE_16__* %177)
  br label %179

179:                                              ; preds = %172, %136
  %180 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %181 = getelementptr inbounds %struct.sprd_spi, %struct.sprd_spi* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @clk_disable_unprepare(i32 %182)
  br label %184

184:                                              ; preds = %179, %129
  %185 = load %struct.sprd_spi*, %struct.sprd_spi** %6, align 8
  %186 = call i32 @sprd_spi_dma_release(%struct.sprd_spi* %185)
  br label %187

187:                                              ; preds = %184, %121, %114, %107, %40
  %188 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %189 = call i32 @spi_controller_put(%struct.spi_controller* %188)
  %190 = load i32, i32* %7, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %165, %20
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @of_alias_get_id(i32, i8*) #1

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.sprd_spi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_16__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_controller*) #1

declare dso_local i32 @sprd_spi_clk_init(%struct.platform_device*, %struct.sprd_spi*) #1

declare dso_local i32 @sprd_spi_irq_init(%struct.platform_device*, %struct.sprd_spi*) #1

declare dso_local i32 @sprd_spi_dma_init(%struct.platform_device*, %struct.sprd_spi*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.TYPE_16__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.TYPE_16__*, %struct.spi_controller*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.TYPE_16__*) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_16__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @sprd_spi_dma_release(%struct.sprd_spi*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
