; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_do_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mpc512x-psc.c_mpc512x_psc_spi_do_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.fsl_spi_platform_data = type { i32, i32, i32 }
%struct.mpc512x_psc_spi = type { i32, i32, %struct.clk*, %struct.clk*, i32, i32, %struct.mpc512x_psc_fifo*, i8*, i32 }
%struct.clk = type { i32 }
%struct.mpc512x_psc_fifo = type { i32 }
%struct.spi_master = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@mpc512x_spi_cs_control = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@mpc512x_psc_spi_setup = common dso_local global i32 0, align 4
@mpc512x_psc_spi_prep_xfer_hw = common dso_local global i32 0, align 4
@mpc512x_psc_spi_msg_xfer = common dso_local global i32 0, align 4
@mpc512x_psc_spi_unprep_xfer_hw = common dso_local global i32 0, align 4
@mpc512x_psc_spi_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not ioremap I/O port range\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@mpc512x_psc_spi_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"mpc512x-psc-spi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ipg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i32)* @mpc512x_psc_spi_do_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc512x_psc_spi_do_probe(%struct.device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fsl_spi_platform_data*, align 8
  %11 = alloca %struct.mpc512x_psc_spi*, align 8
  %12 = alloca %struct.spi_master*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device* %16)
  store %struct.fsl_spi_platform_data* %17, %struct.fsl_spi_platform_data** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.spi_master* @spi_alloc_master(%struct.device* %18, i32 56)
  store %struct.spi_master* %19, %struct.spi_master** %12, align 8
  %20 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %21 = icmp eq %struct.spi_master* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %196

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %28 = call i32 @dev_set_drvdata(%struct.device* %26, %struct.spi_master* %27)
  %29 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %30 = call %struct.mpc512x_psc_spi* @spi_master_get_devdata(%struct.spi_master* %29)
  store %struct.mpc512x_psc_spi* %30, %struct.mpc512x_psc_spi** %11, align 8
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = call i64 @of_device_get_match_data(%struct.device* %31)
  %33 = trunc i64 %32 to i32
  %34 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %35 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %38 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %10, align 8
  %40 = icmp eq %struct.fsl_spi_platform_data* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %25
  %42 = load i32, i32* @mpc512x_spi_cs_control, align 4
  %43 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %44 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  br label %61

