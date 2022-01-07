; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-slave-mt27xx.c_mtk_spi_slave_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.spi_controller = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mtk_spi_slave = type { i32, i32, %struct.TYPE_12__*, i32 }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"failed to alloc spi slave\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@mtk_spi_slave_prepare_message = common dso_local global i32 0, align 4
@mtk_spi_slave_transfer_one = common dso_local global i32 0, align 4
@mtk_spi_slave_setup = common dso_local global i32 0, align 4
@mtk_slave_abort = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to determine base address\0A\00", align 1
@mtk_spi_slave_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to register irq (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to get spi-clk: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to enable spi_clk (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to register slave controller(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_spi_slave_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_spi_slave_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.mtk_spi_slave*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call %struct.spi_controller* @spi_alloc_slave(%struct.TYPE_12__* %10, i32 24)
  store %struct.spi_controller* %11, %struct.spi_controller** %4, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %13 = icmp ne %struct.spi_controller* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %181

20:                                               ; preds = %1
  %21 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %22 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %28 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @SPI_CPOL, align 4
  %31 = load i32, i32* @SPI_CPHA, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %34 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @SPI_LSB_FIRST, align 4
  %36 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %37 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @mtk_spi_slave_prepare_message, align 4
  %41 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %42 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @mtk_spi_slave_transfer_one, align 4
  %44 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %45 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @mtk_spi_slave_setup, align 4
  %47 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %48 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @mtk_slave_abort, align 4
  %50 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %51 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %53 = call %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller* %52)
  store %struct.mtk_spi_slave* %53, %struct.mtk_spi_slave** %5, align 8
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %56 = call i32 @platform_set_drvdata(%struct.platform_device* %54, %struct.spi_controller* %55)
  %57 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %58 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %57, i32 0, i32 3
  %59 = call i32 @init_completion(i32* %58)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 0)
  store %struct.resource* %62, %struct.resource** %6, align 8
  %63 = load %struct.resource*, %struct.resource** %6, align 8
  %64 = icmp ne %struct.resource* %63, null
  br i1 %64, label %71, label %65

65:                                               ; preds = %20
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %177

71:                                               ; preds = %20
  %72 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %73 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %72, i32 0, i32 0
  %74 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %75 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %74, i32 0, i32 2
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %75, align 8
  %76 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = load %struct.resource*, %struct.resource** %6, align 8
  %79 = call i32 @devm_ioremap_resource(%struct.TYPE_12__* %77, %struct.resource* %78)
  %80 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %81 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %83 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @IS_ERR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %71
  %88 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %89 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @PTR_ERR(i32 %90)
  store i32 %91, i32* %8, align 4
  br label %177

92:                                               ; preds = %71
  %93 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %94 = call i32 @platform_get_irq(%struct.platform_device* %93, i32 0)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %8, align 4
  br label %177

99:                                               ; preds = %92
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @mtk_spi_slave_interrupt, align 4
  %104 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_name(%struct.TYPE_12__* %106)
  %108 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %109 = call i32 @devm_request_irq(%struct.TYPE_12__* %101, i32 %102, i32 %103, i32 %104, i32 %107, %struct.spi_controller* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %177

117:                                              ; preds = %99
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = call i32 @devm_clk_get(%struct.TYPE_12__* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %121 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %122 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %124 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @IS_ERR(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %117
  %129 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %130 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @PTR_ERR(i32 %131)
  store i32 %132, i32* %8, align 4
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load i32, i32* %8, align 4
  %136 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %135)
  br label %177

137:                                              ; preds = %117
  %138 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %139 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @clk_prepare_enable(i32 %140)
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = load i32, i32* %8, align 4
  %148 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %147)
  br label %177

149:                                              ; preds = %137
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 @pm_runtime_enable(%struct.TYPE_12__* %151)
  %153 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %154 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %153, i32 0, i32 0
  %155 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %156 = call i32 @devm_spi_register_controller(%struct.TYPE_12__* %154, %struct.spi_controller* %155)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %168

159:                                              ; preds = %149
  %160 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %161 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %160, i32 0, i32 0
  %162 = load i32, i32* %8, align 4
  %163 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %161, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %162)
  %164 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %165 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @clk_disable_unprepare(i32 %166)
  br label %173

168:                                              ; preds = %149
  %169 = load %struct.mtk_spi_slave*, %struct.mtk_spi_slave** %5, align 8
  %170 = getelementptr inbounds %struct.mtk_spi_slave, %struct.mtk_spi_slave* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @clk_disable_unprepare(i32 %171)
  store i32 0, i32* %2, align 4
  br label %181

173:                                              ; preds = %159
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = call i32 @pm_runtime_disable(%struct.TYPE_12__* %175)
  br label %177

177:                                              ; preds = %173, %144, %128, %112, %97, %87, %65
  %178 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %179 = call i32 @spi_controller_put(%struct.spi_controller* %178)
  %180 = load i32, i32* %8, align 4
  store i32 %180, i32* %2, align 4
  br label %181

181:                                              ; preds = %177, %168, %14
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local %struct.spi_controller* @spi_alloc_slave(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.mtk_spi_slave* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_controller*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_12__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.TYPE_12__*, i32, i32, i32, i32, %struct.spi_controller*) #1

declare dso_local i32 @dev_name(%struct.TYPE_12__*) #1

declare dso_local i32 @devm_clk_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_12__*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.TYPE_12__*, %struct.spi_controller*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.TYPE_12__*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
