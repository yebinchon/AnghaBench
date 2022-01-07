; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_rockchip_thermal.c_rockchip_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.rockchip_thermal_data = type { i8*, i8*, i32*, %struct.rockchip_tsadc_chip*, i8*, i32, i32, i8*, %struct.platform_device* }
%struct.rockchip_tsadc_chip = type { i32, i32 (i8*, i32)*, i32*, i32 (i32, i8*, i32)* }
%struct.of_device_id = type { i64 }
%struct.resource = type { i32 }

@of_rockchip_thermal_match = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"no irq resource?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"tsadc-apb\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to get tsadc reset: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"tsadc\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to get tsadc clock: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to get apb_pclk clock: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to enable converter clock: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"failed to enable pclk: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"failed to parse device tree data: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"failed to register sensor[%d] : error = %d\0A\00", align 1
@rockchip_thermal_alarm_irq_thread = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"rockchip_thermal\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"failed to request tsadc irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @rockchip_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.rockchip_thermal_data*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load i32, i32* @of_rockchip_thermal_match, align 4
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = call %struct.of_device_id* @of_match_node(i32 %15, %struct.device_node* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %6, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %299

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i32 @platform_get_irq(%struct.platform_device* %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %299

34:                                               ; preds = %23
  %35 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.rockchip_thermal_data* @devm_kzalloc(%struct.TYPE_8__* %36, i32 64, i32 %37)
  store %struct.rockchip_thermal_data* %38, %struct.rockchip_thermal_data** %5, align 8
  %39 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %40 = icmp ne %struct.rockchip_thermal_data* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %299

44:                                               ; preds = %34
  %45 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %46 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %47 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %46, i32 0, i32 8
  store %struct.platform_device* %45, %struct.platform_device** %47, align 8
  %48 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %49 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.rockchip_tsadc_chip*
  %52 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %53 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %52, i32 0, i32 3
  store %struct.rockchip_tsadc_chip* %51, %struct.rockchip_tsadc_chip** %53, align 8
  %54 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %55 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %54, i32 0, i32 3
  %56 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %55, align 8
  %57 = icmp ne %struct.rockchip_tsadc_chip* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %299

61:                                               ; preds = %44
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = load i32, i32* @IORESOURCE_MEM, align 4
  %64 = call %struct.resource* @platform_get_resource(%struct.platform_device* %62, i32 %63, i32 0)
  store %struct.resource* %64, %struct.resource** %7, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.resource*, %struct.resource** %7, align 8
  %68 = call i8* @devm_ioremap_resource(%struct.TYPE_8__* %66, %struct.resource* %67)
  %69 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %70 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %72 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @IS_ERR(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %78 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @PTR_ERR(i8* %79)
  store i32 %80, i32* %2, align 4
  br label %299

81:                                               ; preds = %61
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = call i8* @devm_reset_control_get(%struct.TYPE_8__* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %86 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %88 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %87, i32 0, i32 7
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @IS_ERR(i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %81
  %93 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %94 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %93, i32 0, i32 7
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @PTR_ERR(i8* %95)
  store i32 %96, i32* %10, align 4
  %97 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %98 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %97, i32 0, i32 0
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %2, align 4
  br label %299

102:                                              ; preds = %81
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i8* @devm_clk_get(%struct.TYPE_8__* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %107 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  %108 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %109 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i64 @IS_ERR(i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %102
  %114 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %115 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @PTR_ERR(i8* %116)
  store i32 %117, i32* %10, align 4
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %118, i32 0, i32 0
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %119, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %2, align 4
  br label %299

123:                                              ; preds = %102
  %124 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %125 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %124, i32 0, i32 0
  %126 = call i8* @devm_clk_get(%struct.TYPE_8__* %125, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %127 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %128 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %127, i32 0, i32 1
  store i8* %126, i8** %128, align 8
  %129 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %130 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = call i64 @IS_ERR(i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %123
  %135 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %136 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @PTR_ERR(i8* %137)
  store i32 %138, i32* %10, align 4
  %139 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %140 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %139, i32 0, i32 0
  %141 = load i32, i32* %10, align 4
  %142 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %140, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %2, align 4
  br label %299

144:                                              ; preds = %123
  %145 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %146 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @clk_prepare_enable(i8* %147)
  store i32 %148, i32* %10, align 4
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %153 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %152, i32 0, i32 0
  %154 = load i32, i32* %10, align 4
  %155 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %153, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %10, align 4
  store i32 %156, i32* %2, align 4
  br label %299

157:                                              ; preds = %144
  %158 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %159 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @clk_prepare_enable(i8* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %157
  %165 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %166 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %165, i32 0, i32 0
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %167)
  br label %293

169:                                              ; preds = %157
  %170 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %171 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %170, i32 0, i32 7
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @rockchip_thermal_reset_controller(i8* %172)
  %174 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %175 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %174, i32 0, i32 0
  %176 = load %struct.device_node*, %struct.device_node** %4, align 8
  %177 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %178 = call i32 @rockchip_configure_from_dt(%struct.TYPE_8__* %175, %struct.device_node* %176, %struct.rockchip_thermal_data* %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %169
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %183, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  br label %288

186:                                              ; preds = %169
  %187 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %188 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %187, i32 0, i32 3
  %189 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %188, align 8
  %190 = getelementptr inbounds %struct.rockchip_tsadc_chip, %struct.rockchip_tsadc_chip* %189, i32 0, i32 3
  %191 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %190, align 8
  %192 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %193 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %196 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %195, i32 0, i32 4
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %199 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = call i32 %191(i32 %194, i8* %197, i32 %200)
  store i32 0, i32* %9, align 4
  br label %202

202:                                              ; preds = %238, %186
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %205 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %204, i32 0, i32 3
  %206 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %205, align 8
  %207 = getelementptr inbounds %struct.rockchip_tsadc_chip, %struct.rockchip_tsadc_chip* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp slt i32 %203, %208
  br i1 %209, label %210, label %241

210:                                              ; preds = %202
  %211 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %212 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %213 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %214 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %9, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  %219 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %220 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %219, i32 0, i32 3
  %221 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %220, align 8
  %222 = getelementptr inbounds %struct.rockchip_tsadc_chip, %struct.rockchip_tsadc_chip* %221, i32 0, i32 2
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %9, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @rockchip_thermal_register_sensor(%struct.platform_device* %211, %struct.rockchip_thermal_data* %212, i32* %218, i32 %227)
  store i32 %228, i32* %10, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %210
  %232 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %233 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %232, i32 0, i32 0
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %233, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %234, i32 %235)
  br label %288

237:                                              ; preds = %210
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %9, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %9, align 4
  br label %202

241:                                              ; preds = %202
  %242 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %243 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %242, i32 0, i32 0
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* @IRQF_ONESHOT, align 4
  %246 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %247 = call i32 @devm_request_threaded_irq(%struct.TYPE_8__* %243, i32 %244, i32* null, i32* @rockchip_thermal_alarm_irq_thread, i32 %245, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), %struct.rockchip_thermal_data* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %241
  %251 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %252 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %251, i32 0, i32 0
  %253 = load i32, i32* %10, align 4
  %254 = call i32 (%struct.TYPE_8__*, i8*, ...) @dev_err(%struct.TYPE_8__* %252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %253)
  br label %288

255:                                              ; preds = %241
  %256 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %257 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %256, i32 0, i32 3
  %258 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %257, align 8
  %259 = getelementptr inbounds %struct.rockchip_tsadc_chip, %struct.rockchip_tsadc_chip* %258, i32 0, i32 1
  %260 = load i32 (i8*, i32)*, i32 (i8*, i32)** %259, align 8
  %261 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %262 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %261, i32 0, i32 4
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 %260(i8* %263, i32 1)
  store i32 0, i32* %9, align 4
  br label %265

265:                                              ; preds = %281, %255
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %268 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %267, i32 0, i32 3
  %269 = load %struct.rockchip_tsadc_chip*, %struct.rockchip_tsadc_chip** %268, align 8
  %270 = getelementptr inbounds %struct.rockchip_tsadc_chip, %struct.rockchip_tsadc_chip* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp slt i32 %266, %271
  br i1 %272, label %273, label %284

273:                                              ; preds = %265
  %274 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %275 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = call i32 @rockchip_thermal_toggle_sensor(i32* %279, i32 1)
  br label %281

281:                                              ; preds = %273
  %282 = load i32, i32* %9, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %9, align 4
  br label %265

284:                                              ; preds = %265
  %285 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %286 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %287 = call i32 @platform_set_drvdata(%struct.platform_device* %285, %struct.rockchip_thermal_data* %286)
  store i32 0, i32* %2, align 4
  br label %299

288:                                              ; preds = %250, %231, %181
  %289 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %290 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %289, i32 0, i32 1
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 @clk_disable_unprepare(i8* %291)
  br label %293

293:                                              ; preds = %288, %164
  %294 = load %struct.rockchip_thermal_data*, %struct.rockchip_thermal_data** %5, align 8
  %295 = getelementptr inbounds %struct.rockchip_thermal_data, %struct.rockchip_thermal_data* %294, i32 0, i32 0
  %296 = load i8*, i8** %295, align 8
  %297 = call i32 @clk_disable_unprepare(i8* %296)
  %298 = load i32, i32* %10, align 4
  store i32 %298, i32* %2, align 4
  br label %299

299:                                              ; preds = %293, %284, %151, %134, %113, %92, %76, %58, %41, %28, %20
  %300 = load i32, i32* %2, align 4
  ret i32 %300
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.device_node*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local %struct.rockchip_thermal_data* @devm_kzalloc(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.TYPE_8__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i8* @devm_clk_get(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @rockchip_thermal_reset_controller(i8*) #1

declare dso_local i32 @rockchip_configure_from_dt(%struct.TYPE_8__*, %struct.device_node*, %struct.rockchip_thermal_data*) #1

declare dso_local i32 @rockchip_thermal_register_sensor(%struct.platform_device*, %struct.rockchip_thermal_data*, i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_8__*, i32, i32*, i32*, i32, i8*, %struct.rockchip_thermal_data*) #1

declare dso_local i32 @rockchip_thermal_toggle_sensor(i32*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_thermal_data*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
