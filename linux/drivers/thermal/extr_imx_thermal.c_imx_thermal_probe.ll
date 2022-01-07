; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_thermal_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_imx_thermal.c_imx_thermal_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.imx_thermal_data = type { i64, i32, i32, i32, i32, %struct.regmap*, %struct.regmap*, i32, %struct.TYPE_8__*, i32, %struct.regmap* }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.regmap = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fsl,tempmon\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to get tempmon regmap: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"no device match found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@TEMPMON_IMX6SX = common dso_local global i64 0, align 8
@IMX6_MISC1 = common dso_local global i64 0, align 8
@REG_CLR = common dso_local global i64 0, align 8
@IMX6_MISC1_IRQ_TEMPHIGH = common dso_local global i32 0, align 4
@IMX6_MISC1_IRQ_TEMPLOW = common dso_local global i32 0, align 4
@IMX6_MISC1_IRQ_TEMPPANIC = common dso_local global i32 0, align 4
@REG_SET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"nvmem-cells\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to init from nvmem: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to init from fsl,tempmon-data\0A\00", align 1
@TEMPMON_IMX7D = common dso_local global i64 0, align 8
@IMX6_MISC0 = common dso_local global i64 0, align 8
@IMX6_MISC0_REFTOP_SELBIASOFF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"failed to register cpufreq cooling device: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"failed to get thermal clk: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"failed to enable thermal clk: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"imx_thermal_zone\00", align 1
@IMX_TRIP_NUM = common dso_local global i32 0, align 4
@IMX_TRIP_PASSIVE = common dso_local global i32 0, align 4
@imx_tz_ops = common dso_local global i32 0, align 4
@IMX_PASSIVE_DELAY = common dso_local global i32 0, align 4
@IMX_POLLING_DELAY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"failed to register thermal zone device %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"%s CPU temperature grade - max:%dC critical:%dC passive:%dC\0A\00", align 1
@THERMAL_DEVICE_ENABLED = common dso_local global i32 0, align 4
@imx_thermal_alarm_irq = common dso_local global i32 0, align 4
@imx_thermal_alarm_irq_thread = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"imx_thermal\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"failed to request alarm irq: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_thermal_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_thermal_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.imx_thermal_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.imx_thermal_data* @devm_kzalloc(%struct.TYPE_9__* %9, i32 72, i32 %10)
  store %struct.imx_thermal_data* %11, %struct.imx_thermal_data** %4, align 8
  %12 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %13 = icmp ne %struct.imx_thermal_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %425

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(i32 %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %22, %struct.regmap** %5, align 8
  %23 = load %struct.regmap*, %struct.regmap** %5, align 8
  %24 = call i64 @IS_ERR(%struct.regmap* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.regmap*, %struct.regmap** %5, align 8
  %28 = call i32 @PTR_ERR(%struct.regmap* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %30, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %425

34:                                               ; preds = %17
  %35 = load %struct.regmap*, %struct.regmap** %5, align 8
  %36 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %37 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %36, i32 0, i32 10
  store %struct.regmap* %35, %struct.regmap** %37, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call %struct.TYPE_8__* @of_device_get_match_data(%struct.TYPE_9__* %39)
  %41 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %42 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %41, i32 0, i32 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %44 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %43, i32 0, i32 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = icmp ne %struct.TYPE_8__* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %34
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %48, i32 0, i32 0
  %50 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %425

53:                                               ; preds = %34
  %54 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %55 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %54, i32 0, i32 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TEMPMON_IMX6SX, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %53
  %62 = load %struct.regmap*, %struct.regmap** %5, align 8
  %63 = load i64, i64* @IMX6_MISC1, align 8
  %64 = load i64, i64* @REG_CLR, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* @IMX6_MISC1_IRQ_TEMPHIGH, align 4
  %67 = load i32, i32* @IMX6_MISC1_IRQ_TEMPLOW, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IMX6_MISC1_IRQ_TEMPPANIC, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @regmap_write(%struct.regmap* %62, i64 %65, i32 %70)
  %72 = load %struct.regmap*, %struct.regmap** %5, align 8
  %73 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %74 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %73, i32 0, i32 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REG_SET, align 8
  %79 = add nsw i64 %77, %78
  %80 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %81 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %80, i32 0, i32 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @regmap_write(%struct.regmap* %72, i64 %79, i32 %84)
  br label %86

86:                                               ; preds = %61, %53
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i64 @platform_get_irq(%struct.platform_device* %87, i32 0)
  %89 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %90 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %92 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %97 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %2, align 4
  br label %425

100:                                              ; preds = %86
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.imx_thermal_data* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @of_find_property(i32 %107, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32* null)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %100
  %111 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %112 = call i32 @imx_init_from_nvmem_cells(%struct.platform_device* %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @EPROBE_DEFER, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %425

122:                                              ; preds = %115
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %425

128:                                              ; preds = %110
  br label %140

129:                                              ; preds = %100
  %130 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %131 = call i32 @imx_init_from_tempmon_data(%struct.platform_device* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %136 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %135, i32 0, i32 0
  %137 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* %7, align 4
  store i32 %138, i32* %2, align 4
  br label %425

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %128
  %141 = load %struct.regmap*, %struct.regmap** %5, align 8
  %142 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %143 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %142, i32 0, i32 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @REG_CLR, align 8
  %148 = add nsw i64 %146, %147
  %149 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %150 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %149, i32 0, i32 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @regmap_write(%struct.regmap* %141, i64 %148, i32 %153)
  %155 = load %struct.regmap*, %struct.regmap** %5, align 8
  %156 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %157 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %156, i32 0, i32 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @REG_CLR, align 8
  %162 = add nsw i64 %160, %161
  %163 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %164 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %163, i32 0, i32 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @regmap_write(%struct.regmap* %155, i64 %162, i32 %167)
  %169 = load %struct.regmap*, %struct.regmap** %5, align 8
  %170 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %171 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %170, i32 0, i32 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @REG_CLR, align 8
  %176 = add nsw i64 %174, %175
  %177 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %178 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %177, i32 0, i32 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @regmap_write(%struct.regmap* %169, i64 %176, i32 %181)
  %183 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %184 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %183, i32 0, i32 8
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @TEMPMON_IMX7D, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %140
  %191 = load %struct.regmap*, %struct.regmap** %5, align 8
  %192 = load i64, i64* @IMX6_MISC0, align 8
  %193 = load i64, i64* @REG_SET, align 8
  %194 = add nsw i64 %192, %193
  %195 = load i32, i32* @IMX6_MISC0_REFTOP_SELBIASOFF, align 4
  %196 = call i32 @regmap_write(%struct.regmap* %191, i64 %194, i32 %195)
  br label %197

197:                                              ; preds = %190, %140
  %198 = load %struct.regmap*, %struct.regmap** %5, align 8
  %199 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %200 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %199, i32 0, i32 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @REG_SET, align 8
  %205 = add nsw i64 %203, %204
  %206 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %207 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %206, i32 0, i32 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @regmap_write(%struct.regmap* %198, i64 %205, i32 %210)
  %212 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %213 = call i32 @imx_thermal_register_legacy_cooling(%struct.imx_thermal_data* %212)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %197
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @EPROBE_DEFER, align 4
  %219 = sub nsw i32 0, %218
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %216
  %222 = load i32, i32* %7, align 4
  store i32 %222, i32* %2, align 4
  br label %425

223:                                              ; preds = %216
  %224 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %225 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %224, i32 0, i32 0
  %226 = load i32, i32* %7, align 4
  %227 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %225, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %2, align 4
  br label %425

229:                                              ; preds = %197
  %230 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %231 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %230, i32 0, i32 0
  %232 = call %struct.regmap* @devm_clk_get(%struct.TYPE_9__* %231, i32* null)
  %233 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %234 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %233, i32 0, i32 5
  store %struct.regmap* %232, %struct.regmap** %234, align 8
  %235 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %236 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %235, i32 0, i32 5
  %237 = load %struct.regmap*, %struct.regmap** %236, align 8
  %238 = call i64 @IS_ERR(%struct.regmap* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %255

240:                                              ; preds = %229
  %241 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %242 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %241, i32 0, i32 5
  %243 = load %struct.regmap*, %struct.regmap** %242, align 8
  %244 = call i32 @PTR_ERR(%struct.regmap* %243)
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* @EPROBE_DEFER, align 4
  %247 = sub nsw i32 0, %246
  %248 = icmp ne i32 %245, %247
  br i1 %248, label %249, label %254

249:                                              ; preds = %240
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %250, i32 0, i32 0
  %252 = load i32, i32* %7, align 4
  %253 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %251, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %249, %240
  br label %421

255:                                              ; preds = %229
  %256 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %257 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %256, i32 0, i32 5
  %258 = load %struct.regmap*, %struct.regmap** %257, align 8
  %259 = call i32 @clk_prepare_enable(%struct.regmap* %258)
  store i32 %259, i32* %7, align 4
  %260 = load i32, i32* %7, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %264 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %263, i32 0, i32 0
  %265 = load i32, i32* %7, align 4
  %266 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %264, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %265)
  br label %421

267:                                              ; preds = %255
  %268 = load i32, i32* @IMX_TRIP_NUM, align 4
  %269 = load i32, i32* @IMX_TRIP_PASSIVE, align 4
  %270 = call i32 @BIT(i32 %269)
  %271 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %272 = load i32, i32* @IMX_PASSIVE_DELAY, align 4
  %273 = load i32, i32* @IMX_POLLING_DELAY, align 4
  %274 = call %struct.regmap* @thermal_zone_device_register(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 %268, i32 %270, %struct.imx_thermal_data* %271, i32* @imx_tz_ops, i32* null, i32 %272, i32 %273)
  %275 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %276 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %275, i32 0, i32 6
  store %struct.regmap* %274, %struct.regmap** %276, align 8
  %277 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %278 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %277, i32 0, i32 6
  %279 = load %struct.regmap*, %struct.regmap** %278, align 8
  %280 = call i64 @IS_ERR(%struct.regmap* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %267
  %283 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %284 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %283, i32 0, i32 6
  %285 = load %struct.regmap*, %struct.regmap** %284, align 8
  %286 = call i32 @PTR_ERR(%struct.regmap* %285)
  store i32 %286, i32* %7, align 4
  %287 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %288 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %287, i32 0, i32 0
  %289 = load i32, i32* %7, align 4
  %290 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %288, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %289)
  br label %416

291:                                              ; preds = %267
  %292 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %293 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %292, i32 0, i32 0
  %294 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %295 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %298 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = sdiv i32 %299, 1000
  %301 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %302 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = sdiv i32 %303, 1000
  %305 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %306 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 8
  %308 = sdiv i32 %307, 1000
  %309 = call i32 @dev_info(%struct.TYPE_9__* %293, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.11, i64 0, i64 0), i32 %296, i32 %300, i32 %304, i32 %308)
  %310 = load %struct.regmap*, %struct.regmap** %5, align 8
  %311 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %312 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %311, i32 0, i32 8
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 7
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @REG_CLR, align 8
  %317 = add nsw i64 %315, %316
  %318 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %319 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %318, i32 0, i32 8
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @regmap_write(%struct.regmap* %310, i64 %317, i32 %322)
  %324 = call i32 @DIV_ROUND_UP(i32 32768, i32 10)
  store i32 %324, i32* %6, align 4
  %325 = load %struct.regmap*, %struct.regmap** %5, align 8
  %326 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %327 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %326, i32 0, i32 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 7
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @REG_SET, align 8
  %332 = add nsw i64 %330, %331
  %333 = load i32, i32* %6, align 4
  %334 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %335 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %334, i32 0, i32 8
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = shl i32 %333, %338
  %340 = call i32 @regmap_write(%struct.regmap* %325, i64 %332, i32 %339)
  %341 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %342 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %343 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %342, i32 0, i32 3
  %344 = load i32, i32* %343, align 8
  %345 = call i32 @imx_set_alarm_temp(%struct.imx_thermal_data* %341, i32 %344)
  %346 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %347 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %346, i32 0, i32 8
  %348 = load %struct.TYPE_8__*, %struct.TYPE_8__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @TEMPMON_IMX6SX, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %353, label %359

353:                                              ; preds = %291
  %354 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %355 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %356 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @imx_set_panic_temp(%struct.imx_thermal_data* %354, i32 %357)
  br label %359

359:                                              ; preds = %353, %291
  %360 = load %struct.regmap*, %struct.regmap** %5, align 8
  %361 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %362 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %361, i32 0, i32 8
  %363 = load %struct.TYPE_8__*, %struct.TYPE_8__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %363, i32 0, i32 6
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @REG_CLR, align 8
  %367 = add nsw i64 %365, %366
  %368 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %369 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %368, i32 0, i32 8
  %370 = load %struct.TYPE_8__*, %struct.TYPE_8__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @regmap_write(%struct.regmap* %360, i64 %367, i32 %372)
  %374 = load %struct.regmap*, %struct.regmap** %5, align 8
  %375 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %376 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %375, i32 0, i32 8
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 6
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* @REG_SET, align 8
  %381 = add nsw i64 %379, %380
  %382 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %383 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %382, i32 0, i32 8
  %384 = load %struct.TYPE_8__*, %struct.TYPE_8__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 8
  %387 = call i32 @regmap_write(%struct.regmap* %374, i64 %381, i32 %386)
  %388 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %389 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %388, i32 0, i32 4
  store i32 1, i32* %389, align 4
  %390 = load i32, i32* @THERMAL_DEVICE_ENABLED, align 4
  %391 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %392 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %391, i32 0, i32 7
  store i32 %390, i32* %392, align 8
  %393 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %394 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %393, i32 0, i32 0
  %395 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %396 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = trunc i64 %397 to i32
  %399 = load i32, i32* @imx_thermal_alarm_irq, align 4
  %400 = load i32, i32* @imx_thermal_alarm_irq_thread, align 4
  %401 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %402 = call i32 @devm_request_threaded_irq(%struct.TYPE_9__* %394, i32 %398, i32 %399, i32 %400, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), %struct.imx_thermal_data* %401)
  store i32 %402, i32* %7, align 4
  %403 = load i32, i32* %7, align 4
  %404 = icmp slt i32 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %359
  %406 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %407 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %406, i32 0, i32 0
  %408 = load i32, i32* %7, align 4
  %409 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %407, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0), i32 %408)
  br label %411

410:                                              ; preds = %359
  store i32 0, i32* %2, align 4
  br label %425

411:                                              ; preds = %405
  %412 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %413 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %412, i32 0, i32 6
  %414 = load %struct.regmap*, %struct.regmap** %413, align 8
  %415 = call i32 @thermal_zone_device_unregister(%struct.regmap* %414)
  br label %416

416:                                              ; preds = %411, %282
  %417 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %418 = getelementptr inbounds %struct.imx_thermal_data, %struct.imx_thermal_data* %417, i32 0, i32 5
  %419 = load %struct.regmap*, %struct.regmap** %418, align 8
  %420 = call i32 @clk_disable_unprepare(%struct.regmap* %419)
  br label %421

421:                                              ; preds = %416, %262, %254
  %422 = load %struct.imx_thermal_data*, %struct.imx_thermal_data** %4, align 8
  %423 = call i32 @imx_thermal_unregister_legacy_cooling(%struct.imx_thermal_data* %422)
  %424 = load i32, i32* %7, align 4
  store i32 %424, i32* %2, align 4
  br label %425

425:                                              ; preds = %421, %410, %223, %221, %134, %122, %120, %95, %47, %26, %14
  %426 = load i32, i32* %2, align 4
  ret i32 %426
}

declare dso_local %struct.imx_thermal_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @of_device_get_match_data(%struct.TYPE_9__*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_thermal_data*) #1

declare dso_local i64 @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @imx_init_from_nvmem_cells(%struct.platform_device*) #1

declare dso_local i32 @imx_init_from_tempmon_data(%struct.platform_device*) #1

declare dso_local i32 @imx_thermal_register_legacy_cooling(%struct.imx_thermal_data*) #1

declare dso_local %struct.regmap* @devm_clk_get(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(%struct.regmap*) #1

declare dso_local %struct.regmap* @thermal_zone_device_register(i8*, i32, i32, %struct.imx_thermal_data*, i32*, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_9__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @imx_set_alarm_temp(%struct.imx_thermal_data*, i32) #1

declare dso_local i32 @imx_set_panic_temp(%struct.imx_thermal_data*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_9__*, i32, i32, i32, i32, i8*, %struct.imx_thermal_data*) #1

declare dso_local i32 @thermal_zone_device_unregister(%struct.regmap*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.regmap*) #1

declare dso_local i32 @imx_thermal_unregister_legacy_cooling(%struct.imx_thermal_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
