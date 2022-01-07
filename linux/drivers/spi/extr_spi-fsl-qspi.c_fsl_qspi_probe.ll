; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spi_controller = type { i32, i32, i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.resource = type { i32 }
%struct.fsl_qspi = type { i32, i8*, i8*, i32, i8*, i8*, i32, %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"QuadSPI\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"QuadSPI-memory\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"qspi_en\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"qspi\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"can not enable the clock\0A\00", align 1
@fsl_qspi_irq_handler = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@fsl_qspi_mem_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Freescale QuadSPI probe failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_qspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.fsl_qspi*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 1
  %17 = call %struct.spi_controller* @spi_alloc_master(%struct.device* %16, i32 64)
  store %struct.spi_controller* %17, %struct.spi_controller** %4, align 8
  %18 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %19 = icmp ne %struct.spi_controller* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %190

23:                                               ; preds = %1
  %24 = load i32, i32* @SPI_RX_DUAL, align 4
  %25 = load i32, i32* @SPI_RX_QUAD, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SPI_TX_DUAL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SPI_TX_QUAD, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %32 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %34 = call %struct.fsl_qspi* @spi_controller_get_devdata(%struct.spi_controller* %33)
  store %struct.fsl_qspi* %34, %struct.fsl_qspi** %8, align 8
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %37 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %36, i32 0, i32 7
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @of_device_get_match_data(%struct.device* %38)
  %40 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %41 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %43 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %23
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %184

49:                                               ; preds = %23
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %52 = call i32 @platform_set_drvdata(%struct.platform_device* %50, %struct.fsl_qspi* %51)
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = load i32, i32* @IORESOURCE_MEM, align 4
  %55 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %53, i32 %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %55, %struct.resource** %7, align 8
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load %struct.resource*, %struct.resource** %7, align 8
  %58 = call i8* @devm_ioremap_resource(%struct.device* %56, %struct.resource* %57)
  %59 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %60 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %59, i32 0, i32 5
  store i8* %58, i8** %60, align 8
  %61 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %62 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %61, i32 0, i32 5
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @IS_ERR(i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %49
  %67 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %68 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %67, i32 0, i32 5
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @PTR_ERR(i8* %69)
  store i32 %70, i32* %9, align 4
  br label %184

71:                                               ; preds = %49
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = load i32, i32* @IORESOURCE_MEM, align 4
  %74 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %72, i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %74, %struct.resource** %7, align 8
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = load %struct.resource*, %struct.resource** %7, align 8
  %77 = call i8* @devm_ioremap_resource(%struct.device* %75, %struct.resource* %76)
  %78 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %79 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %78, i32 0, i32 4
  store i8* %77, i8** %79, align 8
  %80 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %81 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %80, i32 0, i32 4
  %82 = load i8*, i8** %81, align 8
  %83 = call i64 @IS_ERR(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %71
  %86 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %87 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %86, i32 0, i32 4
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @PTR_ERR(i8* %88)
  store i32 %89, i32* %9, align 4
  br label %184

90:                                               ; preds = %71
  %91 = load %struct.resource*, %struct.resource** %7, align 8
  %92 = getelementptr inbounds %struct.resource, %struct.resource* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %95 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = call i8* @devm_clk_get(%struct.device* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %99 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %101 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @IS_ERR(i8* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %90
  %106 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %107 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @PTR_ERR(i8* %108)
  store i32 %109, i32* %9, align 4
  br label %184

110:                                              ; preds = %90
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = call i8* @devm_clk_get(%struct.device* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %114 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %116 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i64 @IS_ERR(i8* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %110
  %121 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %122 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @PTR_ERR(i8* %123)
  store i32 %124, i32* %9, align 4
  br label %184

125:                                              ; preds = %110
  %126 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %127 = call i32 @fsl_qspi_clk_prep_enable(%struct.fsl_qspi* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %131, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %184

133:                                              ; preds = %125
  %134 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %135 = call i32 @platform_get_irq(%struct.platform_device* %134, i32 0)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %181

139:                                              ; preds = %133
  %140 = load %struct.device*, %struct.device** %5, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @fsl_qspi_irq_handler, align 4
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %147 = call i32 @devm_request_irq(%struct.device* %140, i32 %141, i32 %142, i32 0, i32 %145, %struct.fsl_qspi* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %139
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  br label %181

154:                                              ; preds = %139
  %155 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %156 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %155, i32 0, i32 0
  %157 = call i32 @mutex_init(i32* %156)
  %158 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %159 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %158, i32 0, i32 1
  store i32 -1, i32* %159, align 4
  %160 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %161 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %160, i32 0, i32 2
  store i32 4, i32* %161, align 8
  %162 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %163 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %162, i32 0, i32 4
  store i32* @fsl_qspi_mem_ops, i32** %163, align 8
  %164 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %165 = call i32 @fsl_qspi_default_setup(%struct.fsl_qspi* %164)
  %166 = load %struct.device_node*, %struct.device_node** %6, align 8
  %167 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %168 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store %struct.device_node* %166, %struct.device_node** %169, align 8
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %172 = call i32 @devm_spi_register_controller(%struct.device* %170, %struct.spi_controller* %171)
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %154
  br label %177

176:                                              ; preds = %154
  store i32 0, i32* %2, align 4
  br label %190

177:                                              ; preds = %175
  %178 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %179 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %178, i32 0, i32 0
  %180 = call i32 @mutex_destroy(i32* %179)
  br label %181

181:                                              ; preds = %177, %150, %138
  %182 = load %struct.fsl_qspi*, %struct.fsl_qspi** %8, align 8
  %183 = call i32 @fsl_qspi_clk_disable_unprep(%struct.fsl_qspi* %182)
  br label %184

184:                                              ; preds = %181, %130, %120, %105, %85, %66, %46
  %185 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %186 = call i32 @spi_controller_put(%struct.spi_controller* %185)
  %187 = load %struct.device*, %struct.device** %5, align 8
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %187, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %184, %176, %20
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.fsl_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.fsl_qspi*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @fsl_qspi_clk_prep_enable(%struct.fsl_qspi*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.fsl_qspi*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @fsl_qspi_default_setup(%struct.fsl_qspi*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.device*, %struct.spi_controller*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @fsl_qspi_clk_disable_unprep(%struct.fsl_qspi*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
