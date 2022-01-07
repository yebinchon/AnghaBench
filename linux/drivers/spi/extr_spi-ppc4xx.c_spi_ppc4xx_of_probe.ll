; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_of_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-ppc4xx.c_spi_ppc4xx_of_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ppc4xx_spi = type { i32*, i32, i32, i32, i32, i32, %struct.spi_master*, %struct.spi_bitbang, i32, %struct.device* }
%struct.spi_master = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.spi_bitbang = type { %struct.spi_master*, i64, i32, i32, i32 }
%struct.resource = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't request gpio #%d: %d\0A\00", align 1
@OF_GPIO_ACTIVE_LOW = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid gpio #%d: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@spi_ppc4xx_setupxfer = common dso_local global i32 0, align 4
@spi_ppc4xx_chipsel = common dso_local global i32 0, align 4
@spi_ppc4xx_txrx = common dso_local global i32 0, align 4
@spi_ppc4xx_setup = common dso_local global i32 0, align 4
@spi_ppc4xx_cleanup = common dso_local global i32 0, align 4
@SPI_CPHA = common dso_local global i32 0, align 4
@SPI_CPOL = common dso_local global i32 0, align 4
@SPI_CS_HIGH = common dso_local global i32 0, align 4
@SPI_LSB_FIRST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"ibm,opb\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"OPB: cannot find node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"OPB: no clock-frequency property set\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"error while parsing device node resource\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"too small to map registers\0A\00", align 1
@spi_ppc4xx_int = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"spi_ppc4xx_of\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"unable to allocate interrupt\0A\00", align 1
@DRIVER_NAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"resource unavailable\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"unable to memory map registers\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"failed to register SPI master\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"driver initialized\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"initialization failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spi_ppc4xx_of_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_ppc4xx_of_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ppc4xx_spi*, align 8
  %5 = alloca %struct.spi_master*, align 8
  %6 = alloca %struct.spi_bitbang*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %8, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  store %struct.device* %22, %struct.device** %9, align 8
  %23 = load %struct.device*, %struct.device** %9, align 8
  %24 = call %struct.spi_master* @spi_alloc_master(%struct.device* %23, i32 88)
  store %struct.spi_master* %24, %struct.spi_master** %5, align 8
  %25 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %26 = icmp eq %struct.spi_master* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %330

