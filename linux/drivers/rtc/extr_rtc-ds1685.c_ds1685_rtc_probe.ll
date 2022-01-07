; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ds1685.c_ds1685_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.rtc_device = type { i32, i32, i32, i32, i32, i32* }
%struct.resource = type { i32 }
%struct.ds1685_priv = type { i32, i32 (%struct.ds1685_priv*, i32)*, i32, i64, %struct.rtc_device*, i64, i32 (%struct.ds1685_priv*, i32, i32)*, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.ds1685_rtc_platform_data = type { i64, i32 (%struct.ds1685_priv*, i32)*, i64, i64, i64, i64, i64, i64, i64, i32 (%struct.ds1685_priv*, i32, i32)* }
%struct.nvmem_config = type { i8*, %struct.ds1685_priv*, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"ds1685_nvram\00", align 1
@ds1685_nvram_write = common dso_local global i32 0, align 4
@ds1685_nvram_read = common dso_local global i32 0, align 4
@NVRAM_TOTAL_SZ = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTC_CTRL_A = common dso_local global i32 0, align 4
@RTC_CTRL_A_DV1 = common dso_local global i32 0, align 4
@RTC_CTRL_A_DV2 = common dso_local global i32 0, align 4
@RTC_CTRL_A_RS_MASK = common dso_local global i32 0, align 4
@RTC_CTRL_A_DV0 = common dso_local global i32 0, align 4
@RTC_EXT_CTRL_4B = common dso_local global i32 0, align 4
@RTC_CTRL_4B_E32K = common dso_local global i32 0, align 4
@RTC_CTRL_B = common dso_local global i32 0, align 4
@RTC_CTRL_B_SET = common dso_local global i32 0, align 4
@RTC_EXT_CTRL_4A = common dso_local global i32 0, align 4
@RTC_CTRL_4A_INCR = common dso_local global i32 0, align 4
@RTC_CTRL_B_DM = common dso_local global i32 0, align 4
@RTC_CTRL_B_DSE = common dso_local global i32 0, align 4
@RTC_CTRL_B_2412 = common dso_local global i32 0, align 4
@RTC_HRS = common dso_local global i32 0, align 4
@RTC_HRS_AMPM_MASK = common dso_local global i32 0, align 4
@RTC_HRS_12_BCD_MASK = common dso_local global i32 0, align 4
@RTC_HRS_12_BIN_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BIN_MASK = common dso_local global i32 0, align 4
@RTC_HRS_24_BCD_MASK = common dso_local global i32 0, align 4
@RTC_HRS_ALARM = common dso_local global i32 0, align 4
@RTC_CTRL_D = common dso_local global i32 0, align 4
@RTC_CTRL_D_VRT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Main battery is exhausted! RTC may be invalid!\0A\00", align 1
@RTC_CTRL_4A_VRT2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Aux battery is exhausted or not available.\0A\00", align 1
@RTC_CTRL_B_PAU_MASK = common dso_local global i32 0, align 4
@RTC_CTRL_C = common dso_local global i32 0, align 4
@RTC_CTRL_4B_RWK_MASK = common dso_local global i32 0, align 4
@RTC_CTRL_4A_RWK_MASK = common dso_local global i32 0, align 4
@RTC_CTRL_4B_KSE = common dso_local global i32 0, align 4
@ds1685_rtc_ops = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_BEGIN_2000 = common dso_local global i32 0, align 4
@RTC_TIMESTAMP_END_2099 = common dso_local global i32 0, align 4
@RTC_MAX_USER_FREQ = common dso_local global i32 0, align 4
@ds1685_rtc_irq_handler = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"RTC interrupt not available\0A\00", align 1
@ds1685_rtc_sysfs_misc_grp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ds1685_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1685_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.ds1685_priv*, align 8
  %7 = alloca %struct.ds1685_rtc_platform_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca %struct.nvmem_config, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %12, align 4
  %14 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %13, i32 0, i32 1
  store %struct.ds1685_priv* null, %struct.ds1685_priv** %15, align 8
  %16 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %13, i32 0, i32 2
  %17 = load i32, i32* @ds1685_nvram_write, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %13, i32 0, i32 3
  %19 = load i32, i32* @ds1685_nvram_read, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %13, i32 0, i32 4
  %21 = load i32, i32* @NVRAM_TOTAL_SZ, align 4
  store i32 %21, i32* %20, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ds1685_rtc_platform_data*
  store %struct.ds1685_rtc_platform_data* %26, %struct.ds1685_rtc_platform_data** %7, align 8
  %27 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %28 = icmp ne %struct.ds1685_rtc_platform_data* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %634

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ds1685_priv* @devm_kzalloc(%struct.TYPE_7__* %34, i32 112, i32 %35)
  store %struct.ds1685_priv* %36, %struct.ds1685_priv** %6, align 8
  %37 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %38 = icmp ne %struct.ds1685_priv* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %634

42:                                               ; preds = %32
  %43 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %44 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %43, i32 0, i32 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %102

47:                                               ; preds = %42
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %5, align 8
  %51 = load %struct.resource*, %struct.resource** %5, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENXIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %634

56:                                               ; preds = %47
  %57 = load %struct.resource*, %struct.resource** %5, align 8
  %58 = call i32 @resource_size(%struct.resource* %57)
  %59 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %60 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %59, i32 0, i32 13
  store i32 %58, i32* %60, align 4
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %5, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %67 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @devm_request_mem_region(%struct.TYPE_7__* %62, i32 %65, i32 %68, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %56
  %75 = load i32, i32* @EBUSY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %634

77:                                               ; preds = %56
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %82 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %81, i32 0, i32 14
  store i32 %80, i32* %82, align 8
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %89 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %88, i32 0, i32 13
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @devm_ioremap(%struct.TYPE_7__* %84, i32 %87, i32 %90)
  %92 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %93 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %92, i32 0, i32 12
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %95 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %94, i32 0, i32 12
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %77
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %634

101:                                              ; preds = %77
  br label %102

102:                                              ; preds = %101, %42
  %103 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %104 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %107 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %106, i32 0, i32 11
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %109 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %102
  %113 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %114 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %118 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  br label %122

119:                                              ; preds = %102
  %120 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %121 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %112
  %123 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %124 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %123, i32 0, i32 1
  %125 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %124, align 8
  %126 = icmp ne i32 (%struct.ds1685_priv*, i32)* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %129 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %128, i32 0, i32 1
  %130 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %129, align 8
  %131 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %132 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %131, i32 0, i32 1
  store i32 (%struct.ds1685_priv*, i32)* %130, i32 (%struct.ds1685_priv*, i32)** %132, align 8
  br label %145

133:                                              ; preds = %122
  %134 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %135 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %140 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %139, i32 0, i32 1
  store i32 (%struct.ds1685_priv*, i32)* @ds1685_read, i32 (%struct.ds1685_priv*, i32)** %140, align 8
  br label %144

141:                                              ; preds = %133
  %142 = load i32, i32* @ENXIO, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %2, align 4
  br label %634

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %127
  %146 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %147 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %146, i32 0, i32 9
  %148 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %147, align 8
  %149 = icmp ne i32 (%struct.ds1685_priv*, i32, i32)* %148, null
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %152 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %151, i32 0, i32 9
  %153 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %152, align 8
  %154 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %155 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %154, i32 0, i32 6
  store i32 (%struct.ds1685_priv*, i32, i32)* %153, i32 (%struct.ds1685_priv*, i32, i32)** %155, align 8
  br label %168

156:                                              ; preds = %145
  %157 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %158 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %157, i32 0, i32 8
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %163 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %162, i32 0, i32 6
  store i32 (%struct.ds1685_priv*, i32, i32)* @ds1685_write, i32 (%struct.ds1685_priv*, i32, i32)** %163, align 8
  br label %167

164:                                              ; preds = %156
  %165 = load i32, i32* @ENXIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %634

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %150
  %169 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %170 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %175 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %178 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %177, i32 0, i32 10
  store i64 %176, i64* %178, align 8
  br label %179

179:                                              ; preds = %173, %168
  %180 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %181 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %186 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %189 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %188, i32 0, i32 9
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %184, %179
  %191 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %192 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %197 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %196, i32 0, i32 5
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %200 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %199, i32 0, i32 8
  store i64 %198, i64* %200, align 8
  br label %201

201:                                              ; preds = %195, %190
  %202 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %203 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %204 = call i32 @platform_set_drvdata(%struct.platform_device* %202, %struct.ds1685_priv* %203)
  %205 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %206 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %205, i32 0, i32 1
  %207 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %206, align 8
  %208 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %209 = load i32, i32* @RTC_CTRL_A, align 4
  %210 = call i32 %207(%struct.ds1685_priv* %208, i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @RTC_CTRL_A_DV1, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %201
  %216 = load i32, i32* @RTC_CTRL_A_DV1, align 4
  %217 = load i32, i32* %8, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %215, %201
  %220 = load i32, i32* @RTC_CTRL_A_DV2, align 4
  %221 = xor i32 %220, -1
  %222 = load i32, i32* %8, align 4
  %223 = and i32 %222, %221
  store i32 %223, i32* %8, align 4
  %224 = load i32, i32* @RTC_CTRL_A_RS_MASK, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %8, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* @RTC_CTRL_A_DV0, align 4
  %229 = load i32, i32* %8, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %8, align 4
  %231 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %232 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %231, i32 0, i32 6
  %233 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %232, align 8
  %234 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %235 = load i32, i32* @RTC_CTRL_A, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 %233(%struct.ds1685_priv* %234, i32 %235, i32 %236)
  %238 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %239 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %238, i32 0, i32 6
  %240 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %239, align 8
  %241 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %242 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %243 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %244 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %243, i32 0, i32 1
  %245 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %244, align 8
  %246 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %247 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %248 = call i32 %245(%struct.ds1685_priv* %246, i32 %247)
  %249 = load i32, i32* @RTC_CTRL_4B_E32K, align 4
  %250 = or i32 %248, %249
  %251 = call i32 %240(%struct.ds1685_priv* %241, i32 %242, i32 %250)
  %252 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %253 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %252, i32 0, i32 6
  %254 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %253, align 8
  %255 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %256 = load i32, i32* @RTC_CTRL_B, align 4
  %257 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %258 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %257, i32 0, i32 1
  %259 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %258, align 8
  %260 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %261 = load i32, i32* @RTC_CTRL_B, align 4
  %262 = call i32 %259(%struct.ds1685_priv* %260, i32 %261)
  %263 = load i32, i32* @RTC_CTRL_B_SET, align 4
  %264 = or i32 %262, %263
  %265 = call i32 %254(%struct.ds1685_priv* %255, i32 %256, i32 %264)
  br label %266

266:                                              ; preds = %276, %219
  %267 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %268 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %267, i32 0, i32 1
  %269 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %268, align 8
  %270 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %271 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %272 = call i32 %269(%struct.ds1685_priv* %270, i32 %271)
  %273 = load i32, i32* @RTC_CTRL_4A_INCR, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %266
  %277 = call i32 (...) @cpu_relax()
  br label %266

278:                                              ; preds = %266
  %279 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %280 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %279, i32 0, i32 1
  %281 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %280, align 8
  %282 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %283 = load i32, i32* @RTC_CTRL_B, align 4
  %284 = call i32 %281(%struct.ds1685_priv* %282, i32 %283)
  store i32 %284, i32* %9, align 4
  %285 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %286 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %285, i32 0, i32 4
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %278
  %290 = load i32, i32* @RTC_CTRL_B_DM, align 4
  %291 = xor i32 %290, -1
  %292 = load i32, i32* %9, align 4
  %293 = and i32 %292, %291
  store i32 %293, i32* %9, align 4
  br label %298

294:                                              ; preds = %278
  %295 = load i32, i32* @RTC_CTRL_B_DM, align 4
  %296 = load i32, i32* %9, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %9, align 4
  br label %298

298:                                              ; preds = %294, %289
  %299 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %300 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %303 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %302, i32 0, i32 7
  store i64 %301, i64* %303, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* @RTC_CTRL_B_DSE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %298
  %309 = load i32, i32* @RTC_CTRL_B_DSE, align 4
  %310 = xor i32 %309, -1
  %311 = load i32, i32* %9, align 4
  %312 = and i32 %311, %310
  store i32 %312, i32* %9, align 4
  br label %313

313:                                              ; preds = %308, %298
  %314 = load i32, i32* %9, align 4
  %315 = load i32, i32* @RTC_CTRL_B_2412, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %413, label %318

318:                                              ; preds = %313
  %319 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %320 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %319, i32 0, i32 1
  %321 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %320, align 8
  %322 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %323 = load i32, i32* @RTC_HRS, align 4
  %324 = call i32 %321(%struct.ds1685_priv* %322, i32 %323)
  store i32 %324, i32* %10, align 4
  %325 = load i32, i32* %10, align 4
  %326 = load i32, i32* @RTC_HRS_AMPM_MASK, align 4
  %327 = and i32 %325, %326
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %11, align 1
  %329 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %330 = load i32, i32* %10, align 4
  %331 = load i32, i32* @RTC_HRS_12_BCD_MASK, align 4
  %332 = load i32, i32* @RTC_HRS_12_BIN_MASK, align 4
  %333 = call i32 @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %329, i32 %330, i32 %331, i32 %332)
  store i32 %333, i32* %10, align 4
  %334 = load i32, i32* %10, align 4
  %335 = icmp eq i32 %334, 12
  br i1 %335, label %336, label %337

336:                                              ; preds = %318
  br label %348

337:                                              ; preds = %318
  %338 = load i8, i8* %11, align 1
  %339 = zext i8 %338 to i32
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %337
  %342 = load i32, i32* %10, align 4
  %343 = add nsw i32 %342, 12
  br label %346

344:                                              ; preds = %337
  %345 = load i32, i32* %10, align 4
  br label %346

346:                                              ; preds = %344, %341
  %347 = phi i32 [ %343, %341 ], [ %345, %344 ]
  br label %348

348:                                              ; preds = %346, %336
  %349 = phi i32 [ 0, %336 ], [ %347, %346 ]
  store i32 %349, i32* %10, align 4
  %350 = load i32, i32* @RTC_CTRL_B_2412, align 4
  %351 = load i32, i32* %9, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %9, align 4
  %353 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %354 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %353, i32 0, i32 6
  %355 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %354, align 8
  %356 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %357 = load i32, i32* @RTC_CTRL_B, align 4
  %358 = load i32, i32* %9, align 4
  %359 = call i32 %355(%struct.ds1685_priv* %356, i32 %357, i32 %358)
  %360 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %361 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %360, i32 0, i32 6
  %362 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %361, align 8
  %363 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %364 = load i32, i32* @RTC_HRS, align 4
  %365 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %366 = load i32, i32* %10, align 4
  %367 = load i32, i32* @RTC_HRS_24_BIN_MASK, align 4
  %368 = load i32, i32* @RTC_HRS_24_BCD_MASK, align 4
  %369 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %365, i32 %366, i32 %367, i32 %368)
  %370 = call i32 %362(%struct.ds1685_priv* %363, i32 %364, i32 %369)
  %371 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %372 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %371, i32 0, i32 1
  %373 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %372, align 8
  %374 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %375 = load i32, i32* @RTC_HRS_ALARM, align 4
  %376 = call i32 %373(%struct.ds1685_priv* %374, i32 %375)
  store i32 %376, i32* %10, align 4
  %377 = load i32, i32* %10, align 4
  %378 = load i32, i32* @RTC_HRS_AMPM_MASK, align 4
  %379 = and i32 %377, %378
  %380 = trunc i32 %379 to i8
  store i8 %380, i8* %11, align 1
  %381 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %382 = load i32, i32* %10, align 4
  %383 = load i32, i32* @RTC_HRS_12_BCD_MASK, align 4
  %384 = load i32, i32* @RTC_HRS_12_BIN_MASK, align 4
  %385 = call i32 @ds1685_rtc_bcd2bin(%struct.ds1685_priv* %381, i32 %382, i32 %383, i32 %384)
  store i32 %385, i32* %10, align 4
  %386 = load i32, i32* %10, align 4
  %387 = icmp eq i32 %386, 12
  br i1 %387, label %388, label %389

388:                                              ; preds = %348
  br label %400

389:                                              ; preds = %348
  %390 = load i8, i8* %11, align 1
  %391 = zext i8 %390 to i32
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %389
  %394 = load i32, i32* %10, align 4
  %395 = add nsw i32 %394, 12
  br label %398

396:                                              ; preds = %389
  %397 = load i32, i32* %10, align 4
  br label %398

398:                                              ; preds = %396, %393
  %399 = phi i32 [ %395, %393 ], [ %397, %396 ]
  br label %400

400:                                              ; preds = %398, %388
  %401 = phi i32 [ 0, %388 ], [ %399, %398 ]
  store i32 %401, i32* %10, align 4
  %402 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %403 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %402, i32 0, i32 6
  %404 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %403, align 8
  %405 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %406 = load i32, i32* @RTC_HRS_ALARM, align 4
  %407 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %408 = load i32, i32* %10, align 4
  %409 = load i32, i32* @RTC_HRS_24_BIN_MASK, align 4
  %410 = load i32, i32* @RTC_HRS_24_BCD_MASK, align 4
  %411 = call i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv* %407, i32 %408, i32 %409, i32 %410)
  %412 = call i32 %404(%struct.ds1685_priv* %405, i32 %406, i32 %411)
  br label %421

413:                                              ; preds = %313
  %414 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %415 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %414, i32 0, i32 6
  %416 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %415, align 8
  %417 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %418 = load i32, i32* @RTC_CTRL_B, align 4
  %419 = load i32, i32* %9, align 4
  %420 = call i32 %416(%struct.ds1685_priv* %417, i32 %418, i32 %419)
  br label %421

421:                                              ; preds = %413, %400
  %422 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %423 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %422, i32 0, i32 6
  %424 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %423, align 8
  %425 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %426 = load i32, i32* @RTC_CTRL_B, align 4
  %427 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %428 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %427, i32 0, i32 1
  %429 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %428, align 8
  %430 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %431 = load i32, i32* @RTC_CTRL_B, align 4
  %432 = call i32 %429(%struct.ds1685_priv* %430, i32 %431)
  %433 = load i32, i32* @RTC_CTRL_B_SET, align 4
  %434 = xor i32 %433, -1
  %435 = and i32 %432, %434
  %436 = call i32 %424(%struct.ds1685_priv* %425, i32 %426, i32 %435)
  %437 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %438 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %437, i32 0, i32 1
  %439 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %438, align 8
  %440 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %441 = load i32, i32* @RTC_CTRL_D, align 4
  %442 = call i32 %439(%struct.ds1685_priv* %440, i32 %441)
  %443 = load i32, i32* @RTC_CTRL_D_VRT, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %450, label %446

446:                                              ; preds = %421
  %447 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %448 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %447, i32 0, i32 0
  %449 = call i32 @dev_warn(%struct.TYPE_7__* %448, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %450

450:                                              ; preds = %446, %421
  %451 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %452 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %451, i32 0, i32 1
  %453 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %452, align 8
  %454 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %455 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %456 = call i32 %453(%struct.ds1685_priv* %454, i32 %455)
  %457 = load i32, i32* @RTC_CTRL_4A_VRT2, align 4
  %458 = and i32 %456, %457
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %464, label %460

460:                                              ; preds = %450
  %461 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %462 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %461, i32 0, i32 0
  %463 = call i32 @dev_warn(%struct.TYPE_7__* %462, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %464

464:                                              ; preds = %460, %450
  %465 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %466 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %465, i32 0, i32 6
  %467 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %466, align 8
  %468 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %469 = load i32, i32* @RTC_CTRL_B, align 4
  %470 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %471 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %470, i32 0, i32 1
  %472 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %471, align 8
  %473 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %474 = load i32, i32* @RTC_CTRL_B, align 4
  %475 = call i32 %472(%struct.ds1685_priv* %473, i32 %474)
  %476 = load i32, i32* @RTC_CTRL_B_PAU_MASK, align 4
  %477 = xor i32 %476, -1
  %478 = and i32 %475, %477
  %479 = call i32 %467(%struct.ds1685_priv* %468, i32 %469, i32 %478)
  %480 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %481 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %480, i32 0, i32 1
  %482 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %481, align 8
  %483 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %484 = load i32, i32* @RTC_CTRL_C, align 4
  %485 = call i32 %482(%struct.ds1685_priv* %483, i32 %484)
  %486 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %487 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %486, i32 0, i32 6
  %488 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %487, align 8
  %489 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %490 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %491 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %492 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %491, i32 0, i32 1
  %493 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %492, align 8
  %494 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %495 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %496 = call i32 %493(%struct.ds1685_priv* %494, i32 %495)
  %497 = load i32, i32* @RTC_CTRL_4B_RWK_MASK, align 4
  %498 = xor i32 %497, -1
  %499 = and i32 %496, %498
  %500 = call i32 %488(%struct.ds1685_priv* %489, i32 %490, i32 %499)
  %501 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %502 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %501, i32 0, i32 6
  %503 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %502, align 8
  %504 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %505 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %506 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %507 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %506, i32 0, i32 1
  %508 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %507, align 8
  %509 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %510 = load i32, i32* @RTC_EXT_CTRL_4A, align 4
  %511 = call i32 %508(%struct.ds1685_priv* %509, i32 %510)
  %512 = load i32, i32* @RTC_CTRL_4A_RWK_MASK, align 4
  %513 = xor i32 %512, -1
  %514 = and i32 %511, %513
  %515 = call i32 %503(%struct.ds1685_priv* %504, i32 %505, i32 %514)
  %516 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %517 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %516, i32 0, i32 6
  %518 = load i32 (%struct.ds1685_priv*, i32, i32)*, i32 (%struct.ds1685_priv*, i32, i32)** %517, align 8
  %519 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %520 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %521 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %522 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %521, i32 0, i32 1
  %523 = load i32 (%struct.ds1685_priv*, i32)*, i32 (%struct.ds1685_priv*, i32)** %522, align 8
  %524 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %525 = load i32, i32* @RTC_EXT_CTRL_4B, align 4
  %526 = call i32 %523(%struct.ds1685_priv* %524, i32 %525)
  %527 = load i32, i32* @RTC_CTRL_4B_KSE, align 4
  %528 = or i32 %526, %527
  %529 = call i32 %518(%struct.ds1685_priv* %519, i32 %520, i32 %528)
  %530 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %531 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %530, i32 0, i32 0
  %532 = call %struct.rtc_device* @devm_rtc_allocate_device(%struct.TYPE_7__* %531)
  store %struct.rtc_device* %532, %struct.rtc_device** %4, align 8
  %533 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %534 = call i64 @IS_ERR(%struct.rtc_device* %533)
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %464
  %537 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %538 = call i32 @PTR_ERR(%struct.rtc_device* %537)
  store i32 %538, i32* %2, align 4
  br label %634

539:                                              ; preds = %464
  %540 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %541 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %540, i32 0, i32 5
  store i32* @ds1685_rtc_ops, i32** %541, align 8
  %542 = load i32, i32* @RTC_TIMESTAMP_BEGIN_2000, align 4
  %543 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %544 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %543, i32 0, i32 4
  store i32 %542, i32* %544, align 8
  %545 = load i32, i32* @RTC_TIMESTAMP_END_2099, align 4
  %546 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %547 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %546, i32 0, i32 3
  store i32 %545, i32* %547, align 4
  %548 = load i32, i32* @RTC_MAX_USER_FREQ, align 4
  %549 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %550 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %549, i32 0, i32 2
  store i32 %548, i32* %550, align 8
  %551 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %552 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %551, i32 0, i32 3
  %553 = load i64, i64* %552, align 8
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %558

555:                                              ; preds = %539
  %556 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %557 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %556, i32 0, i32 0
  store i32 1, i32* %557, align 8
  br label %558

558:                                              ; preds = %555, %539
  %559 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %560 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %559, i32 0, i32 3
  %561 = load i64, i64* %560, align 8
  %562 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %563 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %562, i32 0, i32 5
  store i64 %561, i64* %563, align 8
  %564 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %565 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %566 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %565, i32 0, i32 4
  store %struct.rtc_device* %564, %struct.rtc_device** %566, align 8
  %567 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %568 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %567, i32 0, i32 2
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %569, 0
  br i1 %570, label %606, label %571

571:                                              ; preds = %558
  %572 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %573 = call i32 @platform_get_irq(%struct.platform_device* %572, i32 0)
  store i32 %573, i32* %12, align 4
  %574 = load i32, i32* %12, align 4
  %575 = icmp sle i32 %574, 0
  br i1 %575, label %576, label %578

576:                                              ; preds = %571
  %577 = load i32, i32* %12, align 4
  store i32 %577, i32* %2, align 4
  br label %634

578:                                              ; preds = %571
  %579 = load i32, i32* %12, align 4
  %580 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %581 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %580, i32 0, i32 2
  store i32 %579, i32* %581, align 8
  %582 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %583 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %582, i32 0, i32 0
  %584 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %585 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 8
  %587 = load i32, i32* @ds1685_rtc_irq_handler, align 4
  %588 = load i32, i32* @IRQF_SHARED, align 4
  %589 = load i32, i32* @IRQF_ONESHOT, align 4
  %590 = or i32 %588, %589
  %591 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %592 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %591, i32 0, i32 1
  %593 = load i32, i32* %592, align 8
  %594 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %595 = call i32 @devm_request_threaded_irq(%struct.TYPE_7__* %583, i32 %586, i32* null, i32 %587, i32 %590, i32 %593, %struct.platform_device* %594)
  store i32 %595, i32* %12, align 4
  %596 = load i32, i32* %12, align 4
  %597 = call i64 @unlikely(i32 %596)
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %605

599:                                              ; preds = %578
  %600 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %601 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %600, i32 0, i32 0
  %602 = call i32 @dev_warn(%struct.TYPE_7__* %601, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %603 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %604 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %603, i32 0, i32 2
  store i32 0, i32* %604, align 8
  br label %605

605:                                              ; preds = %599, %578
  br label %606

606:                                              ; preds = %605, %558
  %607 = load %struct.ds1685_rtc_platform_data*, %struct.ds1685_rtc_platform_data** %7, align 8
  %608 = getelementptr inbounds %struct.ds1685_rtc_platform_data, %struct.ds1685_rtc_platform_data* %607, i32 0, i32 2
  %609 = load i64, i64* %608, align 8
  %610 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %611 = getelementptr inbounds %struct.ds1685_priv, %struct.ds1685_priv* %610, i32 0, i32 3
  store i64 %609, i64* %611, align 8
  %612 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %613 = call i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv* %612)
  %614 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %615 = call i32 @rtc_add_group(%struct.rtc_device* %614, i32* @ds1685_rtc_sysfs_misc_grp)
  store i32 %615, i32* %12, align 4
  %616 = load i32, i32* %12, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %620

618:                                              ; preds = %606
  %619 = load i32, i32* %12, align 4
  store i32 %619, i32* %2, align 4
  br label %634

620:                                              ; preds = %606
  %621 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %622 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %621, i32 0, i32 1
  store i32 1, i32* %622, align 4
  %623 = load %struct.ds1685_priv*, %struct.ds1685_priv** %6, align 8
  %624 = getelementptr inbounds %struct.nvmem_config, %struct.nvmem_config* %13, i32 0, i32 1
  store %struct.ds1685_priv* %623, %struct.ds1685_priv** %624, align 8
  %625 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %626 = call i32 @rtc_nvmem_register(%struct.rtc_device* %625, %struct.nvmem_config* %13)
  store i32 %626, i32* %12, align 4
  %627 = load i32, i32* %12, align 4
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %631

629:                                              ; preds = %620
  %630 = load i32, i32* %12, align 4
  store i32 %630, i32* %2, align 4
  br label %634

631:                                              ; preds = %620
  %632 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %633 = call i32 @rtc_register_device(%struct.rtc_device* %632)
  store i32 %633, i32* %2, align 4
  br label %634

634:                                              ; preds = %631, %629, %618, %576, %536, %164, %141, %98, %74, %53, %39, %29
  %635 = load i32, i32* %2, align 4
  ret i32 %635
}

declare dso_local %struct.ds1685_priv* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @devm_request_mem_region(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @devm_ioremap(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ds1685_read(%struct.ds1685_priv*, i32) #1

declare dso_local i32 @ds1685_write(%struct.ds1685_priv*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.ds1685_priv*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @ds1685_rtc_bcd2bin(%struct.ds1685_priv*, i32, i32, i32) #1

declare dso_local i32 @ds1685_rtc_bin2bcd(%struct.ds1685_priv*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(%struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_7__*, i32, i32*, i32, i32, i32, %struct.platform_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ds1685_rtc_switch_to_bank0(%struct.ds1685_priv*) #1

declare dso_local i32 @rtc_add_group(%struct.rtc_device*, i32*) #1

declare dso_local i32 @rtc_nvmem_register(%struct.rtc_device*, %struct.nvmem_config*) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