45:                                               ; preds = %25
  %46 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %10, align 8
  %47 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %50 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %10, align 8
  %52 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %55 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.fsl_spi_platform_data*, %struct.fsl_spi_platform_data** %10, align 8
  %57 = getelementptr inbounds %struct.fsl_spi_platform_data, %struct.fsl_spi_platform_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %60 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %45, %41
  %62 = load i32, i32* @SPI_CPOL, align 4
  %63 = load i32, i32* @SPI_CPHA, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @SPI_CS_HIGH, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @SPI_LSB_FIRST, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %70 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @mpc512x_psc_spi_setup, align 4
  %72 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %73 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @mpc512x_psc_spi_prep_xfer_hw, align 4
  %75 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %76 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @mpc512x_psc_spi_msg_xfer, align 4
  %78 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %79 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @mpc512x_psc_spi_unprep_xfer_hw, align 4
  %81 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %82 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @mpc512x_psc_spi_cleanup, align 4
  %84 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %85 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = getelementptr inbounds %struct.device, %struct.device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %90 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 4
  %92 = load %struct.device*, %struct.device** %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i8* @devm_ioremap(%struct.device* %92, i32 %93, i32 %94)
  store i8* %95, i8** %14, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %61
  %99 = load %struct.device*, %struct.device** %6, align 8
  %100 = call i32 @dev_err(%struct.device* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @EFAULT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %192

103:                                              ; preds = %61
  %104 = load i8*, i8** %14, align 8
  %105 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %106 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = getelementptr i8, i8* %107, i64 4
  %109 = bitcast i8* %108 to %struct.mpc512x_psc_fifo*
  %110 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %111 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %110, i32 0, i32 6
  store %struct.mpc512x_psc_fifo* %109, %struct.mpc512x_psc_fifo** %111, align 8
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %114 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @mpc512x_psc_spi_isr, align 4
  %117 = load i32, i32* @IRQF_SHARED, align 4
  %118 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %119 = call i32 @devm_request_irq(%struct.device* %112, i32 %115, i32 %116, i32 %117, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.mpc512x_psc_spi* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %103
  br label %192

123:                                              ; preds = %103
  %124 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %125 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %124, i32 0, i32 5
  %126 = call i32 @init_completion(i32* %125)
  %127 = load %struct.device*, %struct.device** %6, align 8
  %128 = call %struct.clk* @devm_clk_get(%struct.device* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %128, %struct.clk** %15, align 8
  %129 = load %struct.clk*, %struct.clk** %15, align 8
  %130 = call i64 @IS_ERR(%struct.clk* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load %struct.clk*, %struct.clk** %15, align 8
  %134 = call i32 @PTR_ERR(%struct.clk* %133)
  store i32 %134, i32* %13, align 4
  br label %192

135:                                              ; preds = %123
  %136 = load %struct.clk*, %struct.clk** %15, align 8
  %137 = call i32 @clk_prepare_enable(%struct.clk* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %192

141:                                              ; preds = %135
  %142 = load %struct.clk*, %struct.clk** %15, align 8
  %143 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %144 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %143, i32 0, i32 2
  store %struct.clk* %142, %struct.clk** %144, align 8
  %145 = load %struct.clk*, %struct.clk** %15, align 8
  %146 = call i32 @clk_get_rate(%struct.clk* %145)
  %147 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %148 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %147, i32 0, i32 4
  store i32 %146, i32* %148, align 8
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = call %struct.clk* @devm_clk_get(%struct.device* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store %struct.clk* %150, %struct.clk** %15, align 8
  %151 = load %struct.clk*, %struct.clk** %15, align 8
  %152 = call i64 @IS_ERR(%struct.clk* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %141
  %155 = load %struct.clk*, %struct.clk** %15, align 8
  %156 = call i32 @PTR_ERR(%struct.clk* %155)
  store i32 %156, i32* %13, align 4
  br label %187

157:                                              ; preds = %141
  %158 = load %struct.clk*, %struct.clk** %15, align 8
  %159 = call i32 @clk_prepare_enable(%struct.clk* %158)
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %187

163:                                              ; preds = %157
  %164 = load %struct.clk*, %struct.clk** %15, align 8
  %165 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %166 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %165, i32 0, i32 3
  store %struct.clk* %164, %struct.clk** %166, align 8
  %167 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %168 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %169 = call i32 @mpc512x_psc_spi_port_config(%struct.spi_master* %167, %struct.mpc512x_psc_spi* %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %163
  br label %182

173:                                              ; preds = %163
  %174 = load %struct.device*, %struct.device** %6, align 8
  %175 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %176 = call i32 @devm_spi_register_master(%struct.device* %174, %struct.spi_master* %175)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %182

180:                                              ; preds = %173
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %5, align 4
  br label %196

182:                                              ; preds = %179, %172
  %183 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %184 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %183, i32 0, i32 3
  %185 = load %struct.clk*, %struct.clk** %184, align 8
  %186 = call i32 @clk_disable_unprepare(%struct.clk* %185)
  br label %187

187:                                              ; preds = %182, %162, %154
  %188 = load %struct.mpc512x_psc_spi*, %struct.mpc512x_psc_spi** %11, align 8
  %189 = getelementptr inbounds %struct.mpc512x_psc_spi, %struct.mpc512x_psc_spi* %188, i32 0, i32 2
  %190 = load %struct.clk*, %struct.clk** %189, align 8
  %191 = call i32 @clk_disable_unprepare(%struct.clk* %190)
  br label %192

192:                                              ; preds = %187, %140, %132, %122, %98
  %193 = load %struct.spi_master*, %struct.spi_master** %12, align 8
  %194 = call i32 @spi_master_put(%struct.spi_master* %193)
  %195 = load i32, i32* %13, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %192, %180, %22
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local %struct.fsl_spi_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.spi_master*) #1

declare dso_local %struct.mpc512x_psc_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i8* @devm_ioremap(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.mpc512x_psc_spi*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @mpc512x_psc_spi_port_config(%struct.spi_master*, %struct.mpc512x_psc_spi*) #1

declare dso_local i32 @devm_spi_register_master(%struct.device*, %struct.spi_master*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