30:                                               ; preds = %1
  %31 = load %struct.device_node*, %struct.device_node** %8, align 8
  %32 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %33 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store %struct.device_node* %31, %struct.device_node** %34, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %35, %struct.spi_master* %36)
  %38 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %39 = call %struct.ppc4xx_spi* @spi_master_get_devdata(%struct.spi_master* %38)
  store %struct.ppc4xx_spi* %39, %struct.ppc4xx_spi** %4, align 8
  %40 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %41 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %42 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %41, i32 0, i32 6
  store %struct.spi_master* %40, %struct.spi_master** %42, align 8
  %43 = load %struct.device*, %struct.device** %9, align 8
  %44 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %45 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %44, i32 0, i32 9
  store %struct.device* %43, %struct.device** %45, align 8
  %46 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %47 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %46, i32 0, i32 8
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.device_node*, %struct.device_node** %8, align 8
  %50 = call i32 @of_gpio_count(%struct.device_node* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %127

53:                                               ; preds = %30
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32* @kcalloc(i32 %54, i32 4, i32 %55)
  %57 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %58 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %57, i32 0, i32 0
  store i32* %56, i32** %58, align 8
  %59 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %60 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %324

66:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %123, %66
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %126

71:                                               ; preds = %67
  %72 = load %struct.device_node*, %struct.device_node** %8, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @of_get_gpio_flags(%struct.device_node* %72, i32 %73, i32* %16)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %77 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load i32, i32* %15, align 4
  %83 = call i64 @gpio_is_valid(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %71
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.device_node*, %struct.device_node** %8, align 8
  %88 = getelementptr inbounds %struct.device_node, %struct.device_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gpio_request(i32 %86, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load %struct.device*, %struct.device** %9, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %96)
  br label %321

98:                                               ; preds = %85
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* @OF_GPIO_ACTIVE_LOW, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = call i32 @gpio_direction_output(i32 %99, i32 %106)
  br label %122

108:                                              ; preds = %71
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @EEXIST, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %121

114:                                              ; preds = %108
  %115 = load %struct.device*, %struct.device** %9, align 8
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %321

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %98
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %67

126:                                              ; preds = %67
  br label %127

127:                                              ; preds = %126, %30
  %128 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %129 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %128, i32 0, i32 7
  store %struct.spi_bitbang* %129, %struct.spi_bitbang** %6, align 8
  %130 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %131 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %130, i32 0, i32 6
  %132 = load %struct.spi_master*, %struct.spi_master** %131, align 8
  %133 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %134 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %133, i32 0, i32 0
  store %struct.spi_master* %132, %struct.spi_master** %134, align 8
  %135 = load i32, i32* @spi_ppc4xx_setupxfer, align 4
  %136 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %137 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* @spi_ppc4xx_chipsel, align 4
  %139 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %140 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @spi_ppc4xx_txrx, align 4
  %142 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %143 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %145 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %144, i32 0, i32 1
  store i64 0, i64* %145, align 8
  %146 = load i32, i32* @spi_ppc4xx_setup, align 4
  %147 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %148 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %147, i32 0, i32 0
  %149 = load %struct.spi_master*, %struct.spi_master** %148, align 8
  %150 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %149, i32 0, i32 4
  store i32 %146, i32* %150, align 8
  %151 = load i32, i32* @spi_ppc4xx_cleanup, align 4
  %152 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %153 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %152, i32 0, i32 0
  %154 = load %struct.spi_master*, %struct.spi_master** %153, align 8
  %155 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %154, i32 0, i32 3
  store i32 %151, i32* %155, align 4
  %156 = call i32 @SPI_BPW_MASK(i32 8)
  %157 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %158 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %157, i32 0, i32 0
  %159 = load %struct.spi_master*, %struct.spi_master** %158, align 8
  %160 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %159, i32 0, i32 2
  store i32 %156, i32* %160, align 8
  %161 = load i32, i32* @SPI_CPHA, align 4
  %162 = load i32, i32* @SPI_CPOL, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @SPI_CS_HIGH, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @SPI_LSB_FIRST, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %169 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %168, i32 0, i32 0
  %170 = load %struct.spi_master*, %struct.spi_master** %169, align 8
  %171 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 8
  %172 = load i32, i32* %12, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %127
  %175 = load i32, i32* %12, align 4
  br label %177

176:                                              ; preds = %127
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ]
  %179 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %180 = getelementptr inbounds %struct.spi_bitbang, %struct.spi_bitbang* %179, i32 0, i32 0
  %181 = load %struct.spi_master*, %struct.spi_master** %180, align 8
  %182 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %181, i32 0, i32 1
  store i32 %178, i32* %182, align 4
  %183 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.device_node* %183, %struct.device_node** %10, align 8
  %184 = load %struct.device_node*, %struct.device_node** %10, align 8
  %185 = icmp eq %struct.device_node* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %177
  %187 = load %struct.device*, %struct.device** %9, align 8
  %188 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %187, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @ENODEV, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %11, align 4
  br label %321

191:                                              ; preds = %177
  %192 = load %struct.device_node*, %struct.device_node** %10, align 8
  %193 = call i32* @of_get_property(%struct.device_node* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %193, i32** %13, align 8
  %194 = load i32*, i32** %13, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %203

196:                                              ; preds = %191
  %197 = load %struct.device*, %struct.device** %9, align 8
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %197, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %199 = load %struct.device_node*, %struct.device_node** %10, align 8
  %200 = call i32 @of_node_put(%struct.device_node* %199)
  %201 = load i32, i32* @ENODEV, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %11, align 4
  br label %321

203:                                              ; preds = %191
  %204 = load i32*, i32** %13, align 8
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %207 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 8
  %208 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %209 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = lshr i32 %210, 2
  store i32 %211, i32* %209, align 8
  %212 = load %struct.device_node*, %struct.device_node** %10, align 8
  %213 = call i32 @of_node_put(%struct.device_node* %212)
  %214 = load %struct.device_node*, %struct.device_node** %8, align 8
  %215 = call i32 @of_address_to_resource(%struct.device_node* %214, i32 0, %struct.resource* %7)
  store i32 %215, i32* %11, align 4
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %203
  %219 = load %struct.device*, %struct.device** %9, align 8
  %220 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %219, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %321

221:                                              ; preds = %203
  %222 = getelementptr inbounds %struct.resource, %struct.resource* %7, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %225 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 4
  %226 = call i32 @resource_size(%struct.resource* %7)
  %227 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %228 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 4
  %229 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %230 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = icmp ult i64 %232, 4
  br i1 %233, label %234, label %239

234:                                              ; preds = %221
  %235 = load %struct.device*, %struct.device** %9, align 8
  %236 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %237 = load i32, i32* @EINVAL, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %11, align 4
  br label %321

239:                                              ; preds = %221
  %240 = load %struct.device_node*, %struct.device_node** %8, align 8
  %241 = call i32 @irq_of_parse_and_map(%struct.device_node* %240, i32 0)
  %242 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %243 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %242, i32 0, i32 3
  store i32 %241, i32* %243, align 8
  %244 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %245 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @spi_ppc4xx_int, align 4
  %248 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %249 = bitcast %struct.ppc4xx_spi* %248 to i8*
  %250 = call i32 @request_irq(i32 %246, i32 %247, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %239
  %254 = load %struct.device*, %struct.device** %9, align 8
  %255 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %254, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %321

256:                                              ; preds = %239
  %257 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %258 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %261 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @DRIVER_NAME, align 4
  %264 = call i32 @request_mem_region(i32 %259, i32 %262, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %256
  %267 = load %struct.device*, %struct.device** %9, align 8
  %268 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %267, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %269 = load i32, i32* @EBUSY, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %11, align 4
  br label %315

271:                                              ; preds = %256
  %272 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %273 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @ioremap(i32 %274, i32 4)
  %276 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %277 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %276, i32 0, i32 5
  store i32 %275, i32* %277, align 8
  %278 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %279 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %287, label %282

282:                                              ; preds = %271
  %283 = load %struct.device*, %struct.device** %9, align 8
  %284 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %283, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %285 = load i32, i32* @ENXIO, align 4
  %286 = sub nsw i32 0, %285
  store i32 %286, i32* %11, align 4
  br label %307

287:                                              ; preds = %271
  %288 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %289 = call i32 @spi_ppc4xx_enable(%struct.ppc4xx_spi* %288)
  %290 = load %struct.device*, %struct.device** %9, align 8
  %291 = getelementptr inbounds %struct.device, %struct.device* %290, i32 0, i32 0
  store i64 0, i64* %291, align 8
  %292 = load %struct.spi_bitbang*, %struct.spi_bitbang** %6, align 8
  %293 = call i32 @spi_bitbang_start(%struct.spi_bitbang* %292)
  store i32 %293, i32* %11, align 4
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %287
  %297 = load %struct.device*, %struct.device** %9, align 8
  %298 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %297, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  br label %302

299:                                              ; preds = %287
  %300 = load %struct.device*, %struct.device** %9, align 8
  %301 = call i32 @dev_info(%struct.device* %300, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %330

302:                                              ; preds = %296
  %303 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %304 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @iounmap(i32 %305)
  br label %307

307:                                              ; preds = %302, %282
  %308 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %309 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %312 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @release_mem_region(i32 %310, i32 %313)
  br label %315

315:                                              ; preds = %307, %266
  %316 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %317 = getelementptr inbounds %struct.ppc4xx_spi, %struct.ppc4xx_spi* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %320 = call i32 @free_irq(i32 %318, %struct.ppc4xx_spi* %319)
  br label %321

321:                                              ; preds = %315, %253, %234, %218, %196, %186, %114, %93
  %322 = load %struct.ppc4xx_spi*, %struct.ppc4xx_spi** %4, align 8
  %323 = call i32 @free_gpios(%struct.ppc4xx_spi* %322)
  br label %324

324:                                              ; preds = %321, %63
  %325 = load %struct.spi_master*, %struct.spi_master** %5, align 8
  %326 = call i32 @spi_master_put(%struct.spi_master* %325)
  %327 = load %struct.device*, %struct.device** %9, align 8
  %328 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %327, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0))
  %329 = load i32, i32* %11, align 4
  store i32 %329, i32* %2, align 4
  br label %330

330:                                              ; preds = %324, %299, %27
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local %struct.spi_master* @spi_alloc_master(%struct.device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.spi_master*) #1

declare dso_local %struct.ppc4xx_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @of_gpio_count(%struct.device_node*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_get_gpio_flags(%struct.device_node*, i32, i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @SPI_BPW_MASK(i32) #1

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @spi_ppc4xx_enable(%struct.ppc4xx_spi*) #1

declare dso_local i32 @spi_bitbang_start(%struct.spi_bitbang*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.ppc4xx_spi*) #1

declare dso_local i32 @free_gpios(%struct.ppc4xx_spi*) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
