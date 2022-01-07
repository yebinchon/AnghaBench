; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.spi_controller = type { i32, i32, %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.zynq_qspi = type { i64, i8*, i8*, i32, i8*, %struct.device* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pclk\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"pclk clock not found.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ref_clk\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ref_clk clock not found.\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Unable to enable APB clock.\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Unable to enable device clock.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@zynq_qspi_irq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"request_irq failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@ZYNQ_QSPI_DEFAULT_NUM_CS = common dso_local global i32 0, align 4
@SPI_RX_DUAL = common dso_local global i32 0, align 4
@SPI_RX_QUAD = common dso_local global i32 0, align 4
@SPI_TX_DUAL = common dso_local global i32 0, align 4
@SPI_TX_QUAD = common dso_local global i32 0, align 4
@zynq_qspi_mem_ops = common dso_local global i32 0, align 4
@zynq_qspi_setup_op = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"spi_register_master failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynq_qspi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_qspi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_controller*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.zynq_qspi*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %7, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.spi_controller* @spi_alloc_master(%struct.device* %16, i32 48)
  store %struct.spi_controller* %17, %struct.spi_controller** %5, align 8
  %18 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %19 = icmp ne %struct.spi_controller* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %208

23:                                               ; preds = %1
  %24 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %25 = call %struct.zynq_qspi* @spi_controller_get_devdata(%struct.spi_controller* %24)
  store %struct.zynq_qspi* %25, %struct.zynq_qspi** %8, align 8
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %28 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %27, i32 0, i32 5
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %31 = call i32 @platform_set_drvdata(%struct.platform_device* %29, %struct.zynq_qspi* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = call i8* @devm_platform_ioremap_resource(%struct.platform_device* %32, i32 0)
  %34 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %35 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %37 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %36, i32 0, i32 4
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @IS_ERR(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %23
  %42 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %43 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %42, i32 0, i32 4
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @PTR_ERR(i8* %44)
  store i32 %45, i32* %4, align 4
  br label %204

46:                                               ; preds = %23
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i8* @devm_clk_get(%struct.device* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %51 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %53 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %62 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @PTR_ERR(i8* %63)
  store i32 %64, i32* %4, align 4
  br label %204

65:                                               ; preds = %46
  %66 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %67 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %66, i32 0, i32 3
  %68 = call i32 @init_completion(i32* %67)
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i8* @devm_clk_get(%struct.device* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %72 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %73 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %72, i32 0, i32 2
  store i8* %71, i8** %73, align 8
  %74 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %75 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @IS_ERR(i8* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %65
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %84 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @PTR_ERR(i8* %85)
  store i32 %86, i32* %4, align 4
  br label %204

87:                                               ; preds = %65
  %88 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %89 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @clk_prepare_enable(i8* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.device* %96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %204

98:                                               ; preds = %87
  %99 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %100 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %99, i32 0, i32 2
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @clk_prepare_enable(i8* %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %199

109:                                              ; preds = %98
  %110 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %111 = call i32 @zynq_qspi_init_hw(%struct.zynq_qspi* %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = call i64 @platform_get_irq(%struct.platform_device* %112, i32 0)
  %114 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %115 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %117 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp sle i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load i32, i32* @ENXIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %204

123:                                              ; preds = %109
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %127 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @zynq_qspi_irq, align 4
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %134 = call i32 @devm_request_irq(%struct.device* %125, i64 %128, i32 %129, i32 0, i32 %132, %struct.zynq_qspi* %133)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %123
  %138 = load i32, i32* @ENXIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  %140 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %141 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %140, i32 0, i32 0
  %142 = call i32 @dev_err(%struct.device* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %204

143:                                              ; preds = %123
  %144 = load %struct.device_node*, %struct.device_node** %7, align 8
  %145 = call i32 @of_property_read_u32(%struct.device_node* %144, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* %9)
  store i32 %145, i32* %4, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load i32, i32* @ZYNQ_QSPI_DEFAULT_NUM_CS, align 4
  %150 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %151 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  br label %156

152:                                              ; preds = %143
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %155 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %152, %148
  %157 = load i32, i32* @SPI_RX_DUAL, align 4
  %158 = load i32, i32* @SPI_RX_QUAD, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @SPI_TX_DUAL, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @SPI_TX_QUAD, align 4
  %163 = or i32 %161, %162
  %164 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %165 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %167 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %166, i32 0, i32 4
  store i32* @zynq_qspi_mem_ops, i32** %167, align 8
  %168 = load i32, i32* @zynq_qspi_setup_op, align 4
  %169 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %170 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 8
  %171 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %172 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @clk_get_rate(i8* %173)
  %175 = sdiv i32 %174, 2
  %176 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %177 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.device_node*, %struct.device_node** %7, align 8
  %179 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %180 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %179, i32 0, i32 2
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  store %struct.device_node* %178, %struct.device_node** %181, align 8
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %185 = call i32 @devm_spi_register_controller(%struct.device* %183, %struct.spi_controller* %184)
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* %4, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %156
  %189 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %190 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %189, i32 0, i32 0
  %191 = call i32 @dev_err(%struct.device* %190, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %194

192:                                              ; preds = %156
  %193 = load i32, i32* %4, align 4
  store i32 %193, i32* %2, align 4
  br label %208

194:                                              ; preds = %188
  %195 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %196 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @clk_disable_unprepare(i8* %197)
  br label %199

199:                                              ; preds = %194, %105
  %200 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %201 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %200, i32 0, i32 1
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @clk_disable_unprepare(i8* %202)
  br label %204

204:                                              ; preds = %199, %137, %120, %94, %79, %57, %41
  %205 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  %206 = call i32 @spi_controller_put(%struct.spi_controller* %205)
  %207 = load i32, i32* %4, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %204, %192, %20
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.spi_controller* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local %struct.zynq_qspi* @spi_controller_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.zynq_qspi*) #1

declare dso_local i8* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @zynq_qspi_init_hw(%struct.zynq_qspi*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i64, i32, i32, i32, %struct.zynq_qspi*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @devm_spi_register_controller(%struct.device*, %struct.spi_controller*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

declare dso_local i32 @spi_controller_put(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
